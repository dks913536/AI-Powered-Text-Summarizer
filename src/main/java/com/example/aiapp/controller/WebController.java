package com.example.aiapp.controller;

import com.example.aiapp.model.SummaryRequest;
import com.example.aiapp.service.SummarizerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class WebController {

    private final SummarizerService service;
    
    @Autowired
    public WebController(SummarizerService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String home() {
        return "index"; // show form page
    }

    @PostMapping("/summarize")
    public String summarize(@RequestParam("text") String text, Model model) {
        SummaryRequest request = new SummaryRequest();
        request.setText(text);

        String summary = service.summarize(request).getSummary();
        model.addAttribute("inputText", text);
        model.addAttribute("summary", summary);

        return "result"; // show result page
    }
    
    @GetMapping("/history")
    public String history(Model model) {
        model.addAttribute("logs", service.getAllSummaryLogs());
        return "history";
    }

    
    @GetMapping("/about")
    public String about() {
        return "about";
    }


}

