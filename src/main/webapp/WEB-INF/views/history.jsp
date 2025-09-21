<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	    <title>History</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	    
	</head>
	<body class="bg-light">
		<jsp:include page="header.jsp"/>
		
		<div class="container mt-5">
		    <div class="card shadow-lg rounded-4">
		        <div class="card-body">
		            <h2 class="text-center text-info mb-4">Summary History</h2>
		            <table class="table table-hover table-bordered">
		                <thead class="table-dark">
		                    <tr>
		                        <th>ID</th>
		                        <th>Input</th>
		                        <th>Summary</th>
		                        <th>Date</th>
		                    </tr>
		                </thead>
		                <tbody>
		                    <c:forEach var="log" items="${logs}">
		                        <tr>
		                            <td>${log.id}</td>
		                            <td style="max-width: 300px; word-wrap: break-word;">${log.inputText}</td>
		                            <td style="max-width: 300px; word-wrap: break-word;">${log.outputText}</td>
		                            <td>${log.createdAt}</td>
		                        </tr>
		                    </c:forEach>
		                </tbody>
		            </table>
		            <div class="text-center mt-3">
		                <a href="/" class="btn btn-primary">Back to Home</a>
		            </div>
		        </div>
		    </div>
		</div>
	</body>
</html>
