<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String m=(String)request.getAttribute("msg");
if(m!=null){%>
<%=m %>
<%} %>
<%String ms=(String)request.getAttribute("msg1");
if(ms!=null){%>
<%=ms%>
<%} %>
<fieldset style="width: 350px;">
<legend>Login-Form</legend>
<form action="login">
Email:<input type="email" placeholder="enter the email" name="email"><br><br>
PWD:<input type="password" placeholder="enter the pwd" name="pwd"><br><br>
<button>Login</button>
</form>
</fieldset>
</body>
</html>