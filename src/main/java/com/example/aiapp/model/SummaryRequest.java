package com.example.aiapp.model;

public class SummaryRequest 
{
	private String text;
	
    public SummaryRequest() {}

    public SummaryRequest(String text) {
        this.text = text;
    }

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
}
