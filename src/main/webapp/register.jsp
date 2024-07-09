<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<fieldset style="width:250px;">	
<legend>Register-form</legend>
<form action="save"  color:white;">
		Name:<input type="text" placeholder="enter your name" name="name"> <br/><br/>
		Email:<input type="email"  placeholder="enter your email" name="email"> <br/><br/>
		pwd:<input type="password"  placeholder="enter your pwd" name="pwd"> <br/><br/>
		phone: <input type="tel"  placeholder="enter your phone" name="phone"> <br/><br/>
		sal:<input type="number"  placeholder="enter your sal" name="sal"><br/><br/>
		Address:<input type="text" placeholder="enter your address" name="address"><br><br> 
		<button>Register</button>
</form>
</fieldset>
</body>
</html>