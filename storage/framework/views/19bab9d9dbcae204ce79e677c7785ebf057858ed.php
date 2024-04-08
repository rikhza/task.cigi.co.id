<?php $__env->startSection('page-title'); ?> <?php echo e(__(' Notes')); ?> <?php $__env->stopSection(); ?>
<?php $__env->startSection('links'); ?>
<?php if(\Auth::guard('client')->check()): ?>   
<li class="breadcrumb-item"><a href="<?php echo e(route('client.home')); ?>"><?php echo e(__('Home')); ?></a></li>
 <?php else: ?>
 <li class="breadcrumb-item"><a href="<?php echo e(route('home')); ?>"><?php echo e(__('Home')); ?></a></li>
 <?php endif; ?>
<li class="breadcrumb-item"> <?php echo e(__('Notes')); ?></li>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('action-button'); ?>
    <?php if(auth()->guard('web')->check()): ?>
  
      <a href="#" class="btn btn-sm btn-primary" data-toggle="tooltip" title="<?php echo e(__('Create')); ?>" data-ajax-popup="true" data-size="lg" data-title="<?php echo e(__('Create New Note')); ?>" data-url="<?php echo e(route('note.create',$currentWorkspace->slug)); ?>">
            <i class="ti ti-plus"></i> 
        </a>
   

    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <?php if($currentWorkspace): ?>
   <div class="row justify-content-between align-items-center mt-5 mb-3">
            <div class="col-xl-5 col-lg-4 col-md-12 d-flex align-items-center justify-content-between justify-content-md-start">
                <div class="d-inline-block">
                    <h5 class="h4 d-inline-block font-weight-400"><?php echo e(__('Personal Notes')); ?></h5>
                </div>
            </div>
        </div>
        <section class="section">
            <?php if(count($personal_notes) > 0): ?>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row notes-list">
                            <?php $__currentLoopData = $personal_notes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $note): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="col-md-4">
                                    <div class="card ">
                                         <div class="<?php echo e($note->color); ?> note_color_dot px-1"></div>
                                        <div class="card-header">
                                            <h5  class=""><?php echo e($note->title); ?></h5>
                                        <div class="card-header-right">
                                            <div class="btn-group card-option">
                                                <button type="button" class="btn dropdown-toggle"
                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                    aria-expanded="false">
                                                    <i class="feather icon-more-vertical"></i>
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a href="#" class="dropdown-item" data-ajax-popup="true" data-size="lg" data-title="<?php echo e(__('Edit Note')); ?>" data-url="<?php echo e(route('notes.edit',[$currentWorkspace->slug,$note->id])); ?>">
                                                    <i class="ti ti-edit"></i> <span><?php echo e(__('Edit')); ?></span>
                                                </a>
                                                <a href="#" class="dropdown-item bs-pass-para" data-confirm="<?php echo e(__('Are You Sure?')); ?>" data-text="<?php echo e(__('This action can not be undone. Do you want to continue?')); ?>"  data-confirm-yes="delete-form-<?php echo e($note->id); ?>">
                                                   <i class="ti ti-trash"></i>  <span><?php echo e(__('Delete')); ?></span>
                                                </a>
                                                <form id="delete-form-<?php echo e($note->id); ?>" action="<?php echo e(route('notes.destroy',[$currentWorkspace->slug,$note->id])); ?>" method="POST" style="display: none;">
                                                    <?php echo csrf_field(); ?>
                                                    <?php echo method_field('DELETE'); ?>
                                                </form>
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                        <div class="card-body"style=" height: 210px !important;" >
                                             <div class="scrollText note-text ">
                                                <?php echo e($note->text); ?>

                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                </div>
            <?php else: ?>
                <div class="card">
                    <div class="card-body p-4">
                        <div class="page-error">
                            <div class="page-inner">
                                <div class="page-description">
                                    <?php echo e(__('No Personal Notes available')); ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
        </section>

        <div class="row justify-content-between align-items-center mt-5 mb-3">
            <div class="col-xl-5 col-lg-4 col-md-12 d-flex align-items-center justify-content-between justify-content-md-start">
                <div class="d-inline-block">
                    <h5 class="h4 d-inline-block font-weight-400"><?php echo e(__('Shared Notes')); ?></h5>
                </div>
            </div>
        </div>
        <section class="section">
            <?php if(count($shared_notes) > 0): ?>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row notes-list">
                               <?php $__currentLoopData = $shared_notes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $note): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="col-md-4">
                                    <div class="card  ">
                                          <div class="<?php echo e($note->color); ?> note_color_dot px-1"></div>
                                        <div class="card-header">
                                            <h5  class=""><?php echo e($note->title); ?></h5>
                                        <div class="card-header-right">
                                            <div class="btn-group card-option">
                                                <button type="button" class="btn dropdown-toggle"
                                                    data-bs-toggle="dropdown" aria-haspopup="true"
                                                    aria-expanded="false">
                                                    <i class="feather icon-more-vertical"></i>
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-end">
                                                    <a href="#" class="dropdown-item" data-ajax-popup="true" data-size="lg" data-title="<?php echo e(__('Edit Note')); ?>" data-url="<?php echo e(route('notes.edit',[$currentWorkspace->slug,$note->id])); ?>">
                                                    <i class="ti ti-edit"></i> <span><?php echo e(__('Edit')); ?></span>
                                                </a>
                                                <a href="#" class="dropdown-item bs-pass-para" data-confirm="<?php echo e(__('Are You Sure?')); ?>" data-text="<?php echo e(__('This action can not be undone. Do you want to continue?')); ?>" data-confirm-yes="delete-form-<?php echo e($note->id); ?>">
                                                   <i class="ti ti-trash"></i>  <span><?php echo e(__('Delete')); ?></span>
                                                </a>
                                                <form id="delete-form-<?php echo e($note->id); ?>" action="<?php echo e(route('notes.destroy',[$currentWorkspace->slug,$note->id])); ?>" method="POST" style="display: none;">
                                                    <?php echo csrf_field(); ?>
                                                    <?php echo method_field('DELETE'); ?>
                                                </form>
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                        <div class="card-body p-4"  style=" height: 210px !important;">
                                            <div class="note-text scrollText">
                                                <?php echo e($note->text); ?>

                                            </div> 
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </div>
                    </div>
                </div>
            <?php else: ?>
                <div class="card">
                    <div class="card-body p-4">
                        <div class="page-error">
                            <div class="page-inner">
                                <div class="page-description">
                                    <?php echo e(__('No Shared Notes available')); ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endif; ?>
        </section>
    <?php else: ?>
        <div class="container mt-5">
            <div class="card">
                <div class="card-body p-4">
                    <div class="page-error">
                        <div class="page-inner">
                            <h1>404</h1>
                            <div class="page-description">
                                <?php echo e(__('Page Not Found')); ?>

                            </div>
                            <div class="page-search">
                                <p class="text-muted mt-3"><?php echo e(__("It's looking like you may have taken a wrong turn. Don't worry... it happens to the best of us. Here's a little tip that might help you get back on track.")); ?></p>
                                <div class="mt-3">
                                    <a class="btn-return-home badge-blue" href="<?php echo e(route('home')); ?>"><i class="fas fa-reply"></i> <?php echo e(__('Return Home')); ?></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
    <script>
        $(document).on('click', 'input[name="type"]', function () {
            var type = $('input[name="type"]:checked').val();

            if (type == 'shared') {
                $('.assign_to_selection').show();
            } else {
                $('.assign_to_selection').hide();
            }
        });


     
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/cigico/task.cigi.co.id/resources/views/notes/index.blade.php ENDPATH**/ ?>