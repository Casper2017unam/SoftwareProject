<?php
 // $dbhost = ('localhost');
 // $username = 'root';
 // $password = '';
 // $db = 'council';
  
 // mysql_connect("$dbhost","$username","$password","$db");
  //echo "Connected";
  
 // mysql_select_db($db);
//  echo "Connected to database";
  
  
  
  
  
  
 include_once("conn.php");
include_once("functions.php");

    if (isset($_POST['Registerbtn'])) {
               $user = $_POST['username'];
			   $pass = $_POST['password'];
		
			   $sql = "INSERT into users (username, password) values ('$user','$pass')";
			   $qury = mysql_query($sql);
			   
			   
			   if(!$qury)
			   {
			         echo "Failed" .mysql_error();
					
					 
			   }	 
			    else
					
			   {
					 echo "Successful";
			         
			   }
			   
	}  else if (isset($_POST['submit'])){
	
					$username =  mysql_real_escape_string($_POST["username"]);
					$password =  mysql_real_escape_string($_POST["password"]);
					
					if (empty($username) or empty($password)){
						
						echo "Please fill in form below";
						
					}else{
						
				      $check_login = mysql_query("SELECT * from users WHERE username='$username' AND password='$password'");
					  
					  if(mysql_num_rows($check_login) == 1 ) {
						  
						$get = mysql_fetch_array($check_login);
						$my_email = $get['username'];
						
						
						$_SESSION['user_id'] = $my_email;
						
						echo "working!!!!!!!!!!!!!";
						header('location: Registration.html');

					  } else {
						  
						  echo "password incorrect!";
					  }
						
					}
		
	}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register - School Council</title>

	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css" />
	<link rel="stylesheet" href="css/font-awesome.css" />
	<link href="css/default.css" rel="stylesheet" />
	<link rel="stylesheet" href="css/animate.css" />
	<link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />	
	<link rel="stylesheet" href="css/style.css">
    
  </head>
  
  <body>
    <header>
		<div class="main-menu">
	    <div class="container">
	    <div class="row">
		<div class="col-md-4">						
		<h1><a class="navbar-brand" href="index.html" data-0="line-height:90px;" data-300="line-height:50px;">      UNAM School Council
		</a></h1>   						
		</div>						
		<div class="col-md-8">
						
		</div>	
		</div>				
		</div>
		</div>
	</header>		
	<div class="row mar-bot40">
		<div class="col-md-offset-3 col-md-6">
		<div class="sections-header">
			<h2></h2>
			<p></p>
		</div>
		<div>
		<ul class="nav nav-pills">
		<li><a href="signUp.php">Register</a></li>
		</ul>
		</div>
		</div>
	</div>	
		
	<script type="text/javascript" src="http://www.clubdesign.at/floatlabels.js"></script>

<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Please sign up<small>  school council voting!</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		<form  action="signUp.php" method="post>
			    			<div class="row">
			    		<!----	<div class="col-xs-6 col-sm-6 col-md-6">
			    			<div class="form-group">
			                <input type="text" name="id" id="id" class="form-control input-sm floatlabel" placeholder="id">
			    			</div>
			    			</div>  ---->
							
			    			<div class="col-xs-6 col-sm-6 col-md-6">
			    			<div class="form-group">
			    			<input type="text" name="username" id="username" class="form-control input-sm" placeholder="User Name">
			    			</div>
			    			</div>
			    			</div>

			    		<!----	<div class="form-group">
			    			<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address">
			    			</div>  --->

			    			<div class="row">
			    			<div class="col-xs-6 col-sm-6 col-md-6">
			    			<div class="form-group">
			    			<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
			    			</div>
			    			</div>
							
			    		<!---	<div class="col-xs-6 col-sm-6 col-md-6">
			    			<div class="form-group">
			    			<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password">
			    			</div>
			    			</div>  --->
			    			</div>
			    			
			    			<input type="submit" value="Register" name="Registerbtn" class="btn btn-info btn-block">
			    		
			    		</form>
						
						
                        <fieldset class="sign_in">
                            <form method="post">
                               <p><input type="text" name="username"  maxlength="20" size="20"  placeholder=" Username "></p>
                               <p><input type="password" name="password"   maxlength="16" size="20"  placeholder=" Password "></p><br>
                               <p><input type="submit" name="submit" value="Sign In"</p>		 
                            </form>
	                    </fieldset>
						
						
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
		
	<footer>
		<section id="footer" class="section footer">
			<div class="container">
				<div class="row animated opacity mar-bot20" data-andown="fadeIn" data-animation="animation">
					<div class="col-sm-12 align-center">
						<ul class="social-network social-circle">
							<li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
							</ul>				
					</div>
				</div>
				<div class="col-sm-12 text-center">
				   <p>Copyright &copy; 2017  The University Of Namibia, School Representative Council</p>
                </div>
			</div>
		</section>
		<a href="#" class="scrollup"><i class="fa fa-chevron-up"> </i></a>
	</footer>
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/fancybox/jquery.fancybox.pack.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/functions.js"></script>
	<script type="text/javascript">new WOW().init();</script>
    
</body>
</html>