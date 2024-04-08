<form class="" method="post" action="<?php echo e(route('tax.store',[$currentWorkspace->slug])); ?>">
    <?php echo csrf_field(); ?>
     <div class="modal-body">
    <div class="form-group">
        <label for="name" class="col-form-label"><?php echo e(__('Name')); ?></label>
        <input type="text" class="form-control" id="name" name="name" required/>
    </div>
    <div class="form-group">
        <label for="rate" class="col-form-label"><?php echo e(__('Rate')); ?></label>
        <input type="number" class="form-control" id="rate" name="rate" min="0" step=".01" required/>
    </div>
</div>
    <div class=" modal-footer">
      
         <button type="button" class="btn  btn-light" data-bs-dismiss="modal"><?php echo e(__('Close')); ?></button>
         <input type="submit" value="<?php echo e(__('Save Changes')); ?>" class="btn  btn-primary">
    </div>
</form>
 <?php /**PATH /home/cigico/task.cigi.co.id/resources/views/users/create_tax.blade.php ENDPATH**/ ?>