<form class="" method="post" action="<?php echo e(route('users.change.password',[$user_id])); ?>">
    <?php echo csrf_field(); ?>
     <div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <label for="password" class="col-form-label"><?php echo e(__('New Password')); ?></label>
            <input type="password" class="form-control" id="password" name="password"/>
        </div>
        <div class="col-md-12">
            <label for="password_confirmation" class="col-form-label"><?php echo e(__('Confirm New Password')); ?></label>
            <input type="password" class="form-control" id="password_confirmation" name="password_confirmation"/>
        </div>
    </div>
</div>
        <div class="modal-footer">
        <!--    <button type="button" class="btn  btn-light" data-bs-dismiss="modal"><?php echo e(__('Close')); ?></button> -->
            <input type="submit" value="<?php echo e(__('Reset')); ?>" class="btn  btn-primary">
        </div>
    
</form>
<?php /**PATH /home/cigico/task.cigi.co.id/resources/views/users/reset_password.blade.php ENDPATH**/ ?>