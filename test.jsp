<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

<%

String customer_name=(String)session.getAttribute("customer_name");

String email=(String)session.getAttribute("email");


	 String voucher = "";
        String a[]=request.getParameterValues("voucher");
		
        for(int i=0;i<a.length;i++){
            voucher+=a[i]+" ";
        }
		
		
		
		
		 for(String s : a) {
      String[] s2 = s.split(",");
      for(String results : s2) {
          System.out.println("%%%%%%"+results);
      }
  }
		
		
		
		
		System.out.println("*****************************"+voucher);
		
FileInputStream fis;
//String no=request.getParameter("no");

//String city=request.getParameter("city");
//String age=request.getParameter("age");

PreparedStatement ps = null;

	ResultSet rs = null;

try
{
Connection con = databasecon.getconnection();



ps=con.prepareStatement("insert into voucher(voucher,customer_name,email) values('"+voucher+"','"+customer_name+"','"+email+"')");


//ps.setString(8,city);
//ps.setString(9,age);
//ps.setString(10,marks);

ps.executeUpdate();
response.sendRedirect("success1.jsp?success");



}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
