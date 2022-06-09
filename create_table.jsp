<%@page import="projectdemo.connections"%>
<%@page import="java.sql.*"%>
<%
try
{
Connection con=connections.getCon();
Statement st=con.createStatement();
String q1="create table users(name varchar(100),email varchar(100)primary key,mobilenumber integer,password varchar(100),address varchar(200),city varchar(100),state varchar(100),country varchar(100))";
String q2="create table products(id integer,name varchar(100),category varchar(200),price integer,active varchar(100))";
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
