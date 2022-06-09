<%@page import="projectdemo.connections"%>
<%@page import="java.sql.*"%>
<%
try
{
Connection con=connections.getCon();
Statement st=con.createStatement();
String q1="create table users(Name varchar(100),email varchar(100)primary key,Mobilenumber bigint,Securityquestion varchar(200),Answer varchar(200),password varchar(100),Address varchar(200),City varchar(100),State varchar(100),Country varchar(100))";
String q2="create table product(id int,Name varchar(100),Category varchar(200),Price int,active varchar(100))";
System.out.println(q1);
System.out.println(q2);
st.execute(q1);
st.execute(q2);
System.out.println("table is created");
con.close();
}
catch(Exception e)
{
System.out.println(e);
}
%>