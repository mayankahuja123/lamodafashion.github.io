<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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

try{
	Class.forName("com.mysql.jdbc.Driver");
    
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
	PreparedStatement pst = con.prepareStatement("select * from info");
	ResultSet rs = pst.executeQuery();
	float r = 0;
	int count = 0;
	while(rs.next()){
		int rating = rs.getInt("Ratings");
		r = r + rating;		
		count++;
	}
	System.out.println(r/count);
	out.println("The average ratings of the product is\n"+r/count+"<br>");
	out.println("<a href='ProductList.html' class='button1' style='float:left'>ProductList</a>");
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