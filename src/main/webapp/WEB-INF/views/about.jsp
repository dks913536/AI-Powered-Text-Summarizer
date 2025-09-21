<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
	    <title>About - AI Summarizer</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	</head>
	<body class="bg-light">
	
		<jsp:include page="header.jsp"/>
		
		<div class="container mt-5">
		    <div class="card shadow-lg rounded-4">
		        <div class="card-body">
		            <h2 class="text-center text-primary mb-4">About AI Summarizer</h2>
		
		            <p class="lead">
		                This <b>AI-Powered Text Summarizer</b> is a Spring Boot application 
		                that uses <b>Spring AI + OpenAI</b> to automatically summarize long text 
		                into short, simple, and meaningful content.
		            </p>
		
		            <hr>
		
		            <h4>✨ Features</h4>
		            <ul class="list-group mb-4">
		                <li class="list-group-item">✔ Summarize any text using AI (OpenAI GPT models)</li>
		                <li class="list-group-item">✔ Store all requests & responses in MySQL database</li>
		                <li class="list-group-item">✔ View summary history in a clean table</li>
		                <li class="list-group-item">✔ User-friendly interface with JSP + Bootstrap</li>
		                <li class="list-group-item">✔ Ready for Docker & Cloud deployment</li>
		            </ul>
		
		            <h4>🛠️ How to Use</h4>
		            <ol class="list-group list-group-numbered mb-4">
		                <li class="list-group-item">Go to <b>Home</b> and paste your text in the input box</li>
		                <li class="list-group-item">Click <b>Summarize</b> to generate AI summary</li>
		                <li class="list-group-item">View the result instantly on screen</li>
		                <li class="list-group-item">Check <b>History</b> to see all past summaries</li>
		            </ol>
		
		            <h4>🚀 Tech Stack</h4>
		            <p>
		                <span class="badge bg-primary">Spring Boot</span>
		                <span class="badge bg-success">Spring AI</span>
		                <span class="badge bg-warning text-dark">OpenAI</span>
		                <span class="badge bg-info">JSP + JSTL</span>
		                <span class="badge bg-dark">MySQL</span>
		                <span class="badge bg-secondary">Bootstrap 5</span>
		            </p>
		
		            <div class="text-center mt-4">
		                <a href="/" class="btn btn-primary">Back to Home</a>
		            </div>
		        </div>
		    </div>
		</div>
	</body>
</html>
