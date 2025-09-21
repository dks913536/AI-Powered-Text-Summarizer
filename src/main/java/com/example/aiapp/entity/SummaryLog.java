package com.example.aiapp.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
public class SummaryLog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(columnDefinition = "TEXT")
    private String inputText;

    @Column(length = 5000)
    private String outputText;

    private LocalDateTime createdAt;

    // No-arg constructor (needed by Hibernate)
    public SummaryLog() {
        this.createdAt = LocalDateTime.now();
    }
    
    // All-arg constructor
    public SummaryLog(Long id, String inputText, String outputText, LocalDateTime createdAt) {
        this.id = id;
        this.inputText = inputText;
        this.outputText = outputText;
        this.createdAt = createdAt;
    }
    
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getInputText() {
		return inputText;
	}

	public void setInputText(String inputText) {
		this.inputText = inputText;
	}

	public String getOutputText() {
		return outputText;
	}

	public void setOutputText(String outputText) {
		this.outputText = outputText;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}
    
    
}
