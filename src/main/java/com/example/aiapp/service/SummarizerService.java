package com.example.aiapp.service;

import com.example.aiapp.entity.SummaryLog;
import com.example.aiapp.model.SummaryRequest;
import com.example.aiapp.model.SummaryResponse;
import com.example.aiapp.repository.SummaryLogRepository;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class SummarizerService {

    @Value("${huggingface.api.key}")
    private String apiKey;

    @Value("${huggingface.api.url}")
    private String apiUrl;

    private final SummaryLogRepository repository;
    private final RestTemplate restTemplate;
    private final ObjectMapper objectMapper = new ObjectMapper();

    public SummarizerService(SummaryLogRepository repository) {
        this.repository = repository;
        this.restTemplate = new RestTemplate();
    }

    public List<SummaryResponse> getAllSummaries() {
        return repository.findAll()
                .stream()
                .map(log -> new SummaryResponse(log.getOutputText()))
                .collect(Collectors.toList());
    }

    public List<SummaryLog> getAllSummaryLogs() {
        return repository.findAll();
    }
    
    public SummaryResponse summarize(SummaryRequest request) {
        String summarizedText;

        try {
            // Request Body
            String jsonBody = "{ \"inputs\": \"" + request.getText().replace("\"", "\\\"") + "\" }";

            // Headers
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_JSON);
            headers.setAccept(Collections.singletonList(MediaType.APPLICATION_JSON)); // ✅ FIX
            headers.setBearerAuth(apiKey);

            HttpEntity<String> entity = new HttpEntity<>(jsonBody, headers);

            // Call Hugging Face API
            ResponseEntity<String> response = restTemplate.exchange(
                    apiUrl,
                    HttpMethod.POST,
                    entity,
                    String.class
            );

            // Parse JSON Response
            if (response.getStatusCode().is2xxSuccessful()) {
                JsonNode root = objectMapper.readTree(response.getBody());
                if (root.isArray() && root.size() > 0 && root.get(0).has("summary_text")) {
                    summarizedText = root.get(0).get("summary_text").asText();
                } else {
                    summarizedText = "⚠️ Unexpected response format.";
                }
            } else {
                summarizedText = "❌ API Error: " + response.getStatusCode();
            }

        } catch (Exception e) {
            summarizedText = "❌ Error calling Hugging Face API: " + e.getMessage();
        }

        // Save log in DB
        SummaryLog log = new SummaryLog();
        log.setInputText(request.getText());
        log.setOutputText(summarizedText);
        repository.save(log);

        return new SummaryResponse(summarizedText);
    }
}
