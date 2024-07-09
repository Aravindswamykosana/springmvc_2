<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%String id=request.getParameter("id"); %>
	<%String name=request.getParameter("name"); %>
	<%String email=request.getParameter("email"); %>
	<%String pass=request.getParameter("pwd"); %>
	<%String phone=request.getParameter("phone"); %>
	<%String sal=request.getParameter("sal"); %>
	<%String address=request.getParameter("address"); %>
	<form action="update" style="border: 2px solid">
		<input type="number" name="id" value="<%=id%>" readonly="readonly"><br><br>
		<input type="text"  name="name" value="<%=name%>"><br/><br/>
		<input type="email" name="email" value="<%=email%>" readonly="readonly"><br/><br/>
		<input type="password" name="pwd" value="<%=pass%>"><br/><br/>
		<input type="tel" name="phone" value="<%=phone%>"><br/><br/>
		<input type="number" name="sal" value="<%=sal%>"><br/><br/>
		<input type="text" name="address" value="<%=address%>"><br/><br/>
		<a href="print.jsp"><button>update</button></a>
	</form>
</body>
</html>