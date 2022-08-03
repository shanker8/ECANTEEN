<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>

<%

String customer_name=(String)session.getAttribute("customer_name");

String email=(String)session.getAttribute("email");

String xx="";
	 String voucher = "";
        String a[]=request.getParameterValues("voucher");
		
        for(int i=0;i<a.length;i++){
            voucher+=a[i]+" ";
        }
		String aa=" ";
		String n1=null;
		String[]  array = voucher.split(aa);
       for(int i=0;i<array.length;i++)
       {
	   
	     aa+=array[i]+" ";
	   //System.out.println(array[i]);
	   n1=aa.trim();
	   i=i+1;
		   
		   }
		   
		   String bb=" ";
		String n=null;
		String[]  array1 = voucher.split(bb);
       for(int i=1;i<array1.length;i++)
       {
	   
	     bb+=array1[i]+" ";
		 session.setAttribute("price",bb);
		n=bb.trim();
		 
	 //  System.out.println(array[i]);
	   i=i+1;
	     System.out.println("^^^^^^^^^^^^^^^^^^^^^"+bb);
		   
		   }
		   
		   System.out.println("***************"+aa);
		
		  
		   System.out.println("***************"+n);
		
		 
		 System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+voucher);
		// String serialNo= "004-034556";
   // String[] parts = a[].split(",");
   
	
	
		
		//System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"+string1);
		
FileInputStream fis;
//String no=request.getParameter("no");

//String city=request.getParameter("city");
//String age=request.getParameter("age");

PreparedStatement ps = null;

	ResultSet rs = null;
String status_total="waiting";
String s="waiting";
try
{
Connection con = databasecon.getconnection();



ps=con.prepareStatement("insert into voucher(voucher,customer_name,email,items,price,status_total,order_status) values('"+voucher+"','"+customer_name+"','"+email+"','"+n1+"','"+n+"','"+status_total+"','"+s+"')");


//ps.setString(8,city);
//ps.setString(9,age);
//ps.setString(10,marks);

ps.executeUpdate();
response.sendRedirect("update.jsp?success");



}

catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
