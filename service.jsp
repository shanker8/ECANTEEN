
<%@page import="java.security.MessageDigest"%>
<%@page import="java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>

<!DOCTYPE html>
<html>

<head>
<style>
.CSSTableGenerator {
	
	
	
}.CSSTableGenerator table{
    
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
}.CSSTableGenerator tr:hover td{
	background-color:#ffffaa;
		

}
.CSSTableGenerator td{
	vertical-align:middle;
		background:-o-linear-gradient(bottom, #ffffff 5%, #ffffaa 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ffffff), color-stop(1, #ffffaa) ); 
	background:-moz-linear-gradient( center top, #ffffff 5%, #ffffaa 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ffffff", endColorstr="#ffffaa");	background: -o-linear-gradient(top,#ffffff,ffffaa);

	background-color:#ffffff;

	border:1px solid #ffffff;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:16px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #efcb00 5%, #f7de20 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #efcb00), color-stop(1, #f7de20) );
	background:-moz-linear-gradient( center top, #efcb00 5%, #f7de20 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#efcb00", endColorstr="#f7de20");	background: -o-linear-gradient(top,#efcb00,f7de20);

	background-color:#efcb00;
	border:0px solid #ffffff;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:18px;
	font-family:Arial;
	font-weight:bold;
	color:#000000;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #efcb00 5%, #f7de20 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #efcb00), color-stop(1, #f7de20) );
	background:-moz-linear-gradient( center top, #efcb00 5%, #f7de20 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#efcb00", endColorstr="#f7de20");	background: -o-linear-gradient(top,#efcb00,f7de20);

	background-color:#efcb00;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}

</style>

    <meta charset="UTF-8">
    <title>E CANTEEN</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css" media="screen" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Playball' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style-portfolio.css">
    <link rel="stylesheet" href="css/picto-foundry-food.css" />
    <link rel="stylesheet" href="css/jquery-ui.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="icon" href="favicon-1.ico" type="image/x-icon">
</head>

<body>

    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> 
    <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                <a class="navbar-brand" href="#">E CANTEEN</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav main-nav  clear navbar-right ">
                    <li><a class="active color_animation" href="#top">WELCOME</a></li>
                 
                   
                    <li><a class="color_animation" href="#reservation">RESERVATION</a></li>
					 <li><a class="color_animation" href="servent_page.jsp">Back</a></li>
                 
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
     
    <div id="top" class="starter_container bg">
        
  <div class="follow_container"> 
    <div class="starter_follow"> 
      <h2 class="top-title"> E CANTEEN</h2>
      <h2 class="white second-title">" Management System "</h2>
      <hr>
    </div>
  </div>
       
    </div>


   


   

 


  

   
 
<section id="reservation" class="background_content"> 
<div class="CSSTableGenerator"> 
  <table align="center">
    <tr> 
      <td colspan="2" align="center">Servent Page</td>
    </tr>
    <tr> 
      <td><img src="images/providing_service.jpg"></td>
      <td>
				<table align="center" class="item dinner"
		 >
               
<tr><td colspan="3" align="center" >Providing Service to Customers</td></tr>
<tr><td>Customer_Name</td>
<td>Ordered Items</td>
            <td>Provide Service</td>
</tr>

<%			String mappath1=null,gmap_path1=null;
String ca1="waiting";
		   try
		   {
			   Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=databasecon.getconnection();
                
   				 Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM voucher where order_status='"+ca1+"'");
				while(rs.next())
				{
					//int s=rs.getInt("sno");
					//String pname=rs.getString("pname");
					String customer_name=rs.getString("customer_name");
					//String paddress=rs.getString("paddress");
					String items=rs.getString("items");
					
					String ap=items.replace(" "," ,");
				
						//String price=rs.getString("price");
					 %>


       			<tr>
			
					
              <td style="padding:10px;"> <strong><font color="#660033" size="3"><%=customer_name%></font></strong> </td>
                    
                    			
              <td style="padding:10px;padding-right:0px;"><%=ap%> 
               </td>
                    
                   <td><a href="provide.jsp?a=<%=customer_name%>,<%=items%>">Provide Service</a></td> 
				
                    
                 
                  
                    
				</tr>
                
  
                

           
    <%
	   					}
		   }
		   catch(Exception e)
		   {
		   }
	   
		%>
       
      
		</table>
				</td>
    </tr>
  </table>
</div>
</section> 
<script type="text/javascript" src="js/jquery-1.10.2.min.js"> </script>
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="js/jquery.mixitup.min.js" ></script>
    <script type="text/javascript" src="js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>      
    <script type="text/javascript" src="js/jquery.mixitup.min.js" ></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script>

    <script type="text/javascript">
        $(function() {
            $('a[href*=#]:not([href=#])').click(function() {
                if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                    if (target.length) {
                        $('html,body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                      return false;
                    }
                }
            });
        });

    </script>


    <script>
        $(function() {
            $( "#datepicker" ).datepicker();
        });
    </script>

    <script type="text/javascript">
        $(function(){
            $('#portfolio').mixitup({
                targetSelector: '.item',
                transitionSpeed: 450
            });
        });
    </script>
</body>
</html>