<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

<%

	
FileInputStream fis;
//String no=request.getParameter("no");
String fname=request.getParameter("name");
//String lname=request.getParameter("lname");
String mail=request.getParameter("email");
String pass=request.getParameter("pass");
String mno=request.getParameter("mobile");
String dob=request.getParameter("dob");
String location=request.getParameter("location");
String amount=request.getParameter("amount");
//String city=request.getParameter("city");
//String age=request.getParameter("age");

PreparedStatement ps = null;

	ResultSet rs = null;

try
{
Connection con = databasecon.getconnection();



ps=con.prepareStatement("insert into register(customer_name,password,email,dob,mobile,location,amount) values(?,?,?,?,?,?,?)");

ps.setString(1,fname);

ps.setString(3,mail);
ps.setString(2,pass);
ps.setString(5,mno);
ps.setString(4,dob);
ps.setString(6,location);
ps.setString(7,amount);
//ps.setString(9,age);
//ps.setString(10,marks);

ps.executeUpdate();


%>
	<script type="text/javascript">
	alert("Successfully Login");
	window.location='index.html';</script>
	<%
	//re

//response.sendRedirect("success1.jsp?success");



}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
