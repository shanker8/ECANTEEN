<%@ page import="java.sql.*,databaseconnection.*"%>
	<% 
        //String mail=request.getParameter("mail");
//String pass=request.getParameter("pass");
		  
	String name=request.getParameter("name");
	session.setAttribute("name",name);
	String pass=request.getParameter("pass");
	
	
	
String s=null;		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
		String fname=null;
		
		int idd;
	String sql="select * from register where customer_name='"+name+"' AND password='"+pass+"'";
	try
	{
	   con = databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
	    if(rs.next())
	     {
		 
		 
		 idd=rs.getInt("id");
		 session.setAttribute("idd",idd);
		 s=rs.getString("customer_name");
		 
		 
		 
		 session.setAttribute("customer_name",s);
		String mail=rs.getString("email");
		session.setAttribute("email",mail);
		String location=rs.getString("location");
		session.setAttribute("location",location);
		
		 
	      	 response.sendRedirect("customer_page1.jsp");       		    
			 
	    }
	  out.println("Oop's! you are not Authenticated Person");
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }


	
	
            %>
        