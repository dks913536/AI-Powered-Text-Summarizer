package com.example.aiapp.controller;

import com.example.aiapp.model.SummaryRequest;
import com.example.aiapp.model.SummaryResponse;
import com.example.aiapp.service.SummarizerService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/summarizer")
public class SummarizerController {

    private final SummarizerService service;
    
    public SummarizerController(SummarizerService service) {
        this.service = service;
    }

    @PostMapping("/summarize")
    public SummaryResponse summarize(@RequestBody SummaryRequest request) {
        return service.summarize(request);
    }
}

