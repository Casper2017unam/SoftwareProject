<?php require('header.php'); ?>
<div>
    <ul class="breadcrumb">
        <li>
            <a href="#">Home</a>
        </li>
    </ul>
</div>
<div class=" row">
    <div class="col-md-2 col-sm-2 col-xs-5" style="margin-left:25px;">
        <a data-toggle="tooltip" title="Total of Users" class="well top-block" href="user.php">
            <i class="glyphicon glyphicon-user blue"></i>
							<?php
							$result = mysql_query("SELECT * FROM user");
							$num_rows = mysql_num_rows($result);
							?>
            <div>Total Users</div>
            <div><?php echo $num_rows; ?></div>
        </a>
    </div>

    <div class="col-md-2 col-sm-2 col-xs-5" style="margin-left:25px;">
        <a data-toggle="tooltip" title="Total of Clients" class="well top-block" href="client.php">
            <i class="glyphicon glyphicon-user"></i>
							<?php
							$result = mysql_query("SELECT * FROM client");
							$num_rows1 = mysql_num_rows($result);
							?>
            <div>Total Clients</div>
            <div><?php echo $num_rows1; ?></div>
        </a>
    </div>

    <div class="col-md-2 col-sm-2 col-xs-5" style="margin-left:25px;">
        <a data-toggle="tooltip" title="Total of Items" class="well top-block" href="item.php">
            <i class="glyphicon glyphicon-shopping-cart yellow"></i>
							<?php
							$result = mysql_query("SELECT * FROM item");
							$num_rows2 = mysql_num_rows($result);
							?>
            <div>Total Items</div>
            <div><?php echo $num_rows2; ?></div>
        </a>
    </div>

    <div class="col-md-2 col-sm-2 col-xs-5" style="margin-left:25px;">
        <a data-toggle="tooltip" title="Total of Releasing" class="well top-block" href="#">
            <i class="glyphicon glyphicon-th-list red"></i>
							<?php
							$result = mysql_query("SELECT * FROM release_details where release_status = 'pending' ");
							$num_rows3 = mysql_num_rows($result);
							?>
            <div>Total Releasing</div>
            <div><?php echo $num_rows3; ?></div>
        </a>
    </div>
	
    <div class="col-md-2 col-sm-2 col-xs-5" style="margin-left:25px;">
        <a data-toggle="tooltip" title="Total of Returning" class="well top-block" href="#">
            <i class="glyphicon glyphicon-th-list blue"></i>
							<?php
							$result = mysql_query("SELECT * FROM release_details where release_status = 'returned' ");
							$num_rows3 = mysql_num_rows($result);
							?>
            <div>Total Returning</div>
            <div><?php echo $num_rows3; ?></div>
        </a>
    </div>
</div>
<?php require('footer.php'); ?>
