<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  
  background: #990099;
   
}
.button1 {
  
  background-color: purple; 
  border: none;
  border-radius:8px;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  margin-right:10px;
  font-size: 16px;
  width:150px
}
.button1:hover {
  background-color: violet;
}
</style>
<body>

<form action='/miniproject/Hello1' >
	
	
	<br>Enter Email:<br>
	<input type='text' name='email'>
	<br>Enter Phone number:<br>
	<input type='text' name='phone'>
	<br>Enter Password:<br>
	<input type='text' name='password'>
	<br>
	
	
	<input class="button1" type='submit' value='next'>
	</form>
<%
try{
	
	

	//out.print("<br>"+request.getParameter("firstname")+"<br>");
	//out.print("<br>"+request.getParameter("lastname")+"<br>");
	//out.print("<br>"+request.getParameter("type")+"<br>");
	
	
	Cookie ck = new  Cookie("firstname",request.getParameter("firstname"));
	Cookie ck1 = new Cookie("lastname",request.getParameter("lastname"));
	Cookie ck2 = new Cookie("type",request.getParameter("type"));
	
	response.addCookie(ck);
	response.addCookie(ck1);
	response.addCookie(ck2);
	
	
	
	
	}catch(Exception e)
	{
	
	}

%>


</body>
</html>