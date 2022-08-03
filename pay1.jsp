<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="java.io.*"%>
<%@page import="java.lang.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.*" %>
 <%
		
		
		//String iid=(String)session.getAttribute("iid");
	//	String iid=(String)session.getAttribute("uid");
	//	String a=(String)session.getAttribute("a");
	String customer_name=request.getParameter("ad");
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




String rr="paid";
try{

 
    int TotalAmount;
    TotalAmount=0;
    int TotalPrice;
    TotalPrice=0;
    
    Connection con1 = databasecon.getconnection();

        ps1=con1.prepareStatement("Update voucher set bill=? where customer_name='"+as+"' AND items='"+as1+"'");
			ps1.setString(1,rr);	
			ps1.executeUpdate();
        String strqry="Select amount from register where customer_name='"+as+"'";
        st=con1.createStatement();
        rs=st.executeQuery(strqry);
        while(rs.next())
        {
             TotalAmount=rs.getInt("amount");
        }
            

        String strqry1="Select total_price from voucher where customer_name='"+as+"'";
        Statement st2=con1.createStatement();
         rs1=st2.executeQuery(strqry1);
        while(rs1.next())
        {
             TotalPrice=rs1.getInt(1);
             
        }
        session.setAttribute("TotalAmount",TotalAmount);
        session.setAttribute("TotalPrice",TotalPrice);
            
           
	%>
        
        <input type="hidden" id="TotalAmount" name="TotalAmount" value=<%=TotalAmount%>  />
        <input type="hidden" id="TotalPrice" name="TotalPrice" value=<%=TotalPrice%> />
        <%
            Connection con3 = databasecon.getconnection();
        Statement st3=con3.createStatement();
        
        int tm=Integer.parseInt(session.getAttribute("TotalAmount").toString());
        int tp=Integer.parseInt(session.getAttribute("TotalPrice").toString());
//        int Tp=Integer.parseInt(request.getParameter("TotalPrice"));
        int BalanceAmount=tm-tp;
//        session.setAttribute("BalanceAmount",BalanceAmount); 
//        String BalanceAmountm=session.getAttribute("BalanceAmount").toString();
        strqry="UPDATE register SET amount='"+BalanceAmount+"' WHERE customer_name='"+as+"'";
        st3.executeUpdate(strqry);
        %>
        
	<script type="text/javascript">
        var TotalAmount = document.getElementById("TotalAmount").value;
        var TotalPrice = document.getElementById("TotalPrice").value;
        var BalanceAmount=(TotalAmount*1)-(TotalPrice*1);
         
	alert("Successfully Paid your bill remaining amount is"+BalanceAmount);
        
//        document.getElementById("BalanceAomunt").value=BalanceAmount;
        

            
//        window.location.replace("pay1.jsp?BalanceAmount="+BalanceAmount); 
	window.location='customer_page1.jsp';</script>
        
            
	<%
        
          
         }


catch(Exception e2)
{
out.print(e2);
}



%>
      