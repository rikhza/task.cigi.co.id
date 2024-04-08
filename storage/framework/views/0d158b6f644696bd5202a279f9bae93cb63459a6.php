<?php
$setting = App\Models\Utility::getAdminPaymentSetting();
if ($setting['color']) {
    $color = $setting['color'];
}
else{
  $color = 'theme-3';  
}
?>

<form class="" method="post" action="<?php echo e(route('notes.store',$currentWorkspace->slug)); ?>">
    <?php echo csrf_field(); ?> 
     <div class="modal-body">
    <div class="row">
        <div class="col-md-12">
            <label for="title" class="col-form-label"><?php echo e(__('Title')); ?></label>
            <input class="form-control" type="text" id="title" name="title" placeholder="<?php echo e(__('Enter Title')); ?>" required>
        </div>
        <div class="col-md-12">
            <label for="description" class="col-form-label"><?php echo e(__('Description')); ?></label>
            <textarea class="form-control" id="description" name="text" placeholder="<?php echo e(__('Enter Description')); ?>" required></textarea>
        </div>
        <div class="col-md-12">
            <label for="color" class="col-form-label"><?php echo e(__('Color')); ?></label>
            <select class="form-control select2" name="color" id="color" required>
                <option value="bg-primary"><?php echo e(__('Primary')); ?></option>
                <option value="bg-secondary"><?php echo e(__('Secondary')); ?></option>
                <option value="bg-info"><?php echo e(__('Info')); ?></option>
                <option value="bg-warning"><?php echo e(__('Warning')); ?></option>
                <option value="bg-danger"><?php echo e(__('Danger')); ?></option>
            </select>
        </div>
        <div class="col-md-12">
            <label for="type" class="col-form-label"><?php echo e(__('Type')); ?></label>
           <div class="selectgroup w-50 ">
                <label class="selectgroup-item">
                    <input type="radio" name="type" value="personal" class="selectgroup-input" checked="checked">
                    <span class="selectgroup-button">Personal</span>
                </label>
                <label class="selectgroup-item">
                    <input type="radio" name="type" value="shared" class="selectgroup-input">
                    <span class="selectgroup-button">Shared</span>
                </label>
            </div>
        </div>

             

        <div class="col-md-12 assign_to_selection">
            <label for="assign_to" class="col-form-label"><?php echo e(__('Assign to')); ?></label>
            <select     id="assign_to"    name="assign_to[]" class="multi-select" data-toggle="select2" multiple="multiple" data-placeholder="<?php echo e(__('Select Users ...')); ?>"  >
                <?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $u): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <option value="<?php echo e($u->id); ?>"><?php echo e($u->name); ?> - <?php echo e($u->email); ?></option>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </select>
        </div>
    </div>
</div>
        <div class="modal-footer">
          <button type="button" class="btn  btn-light" data-bs-dismiss="modal"><?php echo e(__('Close')); ?></button>
             <input type="submit" value="<?php echo e(__('Save Changes')); ?>" class="btn  btn-primary">
        </div>
    
</form>


<script type="text/javascript">
    
    if ($(".multi-select").length > 0) {
            $( $(".multi-select") ).each(function( index,element ) {
                var id = $(element).attr('id');
                   var multipleCancelButton = new Choices(
                        '#'+id, {
                            removeItemButton: true,
                        }
                    );
            });
       }

</script>
<?php if($color == "theme-1"): ?>
<style type="text/css">
    .selectgroup-input:checked + .selectgroup-button {
    background-color: #51459d !important;
}
.selectgroup-button {
    
    border-color: #51459d !important;
    }
</style>
<?php endif; ?>

<?php if($color == "theme-2"): ?>
<style type="text/css">
    .selectgroup-input:checked + .selectgroup-button {
    background-color: #1f3996 !important;
}
.selectgroup-button {
    
    border-color: #1f3996 !important;
    }
</style>
<?php endif; ?>
<?php if($color == "theme-3"): ?>
<style type="text/css">
    .selectgroup-input:checked + .selectgroup-button {
    background-color: #6fd943 !important;
}
.selectgroup-button {
    
    border-color: #6fd943 !important;
    }
</style>
<?php endif; ?>
<?php if($color == "theme-4"): ?>
<style type="text/css">
    .selectgroup-input:checked + .selectgroup-button {
    background-color: #584ed2 !important;
}
.selectgroup-button {
    
    border-color: #584ed2 !important;
    }
</style>
<?php endif; ?><?php /**PATH /home/cigico/task.cigi.co.id/resources/views/notes/create.blade.php ENDPATH**/ ?>