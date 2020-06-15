<%@page import="org.w3c.dom.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function test(){
var dept = document.getElementsById("dt").value;

var hod ="";
if(dept.equalsIgnoreCase("Information technology")){
	hod="sanchit";
}else if(dept.equalsIgnoreCase("human resources"))
		{
	hod="khush";
}else if(dept.equalsIgnoreCase("management")){
	hod = "umang";
}else if(dept.equalsIgnoreCase("finance")){
	hod="kartikey";
}
documet.getelementbyId("hod").innerHTML = hod ;
//return dept;
}
</script>
<meta charset="ISO-8859-1">
<title>Official details</title>
</head>
<body>
<form action="" method="post">
<label> Name: </label> 
<input type="text" name = "Ename" required = "required" /><br/><br/>
<label> department: </label> 
<select name="dept" id="dt" onChange="test()">
<option value="Information technology" selected>Information technology</option>
<option value="Human resources" >Human resources</option>
<option value="Management" >Management</option>
<option value="finance" > finance</option>
</select>
<br/><br/>
<label> designation: </label> 
<select name="designation">
<option value="mgr" selected>Manager</option>
<option value="tl" >Team Leader</option>
<option value="intern" > intern</option>
<option value="ot" >Other</option>
</select>

<%-- 
<%!
var dept = document.getElementsById("dt").value;

var hod ="";
if(dept.equalsIgnoreCase("Information technology")){
	hod="sanchit";
}else if(dept.equalsIgnoreCase("human resources"))
		{
	hod="khush";
}else if(dept.equalsIgnoreCase("management")){
	hod = "umang";
}else if(dept.equalsIgnoreCase("finance")){
	hod="kartikey";
}
documet.getelementbyId("hod").innerHTML = hod ;
%> --%>

<%-- 
<%
 String dept =document.getElementsById("dt").value;
String hod ="";
if(dept.equalsIgnoreCase("Information technology")){
	hod="sanchit";
}else if(dept.equalsIgnoreCase("human resources"))
		{
	hod="khush";
}else if(dept.equalsIgnoreCase("management")){
	hod = "umang";
}else if(dept.equalsIgnoreCase("finance")){
	hod="kartikey";
} 
%> --%>


<br/><br/>
<label> HOD: </label>
<input type = "text" name = "hod" id = "hod"/>
<%-- <select name="hod" id= "hod">
<option value="" selected> <%=hod%></option>
</select> --%>

<input type="submit" value=" submit">

</form>
</body>
</html>