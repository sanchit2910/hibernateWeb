<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="PdetailsServlet" method="post">
<label> Name: </label> 
<input type="text" name = "Ename" required = "required" /><br/><br/>
<label> Address: </label> 
<input type="text" name = "Eaddress"/><br/><br/>
<label> Mobile: </label> 
<input type="number" name = "Emobile"/><br/><br/>
<input type="submit" value=" submit">

</form>


</body>
</html>