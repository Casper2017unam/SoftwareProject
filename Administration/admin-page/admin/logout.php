<?php
include('include/database.php');
include('session.php');

$logout_query=mysql_query("select * from user where user_id=$id_session");
$row=mysql_fetch_array($logout_query);
$user=$row['firstname']." ".$row['lastname'];
session_start();
session_destroy();

mysql_query("INSERT INTO history (date,action,data)VALUES(NOW(),'Logout','$user')")or die(mysql_error());

header('location:index.php');

?>