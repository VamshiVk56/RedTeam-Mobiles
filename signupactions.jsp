<%@page import="projectdemo.connections"%>
<%@page import="java.sql.*"%>
<%
String Name=request.getParameter("Name");
String email=request.getParameter("email");
String Mobilenumber=request.getParameter("Mobilenumber");
String Securityquestion=request.getParameter("Securityquestion");
String Answer=request.getParameter("Answer");
String password=request.getParameter("password");
String Address="";
String City="";
String State="";
String Country="";
try
{
	Connection con=connections.getCon();
	PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, Name);
	ps.setString(2, email);
	ps.setString(3, Mobilenumber);
	ps.setString(4, Securityquestion);
	ps.setString(5, Answer);
	ps.setString(6, password);
	ps.setString(7, Address);
	ps.setString(8, City);
	ps.setString(9, State);
	ps.setString(10, Country);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
}
%>