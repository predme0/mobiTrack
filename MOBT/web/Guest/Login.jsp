<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>


<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="db.ConnectionClass" id="obj"></jsp:useBean>


<html>	
<head>

    

  
    <title>MOBITRACK</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
</head>
<body>
    
<script>$(document).ready(function(c) {
	$('.close').on('click', function(c){
		$('.login-form').fadeOut('slow', function(c){
	  		$('.login-form').remove();
		});
	});	  
});
</script>





 <!--SIGN UP-->
 <h1>MobiTrack</h1>
<div class="login-form">
	<div class="close"> </div>
		<div class="head-info">
			<label class="lbl-1"> </label>
			<label class="lbl-2"> </label>
			<label class="lbl-3"> </label>
		</div>
			<div class="clear"> </div>
	<div class="avtar">
		<img src="images/avtar.png" />
	</div>
			<form>
					<input type="text" class="text" value="Username" name="user" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >
						<div class="key">
					<input type="password" value="Password" name="pass" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
						</div>
			
	<div class="signin">
		<input type="submit" value="Login" name="log">
	</div>
                        </form>
</div><%
                if(request.getParameter("log")!=null){
                   String user=request.getParameter("user");
                   String password=request.getParameter("pass");
                   String query="select * from tbl_admin where admin_username='"+user+"' and admin_password='"+password+"'";
                 // System.out.println(query);
                   ResultSet rs=obj.selectCommand(query);
                   if(rs.next()){
                       session.setAttribute("log","log");
                       response.sendRedirect("../Admin/HomePage.jsp");
                       
                   }
                   else{
                       out.println("Invalid Login");
                   
                   }
                }
            %>
 <div class="copy-rights">
					<p>Template by <a href="http://w3layouts.com" target="_blank">w3layouts</a> </p>
			</div>

</body>
</html>