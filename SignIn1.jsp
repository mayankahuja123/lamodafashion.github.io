<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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

<%
//out.println(request.getParameter("password1"));
//out.println(request.getParameter("username"));
String password = request.getParameter("password1");
String username = request.getParameter("username");
try{
	Class.forName("com.mysql.jdbc.Driver");
    
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
	out.println("Connection ready");
	PreparedStatement pst = con.prepareStatement("select * from Personal_Info");
	out.println("Statement prepared");
	ResultSet rs = pst.executeQuery();
	out.println("Resultset made");
    
	while(rs.next()){
		String password1 = rs.getString("password");
		String username1 = rs.getString("email");
		out.println(password1);
		out.println(username);
		if(password1.equals(password)&&username.equalsIgnoreCase(username1))
		{
			out.println("Login successfull");
			out.println("<form class='button1' action='ProductList.html'><input type='submit' value='ViewItem'></form>");
			break;
		}
		else
		{
			out.println("Login unsuccessful");
			out.println("Try to signup");
			out.println("<form class='button1' action='SignUp.jsp'><input type='submit' value='signup'></form>");
		}
	}
    
	
	
	
}
catch(SQLException e)
{
	System.out.print("Sorry");
}
catch(ClassNotFoundException e)
{
	System.out.print("Sorry");
}

%>

 
</body>
</html>