<%@ page  import="java.sql.*"  %>
<%
String un=request.getParameter("un");
String pw=request.getParameter("pw");
session.setAttribute("un",un);
session.setAttribute("pw",pw);


try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sdeduplication","root","admin");
PreparedStatement ps=con.prepareStatement("select * from  signup where name='"+un+"' && cpass='"+pw+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
String uname1=rs.getString("name");
session.setAttribute("uname",uname1);
response.sendRedirect("user_upload.jsp");
}
else
{
out.println("enter correct user name and password");
}
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
