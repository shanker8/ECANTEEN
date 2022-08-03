
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

	-webkit-transform: scale(1.5) translateZ(0);
    -moz-transform: scale(1.5) translateZ(0);
    -o-transform: scale(1.5) translateZ(0);
    transform: scale(1.5) translateZ(0);
	}</style>

	
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
                   
                    <li><a class="color_animation" href="#pricing">PRICING</a></li>
                   
                    <li><a class="color_animation" href="customer_login.jsp">User Login</a></li>
					  <li><a class="color_animation" href="admin_login.jsp">Canteen</a></li>
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
          <li class="filter" data-filter="all">Your Ordered Items</li>
       
        </ul>
        <!-- @end #filter-list -->
      
		
		<table class="item breakfast" align="center" >

					<tr>
               

<%			String mappath=null,gmap_path=null;
String ca=request.getParameter("ap");
out.println(ca);

		   
		   

String j="poori";

		   try
		   {
			   Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=databasecon.getconnection();
                
   				 Statement st=con.createStatement();
				 
				 
			int i=0;	 
String strArray[] = ca.split(",");
               
                System.out.println("String converted to String array");
               
                //print elements of String array
                for( i=0; i < strArray.length; i++){
                        System.out.println(strArray[i]);
               
				 
				 
	ResultSet rs = st.executeQuery("SELECT * FROM items_upload where item_name='"+strArray[i]+"'");
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


       
			
					
              <td style="padding:10px;"> <font color="#FF6699" size="5"><strong><%=item_name%></strong></font> </td>
                    
                    			
              <td style="padding:10px;padding-right:0px;"> <img src="<%=img_path%>" width="300" height="190"  class="enlarge" /> 
                <font color="#0000CC" size="4"><strong>$<%=price%></strong></font> </td>
                    
                    
				
                    
                 
                  
                    
				</tr>
                
  
               

           
    <%
	 
	   					}
		   }
		   }
		   catch(Exception e1)
{
out.println(e1.getMessage());
}
	   
		%>
		</table>
				
				
				
			
					
				
		
     
		  
     
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