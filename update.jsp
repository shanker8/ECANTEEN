<%@ page import="java.sql.*,databaseconnection.*"%>
 <%
		
		
		//String iid=(String)session.getAttribute("iid");
	//	String iid=(String)session.getAttribute("uid");
	//	String a=(String)session.getAttribute("a");
	String customer_name=(String)session.getAttribute("customer_name");

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



String a="waiting";

try
{
con=databasecon.getconnection();
 st=con.createStatement();   
 String sqll="select price from voucher where status_total='"+a+"' AND customer_name='"+customer_name+"'  ";
 rs=st.executeQuery(sqll);
if(rs.next()){
	//a=rs.getString(1);
	
	  
	String bb=rs.getString("price");
	

	
//String status1="waiting";

 int total=0;
 //String sumExpression = bb;
    String[] numbers = bb.split(" ");


 
	    for (String number: numbers) {
	     total+=Integer.parseInt(number);
		 }
	   //System.out.println(array[i]);
	 //  i=i+1;
		   
		  
//  for (String number: numbers) {
    //   total+= Integer.parseInt(number);
   // }
System.out.println("8888888888888888888888"+total);
String rr="updated";
try{
	Connection con1 = databasecon.getconnection();

  ps1=con1.prepareStatement("Update voucher set total_price=?,status_total=?  where status_total='"+a+"' AND customer_name='"+customer_name+"'");
			ps1.setInt(1,total);
			ps1.setString(2,rr);	
			ps1.executeUpdate();



}

	catch (Exception e1) 
		{
			out.println(e1.getMessage());
				
				
			
			
		}
response.sendRedirect("success1.jsp");


}
else
{

}




}

catch(Exception e2)
{
out.print(e2);
}



%>
      