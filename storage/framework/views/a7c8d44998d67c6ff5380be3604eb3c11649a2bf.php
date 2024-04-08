<?php $__env->startSection('page-title'); ?> <?php echo e(__('Calendar')); ?> <?php $__env->stopSection(); ?>
 <?php $__env->startSection('links'); ?>
 <?php if(\Auth::guard('client')->check()): ?>   
<li class="breadcrumb-item"><a href="<?php echo e(route('client.home')); ?>"><?php echo e(__('Home')); ?></a></li>
 <?php else: ?>
 <li class="breadcrumb-item"><a href="<?php echo e(route('home')); ?>"><?php echo e(__('Home')); ?></a></li>
 <?php endif; ?>
 <?php if(\Auth::guard('client')->check()): ?>   
<li class="breadcrumb-item"><a href="<?php echo e(route('client.zoom-meeting.index',$currentWorkspace->slug)); ?>"><?php echo e(__('Zoom Meeting')); ?></a></li>
 <?php else: ?>
 <li class="breadcrumb-item"><a href="<?php echo e(route('zoom-meeting.index',$currentWorkspace->slug)); ?>"><?php echo e(__('Zoom Meeting')); ?></a></li>
  <?php endif; ?>
<li class="breadcrumb-item"> <?php echo e(__('Calendar')); ?></li>
  <?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

<div class="row">
             <!-- [ sample-page] start -->
             <div class="col-lg-8">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Calendar</h5>
                                </div>
                                <div class="card-body">
                                    <div id='calendar' class='calendar'></div>
                                </div>
                            </div>
                        </div>

                         <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="mb-4">Meetings</h4>
                                        <ul class="event-cards list-group list-group-flush mt-3 w-100">
                                            <?php
                                            $date = Carbon\Carbon::now()->format('m');
                                            $this_month_meeting = App\Models\ZoomMeeting::get();
                                            ?>

                                            <?php $__currentLoopData = $this_month_meeting; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $meeting): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                             <?php
                                             $month =date('m', strtotime($meeting->start_date));
                                            ?>
                                            <?php if($date == $month): ?>
                                            <li class="list-group-item card mb-3">
                                                <div class="row align-items-center justify-content-between">
                                                    <div class="col-auto mb-3 mb-sm-0">
                                                        <div class="d-flex align-items-center">
                                                            <div class="theme-avtar bg-primary">
                                                                <i class="fa fa-tasks"></i>
                                                            </div>
                                                            <div class="ms-3">
                                                            <h6 class="m-0"><?php echo e($meeting->title); ?></h6>
                                                            <small class="text-muted"><?php echo e($meeting->start_date); ?> </small>
                                                            </div>
                                                           
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </li>  
                                            <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>
                                    </div>
                                </div>
                           </div>
                       </div>

<?php $__env->stopSection(); ?>

<?php if($currentWorkspace): ?>
    <?php $__env->startPush('css-page'); ?>
   
    <?php $__env->stopPush(); ?>
    <?php $__env->startPush('scripts'); ?>
    
        <script>
 (function () {
        var etitle;
        var etype;
        var etypeclass;
        var calendar = new FullCalendar.Calendar(document.getElementById('calendar'), {
            headerToolbar: {
                left: 'prev,next today',
                center: 'title',
                right: 'dayGridMonth,timeGridWeek,timeGridDay'
            },
             buttonText: {
            timeGridDay: "<?php echo e(__('Day')); ?>",
            timeGridWeek: "<?php echo e(__('Week')); ?>",
            dayGridMonth: "<?php echo e(__('Month')); ?>"
        },
            themeSystem: 'bootstrap',
            slotDuration: '00:10:00',
            navLinks: true,
            droppable: true,
            selectable: true,
            selectMirror: true,
            editable: true,
            dayMaxEvents: true,
            handleWindowResize: true,
            events: <?php echo ($calandar); ?>,
        });
        calendar.render();
    })();

        </script>
    <?php $__env->stopPush(); ?>
<?php endif; ?>

<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/cigico/task.cigi.co.id/resources/views/zoom_meeting/calender.blade.php ENDPATH**/ ?>