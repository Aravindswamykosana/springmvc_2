<%@page import="java.util.List"%>
<%@page import="springmvc_2.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%List<User> list=(List<User>)request.getAttribute("list");%>
	<table border="2px solid" cellspacing="5px" cellpadding="5px" style="background-color: blue">
		<tr>
			<th>Id</th>
			<th>NAME</th>
			<th>EMAIL</th>
			<th>PHONE</th>
			<th>SAL</th>
			<th>ADDRESS</th>
			
		</tr>
		<%
		for(User employee:list){ 
		%>
		<tr>
			<td><%=employee.getId() %></td>
			<td><%= employee.getName() %></td>
			<td><%= employee.getEmail() %></td>
			<td><%= employee.getPhone() %></td>
			<td><%= employee.getSal() %></td>
			<td><%=employee.getAddress() %></td>
		</tr>
		<%}%>
	</table>
</body>
</html>