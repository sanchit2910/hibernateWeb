<%@ page import="com.task.UserDao"%>
<jsp:useBean id="obj" class="com.task.User">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>  
<%  
int i=UserDao.register(obj);  
if(i>0)  
out.print("You are successfully registered");   
RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
rd.forward(request, response);

%>  