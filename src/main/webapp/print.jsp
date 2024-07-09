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
<%User u=(User)request.getAttribute("data"); %>
<table style="cellspacing:5px; cellpadding:7px" border="2px solid">
	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>EMAIL</th>
		<th>PWD</th>
		<th>PHONE</th>
		<th>SAL</th>
		<th>ADDRESS</th>
		<th>PRINTALL</th>
		<th>UPDATE</th>
		<th>DELETE</th>
	</tr>
	<tr>
		<td><%=u.getId() %></td>
		<td><%=u.getName() %></td>
		<td><%=u.getEmail() %></td>
		<td><%=u.getPwd() %></td>
		<td><%=u.getPhone() %></td>
		<td><%=u.getSal() %></td>
		<td><%=u.getAddress() %></td>
		<td><a href="printall.jsp" ><button>PrintAll</button></a></td>
		<td><a href="update.jsp?id=<%=u.getId()%> &&name=<%=u.getName()%>&&email=<%=u.getEmail()%>&&pwd=<%=u.getPwd()%>&&phone=<%=u.getPhone()%>&&sal=<%=u.getSal()%>&&address=<%=u.getAddress()%>"><button>Update</button></a></td>
		<td><a href="delete.jsp"><button>Delete</button></a></td>
	</tr>
</table>
</body>
</html>