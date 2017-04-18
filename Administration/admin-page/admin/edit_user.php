<?php include('header.php'); 


$ID=$_GET['user_id'];


?>


<div>
    <ul class="breadcrumb">
        <li>
            <a href="#">Home</a>
        </li>
        <li>
            <a href="#">Edit Item</a>
        </li>
    </ul>
</div>

<div class="row">
    <div class="box col-md-12">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
                <h2><i class="glyphicon glyphicon-th-list"></i> Edit Item Details</h2>

                <div class="box-icon">
                <!---    <a href="#" class="btn btn-setting btn-round btn-default"><i
                            class="glyphicon glyphicon-cog"></i></a> -->
                    <a href="#" class="btn btn-minimize btn-round btn-default"><i
                            class="glyphicon glyphicon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round btn-default"><i
                            class="glyphicon glyphicon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <!-- Start content here -->
				
					<div class="alert alert-info">
						<a href="user.php"><button class="btn btn-primary"><i class="glyphicon glyphicon-arrow-left"></i> Back</button></a>
					</div>

<?php
  $query=mysql_query("select * from user where user_id='$ID'")or die(mysql_error());
$row=mysql_fetch_array($query);
  ?>					
					<form method="post" enctype="multipart/form-data" class="form-horizontal" style="margin-left:250px;">
					  <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Firstname</label>
						<div class="col-sm-4">
						  <input type="text" name="firstname" value="<?php echo $row['firstname']; ?>" class="form-control" id="inputEmail3" placeholder="Firstname....." required />
						</div>
					  </div>
					  <div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Middlename</label>
						<div class="col-sm-4">
						  <input type="text" name="middlename" value="<?php echo $row['middlename']; ?>" class="form-control" id="inputEmail3" placeholder="MI / Middlename....." />
						</div>
						<span style="color:red;">optional</span>
					  </div>
					  <div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">Lastname</label>
						<div class="col-sm-4">
						  <input type="text" name="lastname" value="<?php echo $row['lastname']; ?>" class="form-control" id="inputPassword3" placeholder="Lastname....." required />
						</div>
					  </div>
					  <div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">Username</label>
						<div class="col-sm-4">
						  <input type="text" name="username" value="<?php echo $row['username']; ?>" class="form-control" id="inputPassword3" placeholder="Username....." required />
						</div>
					  </div>
					  <div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-4">
						  <input type="password" name="password" value="<?php echo $row['password']; ?>" class="form-control" id="inputPassword3" placeholder="Password....." required />
						</div>
					  </div>
					  <div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label"></label>
						<div class="col-sm-7">
						  <button type="submit" name="update" class="btn btn-primary"><i class="glyphicon glyphicon-save"></i> Submit</button>
						</div>
					  </div>
					</form>
							
<?php
$id =$_GET['user_id'];
if (isset($_POST['update'])) {

						$firstname=$_POST['firstname'];
						$middlename=$_POST['middlename'];
						$lastname=$_POST['lastname'];
						$username=$_POST['username'];
						$password=$_POST['password'];

$history_record=mysql_query("select * from user where user_id=$id_session");
$row=mysql_fetch_array($history_record);
$user=$row['firstname']." ".$row['lastname'];
mysql_query("INSERT INTO history (date,action,data) VALUES (NOW(),'Edit User Details','$user')")or die(mysql_error());

{
mysql_query(" UPDATE user SET firstname='$firstname', middlename='$middlename', lastname='$lastname', username='$username', 
password='$password' WHERE user_id = '$id' ")or die(mysql_error());
echo "<script>alert('Successfully Updated User Info!'); window.location='user.php'</script>";
}

}

?>
					
                <!-- End content here -->
            </div>
        </div>
    </div>
</div><!--/row-->


<?php include('footer.php'); ?>
