<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
	    <title>index</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	    
	</head>
	<body class="bg-light">
		<jsp:include page="header.jsp"/>
		
		<div class="container mt-5">
		    <div class="card shadow-lg rounded-4">
		        <div class="card-body">
		            <h2 class="text-center text-primary mb-4">AI-Powered Text Summarizer</h2>
		            <form action="summarize" method="post">
		                <div class="mb-3">
		                    <label for="text" class="form-label">Enter your text:</label>
		                    <textarea name="text" id="text" class="form-control" rows="6" placeholder="Paste text here..."></textarea>
		                </div>
		                <div class="d-grid gap-2">
		                    <button type="submit" class="btn btn-success btn-lg">Summarize</button>
		                </div>
		            </form>
		            <div class="text-center mt-3">
		                <a href="history" class="btn btn-outline-primary">View History</a>
		            </div>
		        </div>
		    </div>
		</div>
	</body>
</html>
