<%@ page import="com.task.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous">
</script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet"/>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<%
        String id=(String)session.getAttribute("userid");
String name=(String)request.getAttribute("userid");
%>
<p>Welcome <% request.getAttribute("userid");%></p>   
<p>Welcome <%= name%></p>    
<div>
<h1>
<a href = "PDetails.jsp"> Click to enter personal details </a> 
<a href = "ODetails.jsp"> Click to enter Official details </a> 
</h1>
</div>
</body>
</html>