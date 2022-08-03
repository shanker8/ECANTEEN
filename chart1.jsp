<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%
String query="SELECT item_name,price from items_upload";
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/rest","com.mysql.jdbc.Driver","root","root");

dataset.executeQuery( query);
JFreeChart chart = ChartFactory .createBarChart3D("tweets", "count", "messages",dataset, PlotOrientation.VERTICAL, true, true, false);
                
try
{
ChartUtilities.saveChartAsJPEG(new File("images/chart1.jpg"), chart, 700, 300);
out.println("chart successfully created");
//response.sendRedirect("barchart1.jsp");
}
catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
%>
<img src="images/chart1.jpg">