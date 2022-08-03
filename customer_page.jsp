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
</head>

<body>

    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">E CANTEEN</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav main-nav  clear navbar-right ">
                    <li><a class="active color_animation" href="#top">WELCOME</a></li>
                    <li><a class="color_animation" href="#story">ABOUT</a></li>
                    <li><a class="color_animation" href="#pricing">PRICING</a></li>
                    <li><a class="color_animation" href="#beer">BEER</a></li>
                    <li><a class="color_animation" href="#bread">BREAD</a></li>
                    <li><a class="color_animation" href="#featured">FEATURED</a></li>
                    <li><a class="color_animation" href="#reservation">RESERVATION</a></li>
                    <li><a class="color_animation" href="register.jsp">CONTACT</a></li>
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
    </section>


    <section class="description_content">
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
                        </ul><!-- @end #filter-list -->    
                        <ul id="portfolio">
                            <li class="item breakfast"><img src="images/food_icon01.jpg" alt="Food" >
                                <h2 class="white">$20</h2>
                            </li>

                            <li class="item dinner special"><img src="images/food_icon02.jpg" alt="Food" >
                                <h2 class="white">$20</h2>
                            </li>
                            <li class="item dinner breakfast"><img src="images/food_icon03.jpg" alt="Food" >
                                <h2 class="white">$18</h2>
                            </li>
                            <li class="item special"><img src="images/food_icon04.jpg" alt="Food" >
                                <h2 class="white">$15</h2>
                            </li>
                            <li class="item dinner"><img src="images/food_icon05.jpg" alt="Food" >
                                <h2 class="white">$20</h2>
                            </li>
                            <li class="item special"><img src="images/food_icon06.jpg" alt="Food" >
                                <h2 class="white">$22</h2>
                            </li>
                            <li class="item desert"><img src="images/food_icon07.jpg" alt="Food" >
                                <h2 class="white">$32</h2>
                            </li>
                            <li class="item desert breakfast"><img src="images/food_icon08.jpg" alt="Food" >
                                <h2 class="white">$38</h2>
                            </li>
                        </ul><!-- @end #portfolio -->
                    </div><!-- @end #w -->
                </div>
            </div>
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