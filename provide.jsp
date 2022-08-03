<%@ page import="java.sql.*,databaseconnection.*"%>
 <%
		
		
		//String iid=(String)session.getAttribute("iid");
	//	String iid=(String)session.getAttribute("uid");
	//	String a=(String)session.getAttribute("a");
	String customer_name=request.getParameter("a");
	String[] parts = customer_name.split(",");
	
	String as=parts[0];
	String as1=parts[1];

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





String rr="provided";
try{
	Connection con1 = databasecon.getconnection();

  ps1=con1.prepareStatement("Update voucher set order_status=? where customer_name='"+as+"' AND items='"+as1+"'");
			
			ps1.setString(1,rr);	
			ps1.executeUpdate();

%>
	<script type="text/javascript">
	alert("Successfully service to be provided");
	window.location='servent_page.jsp';</script>
	<%

			
	}

catch(Exception e2)
{
out.print(e2);
}



%>
      