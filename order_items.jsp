
<%@page import="java.security.MessageDigest"%>
<%@page import="java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>

<!DOCTYPE html>
<html>

<head>
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
	
	
	<style>
  .enlarge
{
	border:1px solid #333;
}
.enlarge:hover
{
	-webkit-transition: all 200ms linear;
    -moz-transition: all 200ms linear;
    -o-transition: all 200ms linear;
    transition: all 200ms linear;
    -webkit-transform: translateZ(0);
    -moz-transform: translateZ(0);
    -o-transform: translateZ(0);
    transform: translateZ(0);

	-webkit-transform: scale(3.5) translateZ(0);
    -moz-transform: scale(3.5) translateZ(0);
    -o-transform: scale(3.5) translateZ(0);
    transform: scale(3.5) translateZ(0);
	}</style>

	<style>
 .CSSTableGenerator {
	
	
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
	
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
	
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
	
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
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
	background-color:#ffff56;
		

}
.CSSTableGenerator td{
	vertical-align:middle;
		background:-o-linear-gradient(bottom, #ffd4aa 5%, #ffff56 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ffd4aa), color-stop(1, #ffff56) ); 
	background:-moz-linear-gradient( center top, #ffd4aa 5%, #ffff56 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ffd4aa", endColorstr="#ffff56");	background: -o-linear-gradient(top,#ffd4aa,ffff56);

	background-color:#ffd4aa;

	border:1px solid #ffffff;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:14px;
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
		background:-o-linear-gradient(bottom, #007f00 5%, #007f7f 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #007f00), color-stop(1, #007f7f) );
	background:-moz-linear-gradient( center top, #007f00 5%, #007f7f 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#007f00", endColorstr="#007f7f");	background: -o-linear-gradient(top,#007f00,007f7f);

	background-color:#007f00;
	border:0px solid #ffffff;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:17px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #007f00 5%, #007f7f 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #007f00), color-stop(1, #007f7f) );
	background:-moz-linear-gradient( center top, #007f00 5%, #007f7f 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#007f00", endColorstr="#007f7f");	background: -o-linear-gradient(top,#007f00,007f7f);

	background-color:#007f00;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}
 
 
 </style>
</head>

<body>

    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> 
    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> 
    <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                <a class="navbar-brand" href="#">Restaurant</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav main-nav  clear navbar-right ">
                    <li><a class="active color_animation" href="#top">WELCOME</a></li>
                   
                    <li><a class="color_animation" href="#pricing">PRICING</a></li>
                   
                    <li><a class="color_animation" href="customer_page1.jsp">BACK</a></li>
					 
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
     
    <div id="top" class="starter_container bg">
        
  <div class="follow_container"> 
    <div class="starter_follow"> 
      <h2 class="top-title">RESTAURANT</h2>
      <h2 class="white second-title">" Management System "</h2>
      <hr>
    </div>
  </div>
        <div class="direction_container">
            <div class="direction">
                <a href="#story"></a>
            </div>
        </div>
    </div>


    
<section id ="pricing" class="background_content"> 
<h1><span>Affordable</span> pricing</h1>
</section> <section class="description_content"> 
<div class="limit"> 
  <div class="container"> 
    <div class="row"> 
      <div id="w"> 
        <ul id="filter-list" class="clearfix">
          <li class="filter" data-filter="all">All</li>
          <li class="filter" data-filter="breakfast">Breakfast</li>
          <li class="filter" data-filter="special">Special</li>
          <li class="filter" data-filter="desert">Desert</li>
          <li class="filter" data-filter="dinner">Dinner</li>
        </ul>
        <!-- @end #filter-list -->
        <ul id="portfolio">
		<div class="CSSTableGenerator">
		<form action="test1.jsp">
		<table align="center">
		<tr><td colspan="3" align="center">Order Items Here</td></tr>
		
		<tr><td width="230">
		
		<table class="item breakfast"
		 >
           <tr><td colspan="3" align="center">Breakfast Items</td></tr>    


<%			String mappath=null,gmap_path=null;
String ca="bf";
		   try
		   {
			   Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=databasecon.getconnection();
                
   				 Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM items_upload where category='"+ca+"'");
				while(rs.next())
				{
					//int s=rs.getInt("sno");
					//String pname=rs.getString("pname");
					String item_name=rs.getString("item_name");
					//String paddress=rs.getString("paddress");
					String description=rs.getString("description");
						  // mappath=rs.getString("mappath");
					String img_path=rs.getString("img_path");
						//   gmap_path=rs.getString("gmap_path");
					//out.println(rating);
					//out.println(s1);
						String category=rs.getString("category");
						String price=rs.getString("price");
					 %>


       			<tr>
			
					<td width="39" style="padding:10px;">
                 <font size="3" color="#FF0099"><b>
                                   <%=item_name%></b></font>
                <div align="left" style="padding-left:10px;">
                <h4 style="margin-bottom:0px;font-size:20px;"><u></u></h4>
                <span style="margin-left:5px;" ></span></div>
                    </td>
                    
                    			
              <td width="118" style="padding:10px;padding-right:0px;"> <img src="<%=img_path%>" width="55" height="42"  class="enlarge" /> 
             	<input type="text" name="price" style="width:60px;background_color:#FFCC66"  value="$<%=price%>">
                    
                    
				<td><input type="checkbox" name="voucher" 
                   value= "<%=item_name%> <%=price%>" value1="<%=price%>"  /></td>
                    
                 
                  
                    
				</tr>
                
  
                

           
    <%
	   					}
		   }
		   catch(Exception e)
		   {
		   }
	   
		%>
       
      
		</table>
				
				</td><td width="178">
				
				<table class="item special"
		 >
               
<tr><td colspan="3" align="center">Lunch Items</td></tr>

<%			String mappath1=null,gmap_path1=null;
String ca1="lunch";
		   try
		   {
			   Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=databasecon.getconnection();
                
   				 Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM items_upload where category='"+ca1+"'");
				while(rs.next())
				{
					//int s=rs.getInt("sno");
					//String pname=rs.getString("pname");
					String item_name=rs.getString("item_name");
					//String paddress=rs.getString("paddress");
					String description=rs.getString("description");
						  // mappath=rs.getString("mappath");
					String img_path1=rs.getString("img_path");
						//   gmap_path=rs.getString("gmap_path");
					//out.println(rating);
					//out.println(s1);
						String category=rs.getString("category");
						String price=rs.getString("price");
					 %>


       			<tr>
			
					<td style="padding:10px;">
                   <font size="3" color="#FF0099"><b>
                                   <%=item_name%></b></font>
                <div align="left" style="padding-left:10px;">
                <h4 style="margin-bottom:0px;font-size:20px;"><u></u></h4>
                <span style="margin-left:5px;" ></span></div>
                    </td>
                    
                    			
              <td style="padding:10px;padding-right:0px;"> <img src="<%=img_path1%>" class="enlarge" /> 
               	<input type="text" name="price" style="width:60px;background_color:#FFCC66"  value="$<%=price%>">
                    
                    <td><input type="checkbox" name="voucher"
                   value= "<%=item_name%> <%=price%>" value1="<%=price%>" /></td>
				
                    
                 
                  
                    
				</tr>
                
  
                

           
    <%
	   					}
		   }
		   catch(Exception e)
		   {
		   }
	   
		%>
       
      
		</table>
				</td><td width="164">
					
				<table class="item dinner ">
		 
               
<tr><td colspan="3" align="center">Dinner Items</td></tr>

<%			String mappath2=null;
String ca2="dinner";
		   try
		   {
			   Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=databasecon.getconnection();
                
   				 Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM items_upload where category='"+ca2+"'");
				while(rs.next())
				{
					//int s=rs.getInt("sno");
					//String pname=rs.getString("pname");
					String item_name=rs.getString("item_name");
					//String paddress=rs.getString("paddress");
					String description=rs.getString("description");
						  // mappath=rs.getString("mappath");
					String img_path2=rs.getString("img_path");
						//   gmap_path=rs.getString("gmap_path");
					//out.println(rating);
					//out.println(s1);
						String category=rs.getString("category");
						String price=rs.getString("price");
					 %>


       			<tr>
				
			
					<td style="padding:10px;">
                   <font size="3" color="#FF0099"><b>
                                   <%=item_name%></b></font>
                <div align="left" style="padding-left:10px;">
                <h4 style="margin-bottom:0px;font-size:20px;"><u></u></h4>
                <span style="margin-left:5px;" ></span></div>
                    </td>
                    
                    			
               <td > <img src="<%=img_path2%>" class="enlarge" /> 
            
				<input type="text" name="price" style="width:60px;background_color:#FFCC66"  value="$<%=price%>"> 
				   <td><input type="checkbox" name="voucher"
                    value= "<%=item_name%> <%=price%>" value1="<%=price%>"  /></td>
                 
                  
                    
				</tr>
                
  
                

           
    <%
	   					}
		   }
		   catch(Exception e)
		   {
		   }
	   
		%>
       
      
		</table>
		
		</td></tr>
		
		<tr><td colspan="3" align="center"><input type="submit"  value="submit"></td></tr>
		
		</table></form>
         
         </div>
        </ul>
        <!-- @end #portfolio -->
      </div>
      <!-- @end #w -->
    </div>
  </div>
</div>


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