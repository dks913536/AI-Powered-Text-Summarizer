<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
	    <title>Summary Result</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	    
	</head>
	<body class="bg-light">
		<jsp:include page="header.jsp"/>
		<div class="container mt-5">
		    <div class="card shadow-lg rounded-4">
		        <div class="card-body">
		            <h2 class="text-center text-success mb-4">Summary Result</h2>
		            
		            <div class="mb-3">
		                <h5 class="text-muted">Input Text</h5>
		                <p class="border p-3 bg-white rounded">${inputText}</p>
		            </div>
		
		            <div class="mb-3">
		                <h5 class="text-muted">AI Summary</h5>
		                <p class="border p-3 bg-light rounded">${summary}</p>
		            </div>
		
		            <div class="d-flex justify-content-between">
		                <a href="/" class="btn btn-primary">Go Back</a>
		                <a href="history" class="btn btn-outline-secondary">View History</a>
		            </div>
		        </div>
		    </div>
		</div>
	</body>
</html>
