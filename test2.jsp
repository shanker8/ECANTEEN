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
		
		String[]  array = voucher.split(aa);
       for(int i=0;i<array.length;i++)
       {
	   
	     aa+=array[i]+" ";
	   //System.out.println(array[i]);
	   i=i+1;
		   
		   }
		   
		   String bb=" ";
		
		String[]  array1 = voucher.split(bb);
       for(int i=1;i<array1.length;i++)
       {
	   
	     bb+=array1[i]+" ";
	 //  System.out.println(array[i]);
	   i=i+1;
	     System.out.println("^^^^^^^^^^^^^^^^^^^^^"+bb);
		   
		   }
		   
		   System.out.println("***************"+aa);
		
		  
		   System.out.println("***************"+bb);
		 
		 
		 System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+voucher);
		// String serialNo= "004-034556";
   // String[] parts = a[].split(",");
   /*
	
	String integers = "54 65 74";
List<Integer> list = new ArrayList<Integer>();
for (String s : integers.split("\\s"))  
{  
   list.add(Integer.parseInt(s));  
}
list.toArray();

*/
String hh="40 45";
 int total=0;
 //String sumExpression = bb;
    String[] numbers = hh.split(" ");


 
	    for (String number: numbers) {
	     total+=Integer.parseInt(number);
		 }
	   //System.out.println(array[i]);
	 //  i=i+1;
		   
		  
//  for (String number: numbers) {
    //   total+= Integer.parseInt(number);
   // }
System.out.println("8888888888888888888888"+total);
    // check our result
    //assert total == 4;
		
		//System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"+string1);
		
FileInputStream fis;
//String no=request.getParameter("no");

//String city=request.getParameter("city");
//String age=request.getParameter("age");

PreparedStatement ps = null;

	ResultSet rs = null;

try
{
Connection con = databasecon.getconnection();



ps=con.prepareStatement("insert into voucher(voucher,customer_name,email,items,price) values('"+voucher+"','"+customer_name+"','"+email+"','"+aa+"','"+bb+"')");


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
