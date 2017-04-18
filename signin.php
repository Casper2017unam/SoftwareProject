<?php include_once("conn.php")  ?>

<?php
  session_start();

  $uname = $_POST['email'];
  $password = $_POST['password'];
  
  
  $sql = "SELECT count(*) FROM users WHERE ( 
  email='".$uname."' and password='".$password."')";
  
  $qury = mysql_query($sql);
  
  $result = mysql_fetch_array($sql);
  
  
  if($result [0] > 0)
  {
	  
	echo "Login Successful!";
	$_SESSION ['eMail'] =  $uname;
	echo "<br/>Welcome to Aesthetics".$_SESSION ['eMail']. "!";
    echo "<br/><a href='signupform.php'>SignUp</a>";	
	echo "<br/><a href='signinform.php'>SignIn</a>";
    echo "<br/><a href='logout.php'>LogOut</a>";
	
  }

  else
					
	{
		
	echo "Login Failed";
    echo "<br/><a href='signupform.php'>SignUp</a>";	
	echo "<br/><a href='signinform.php'>SignIn</a>";
	
	}
  

?>