<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</head>

<body>


<%
String P = "Product1";
int rating = Integer.parseInt(request.getParameter("Product1"));

try{
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
PreparedStatement pst = con.prepareStatement("insert into info values(?,?)");
pst.setString(1,P);
pst.setInt(2,rating);
pst.executeUpdate();
out.println("<a href='Main_Web_page (1).html' class='button1' style='float:left'>WebPage</a>");
}
catch(Exception e)
{
	
}


%>


</body>
</html>