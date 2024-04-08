

    <?php echo e(Form::open(array('route' => array('client.import'),'method'=>'post', 'enctype' => "multipart/form-data"))); ?>

    <div class="modal-body">
    <div class="row">
        <div class="col-md-12 mb-6">
            <?php echo e(Form::label('file',__('Download sample Client CSV file'),['class'=>'form-control-label'])); ?>

            <a href="<?php echo e(asset(Storage::url('uploads/sample')).'/sample_clients_.csv'); ?>" class="btn btn-xs btn-primary btn-icon-only width-auto">
                <i class="ti ti-download"></i> <?php echo e(__('Download')); ?>

            </a>
        </div>
        <div class="col-md-12">
            <?php echo e(Form::label('file',__('Select CSV File'),['class'=>'form-control-label'])); ?>

       
            <div class="choose-file  mt-3">
                <label for="file" class="">
                   <div class=" bg-primary"> <i class="ti ti-upload px-1"></i><?php echo e(__('Choose file here')); ?></div>
                    <input type="file" class="form-control" name="file" id="file" data-filename="upload_file" required>
                </label>
              <p class="upload_file"></p> 
            </div>
        </div>
         <input type="hidden" value="<?php echo e($slug); ?>" name="slug">
          </div>
      </div>
        <div class="modal-footer">
          <button type="button" class="btn  btn-light" data-bs-dismiss="modal"><?php echo e(__('Close')); ?></button>
            <input type="submit" value="<?php echo e(__('Upload ')); ?>" class="btn  btn-primary">
        </div>
   
    <?php echo e(Form::close()); ?>


<?php /**PATH /home/cigico/task.cigi.co.id/resources/views/clients/import.blade.php ENDPATH**/ ?>