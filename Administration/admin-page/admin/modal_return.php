<!-- Delete Item Modal -->
<div class="modal fade" id="delete_book<?php  echo $release_details_id;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <!---<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>-->
        <h4 class="modal-title" id="myModalLabel">Return Item</h4>
      </div>
      <div class="modal-body">
			<div class="alert alert-danger">
				Are you sure you want to return this item ?
			</div>
			<div class="modal-footer">
			<a class="btn btn-success" href="return_query.php<?php echo '?id='.$id; ?>&<?php echo 'item_id='.$item_id; ?>">Yes</a>
			<button class="btn" data-dismiss="modal" aria-hidden="true"><i class="icon-remove icon-large"></i>&nbsp;Close</button>
			</div>
      </div>
    </div>
  </div>
</div>