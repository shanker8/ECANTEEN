<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String l=request.getParameter("name");
	String m=request.getParameter("pass");
	String un="admin";
	String pw="admin";
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% if(l.equals(un)&& m.equals(pw))
{
	%>
	<script type="text/javascript">
	alert("Successfully Login");
	window.location='admin_page.jsp';</script>
	<%
	//response.sendRedirect("admin_viewpage.jsp");
}else
{
	%>

	<script type="text/javascript">
alert("Your Login is failur Kindly check user name and Password");
window.location='admin.jsp';</script>
<%

}%>

</body>
</html>