<html>
<head>
    <title>LIGHTBOX EXAMPLE</title>
    <style>
    .black_overlay{
        display: none;
        position: absolute;
        top: 0%;
        left: 0%;
        width: 100%;
        height: 100%;
        background-color: black;
        z-index:1001;
        -moz-opacity: 0.8;
        opacity:.80;
        filter: alpha(opacity=80);
    }
    .white_content {
        display: none;
        position: absolute;
        top: 25%;
        left: 25%;
        width: 50%;
        height: 50%;
        padding: 16px;
        border: 16px solid orange;
        background-color: white;
        z-index:1002;
        overflow: auto;
    }
</style>
</head>
<body>
    <p>This is the main content. To display a lightbox click <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">here</a></p>
    <div id="light" class="white_content">



 <form action="review_insert.jsp" method="get">
	  <table bgcolor="#0099FF">
	  
	  <tr><td>
        <P><span class="title">Source</span> 
          <input name="source" type="text" />
        </P></td></tr><tr><td>
        <P><span class="title">Destination</span> 
          <input name="destination" type="text" />
        </P></td></tr>
	  
	  
	  
	  
	  
	  <tr><td>
        <P><span class="title">Username</span> 
          <input name="uname" type="text" />
        </P></td></tr><tr><td>
        <P><span class="title">Password</span> 
          <input name="pass" type="password" />
        </P></td></tr>
		
		<tr><td>
        <P><span class="title">Email</span> 
          <input name="email" type="text" />
        </P></td></tr>
		
		<tr><td>Review&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<textarea name="msg" rows="7" cols="20"></textarea></td>
		</tr>
		<tr><td>
        <P>
        <input type="submit" name="Login">
        </P></td></tr></table>
      </form>







 <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">Close</a></div>
    <div id="fade" class="black_overlay"></div>
</body>