<%@ page import="java.sql.*,databaseconnection.*"%>
 <%
		
		
		//String iid=(String)session.getAttribute("iid");
	//	String iid=(String)session.getAttribute("uid");
	//	String a=(String)session.getAttribute("a");
	String cname=request.getParameter("cname");
	System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%"+cname);
	String citems=request.getParameter("citems");
	System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%"+citems);
	String comments=request.getParameter("comments");
System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%$$$$$$$$$$$$$$$$$$$$$$$$$$"+comments);
		String source=(String)session.getAttribute("ss");
		String destination=(String)session.getAttribute("ss1");
	int count=0;	
		
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String sendid=null,status=null,partition=null,d=null,e=null;

//String id=request.getParameter("id");





String rr="paid";
try{
	Connection con1 = databasecon.getconnection();

  ps1=con1.prepareStatement("Update voucher set comments=? where customer_name='"+cname+"' AND items='"+citems+"'");
			
			ps1.setString(1,comments);	
			ps1.executeUpdate();


//response.sendRedirect("customer_page1.jsp"); 
%>
		<script type="text/javascript">
	alert("Successfully ");
	window.location='customer_page1.jsp';</script>
                    <%
	}

catch(Exception e2)
{
out.print(e2);
}



%>
      