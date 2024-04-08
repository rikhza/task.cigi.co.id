@extends('layouts.admin')

@section('page-title') {{ __('Plans') }} @endsection
@section('links')
@if(\Auth::guard('client')->check())
<li class="breadcrumb-item"><a href="{{route('client.home')}}">{{__('Home')}}</a></li>
 @else
 <li class="breadcrumb-item"><a href="{{route('home')}}">{{__('Home')}}</a></li>
 @endif
<li class="breadcrumb-item"> {{ __('plans') }}</li>
@endsection
@section('action-button')

   <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 d-flex align-items-center justify-content-end">
                    <div class="text-sm-right status-filter">
                        <div class="btn-group  nav nav-tabs">
                             <a data-toggle="tab" href="#monthly-biling" class="btn_tab btn btn-light bg-primary active  text-white">{{ __('Monthly Biling') }}</a>
                            <a data-toggle="tab" class="btn_tab btn btn-light bg-primary  text-white" href="#annual-billing">{{ __('Annual Billing') }}</a>
                        </div>
                    </div>
                </div>
            </div>
            @endsection
<!-- @push('css-page')
  <link rel="stylesheet" href="{{ asset('assets/css/landing.css')}}">
  @endpush -->
  <style type="text/css">

 .price-card .p-price {
    font-size: 67px !important;
}

.nav-tabs {
    border-bottom: unset !important;
}

  </style>
@section('content')
<div class="row">
  <div class="col-md-12">
      <div class="pricing-plan">
           <div class="tab-content mt-3">
                        <div id="monthly-biling" class="tab-pane in active">
         <div class="row">
               @foreach ($plans as $key => $plan)
             <div class="col-lg-3">
            <div
              class="card price-card price-1 wow animate__fadeInUp"
              data-wow-delay="0.4s"
              style="
                visibility: visible;
                animation-delay: 0.2s;
                animation-name: fadeInUp;
              "
            >
              <div class="card-body">
                <span class="price-badge bg-primary">{{ $plan->name }} </span>
                 @if(\Auth::user()->type == 'user' && \Auth::user()->plan == $plan->id)
                <div class="d-flex flex-row-reverse m-0 p-0 ">
                    <span class="d-flex align-items-center ms-2">
                        <i class="f-10 lh-1 fas fa-circle text-success"></i>
                         <span class="ms-2"> {{ __('Active') }}</span>
                    </span>
                </div>
                @endif
                <span class="mb-4 f-w-600 p-price"
                  >{{ (env('CURRENCY_SYMBOL') ? env('CURRENCY_SYMBOL') : '$') }}{{ $plan->monthly_price }}<small class="text-sm">/{{ __('Per month') }}</small></span
                >
                <p class="mb-0">
                   {{ $plan->description }}
                </p>
                <ul class="list-unstyled my-5">
                  <li>
                    <span class="theme-avtar">
                      <i class=" text-primary ti ti-circle-plus"></i
                    ></span>
                   {{ ($plan->trial_days < 0)?__('Unlimited'):$plan->trial_days }} {{__('Trial Days')}}
                  </li>
                  <li>
                    <span class="theme-avtar">
                      <i class="text-primary ti ti-circle-plus"></i
                    ></span>
                    {{ ($plan->max_workspaces < 0)?__('Unlimited'):$plan->max_workspaces }} {{__('Workspaces')}}
                  </li>
                  <li>
                    <span class="theme-avtar">
                      <i class="text-primary ti ti-circle-plus"></i
                    ></span>
                   {{ ($plan->max_users < 0)?__('Unlimited'):$plan->max_users }} {{__('Users Per Workspace')}}
                  </li>
                  <li>
                    <span class="theme-avtar">
                      <i class="text-primary ti ti-circle-plus"></i
                    ></span>
                    {{ ($plan->max_clients < 0)?__('Unlimited'):$plan->max_clients }} {{__('Clients Per Workspace')}}
                  </li>
                  <li>
                    <span class="theme-avtar">
                      <i class="text-primary ti ti-circle-plus"></i
                    ></span>
                   {{ ($plan->max_projects < 0)?__('Unlimited'):$plan->max_projects }} {{__('Projects Per Workspace')}}
                  </li>
                </ul>
                  @if(Auth::user()->type != 'admin')
                <div class="d-grid text-center">

                   @if(\Auth::user()->plan == $plan->id && Auth::user()->is_trial_done == 1)
                  <button
                    class="btn mb-3 btn-light d-flex justify-content-center align-items-center btn-primary text-white mx-sm-5"
                  >
                       {{__('Trial Expires on ')}} <b> {{ (date('d M Y',strtotime(\Auth::user()->plan_expire_date))) }}</b>
                  </button>
                         @if((isset($paymentSetting['is_stripe_enabled']) && $paymentSetting['is_stripe_enabled'] == 'on') || (isset($paymentSetting['is_paypal_enabled']) && $paymentSetting['is_paypal_enabled'] == 'on') || (isset($paymentSetting['is_paystack_enabled']) && $paymentSetting['is_paystack_enabled'] == 'on') || (isset($paymentSetting['is_flutterwave_enabled']) && $paymentSetting['is_flutterwave_enabled'] == 'on') || (isset($paymentSetting['is_razorpay_enabled']) && $paymentSetting['is_razorpay_enabled'] == 'on') || (isset($paymentSetting['is_mercado_enabled']) && $paymentSetting['is_mercado_enabled'] == 'on') || (isset($paymentSetting['is_paytm_enabled']) && $paymentSetting['is_paytm_enabled'] == 'on') || (isset($paymentSetting['is_mollie_enabled']) && $paymentSetting['is_mollie_enabled'] == 'on') || (isset($paymentSetting['is_skrill_enabled']) && $paymentSetting['is_skrill_enabled'] == 'on') || (isset($paymentSetting['is_coingate_enabled']) && $paymentSetting['is_coingate_enabled'] == 'on'))
                         <div class="row ">
                            <div class="col-8">
                         <button
                            class="btn mb-3 btn-primary d-flex justify-content-center align-items-center"
                          >
                              <a href="{{route('payment',['monthly', \Illuminate\Support\Facades\Crypt::encrypt($plan->id)])}}" id="interested_plan_{{ $plan->id }}" class="text-white">
                                <i class="ti ti-shopping-cart px-2 text-white"></i>{{ __('Subscribe') }}
                            </a>
                          </button>
                        </div>
                           @if($plan->id != 1 && \Auth::user()->plan != $plan->id)
                        <div class="col-4">
                          @if(\Auth::user()->requested_plan != $plan->id)
                              <ul class="list-unstyled">
                                <li>
                                  <span class="btn btn-primary btn-icon m-1">
                                    <a href="{{ route('send.request',[\Illuminate\Support\Facades\Crypt::encrypt($plan->id)]) }}" class="" data-title="{{__('Send Request')}}" data-toggle="tooltip">
                                  <span class=""><i class="ti ti-arrow-forward-up text-white"></i></span>

                              </a></span>
                                </li>
                              </ul>
                          @else
                            <ul class="list-unstyled">
                              <li>
                                  <span class="btn btn-danger btn-icon m-1">
                                   <a href="{{ route('request.cancel',\Auth::user()->id) }}" class="" data-title="{{__('Cancle Request')}}" data-toggle="tooltip">
                                  <span class=""><i class="ti ti-x text-white "></i></span>
                              </a></span>
                                </li>
                                 </ul>
                          @endif
                      </div>
                  @endif
                </div>
                         @endif
                @elseif(\Auth::user()->plan == $plan->id && (empty(\Auth::user()->plan_expire_date) || date('Y-m-d') < \Auth::user()->plan_expire_date))
                    <p class="">
                        @if(!empty(\Auth::user()->plan_expire_date))
                            {{__('Plan Expires on ')}}- <b>{{  date('d M Y',strtotime(\Auth::user()->plan_expire_date))}}</b>
                        @else
                            <b>{{__('Unlimited')}}</b>
                        @endif
                    </p>
                @elseif((isset($paymentSetting['is_stripe_enabled']) && $paymentSetting['is_stripe_enabled'] == 'on') || (isset($paymentSetting['is_paypal_enabled']) && $paymentSetting['is_paypal_enabled'] == 'on') || (isset($paymentSetting['is_paystack_enabled']) && $paymentSetting['is_paystack_enabled'] == 'on') || (isset($paymentSetting['is_flutterwave_enabled']) && $paymentSetting['is_flutterwave_enabled'] == 'on') || (isset($paymentSetting['is_razorpay_enabled']) && $paymentSetting['is_razorpay_enabled'] == 'on') || (isset($paymentSetting['is_mercado_enabled']) && $paymentSetting['is_mercado_enabled'] == 'on') || (isset($paymentSetting['is_paytm_enabled']) && $paymentSetting['is_paytm_enabled'] == 'on') || (isset($paymentSetting['is_mollie_enabled']) && $paymentSetting['is_mollie_enabled'] == 'on') || (isset($paymentSetting['is_skrill_enabled']) && $paymentSetting['is_skrill_enabled'] == 'on') || (isset($paymentSetting['is_coingate_enabled']) && $paymentSetting['is_coingate_enabled'] == 'on'))
                    @if(\Auth::user()->is_trial_done == 0 && $plan->id != 1)
                         <button
                            class="btn mb-3 btn-light btn-primary  d-flex justify-content-center align-items-center mx-sm-5"
                          >
                           <a href="{{route('take.a.plan.trial',$plan->id)}}" class="text-white">
                                <i class="fas fa-cart-plus mr-2"></i>{{ __('Active Free Trial') }}
                            </a>
                          </button>
                    @endif
                    <div class="row">
                            <div class="col-8">
                          <button
                            class="btn mb-3 btn-primary d-flex justify-content-center align-items-center"
                          >
                             <a href="{{route('payment',['monthly', \Illuminate\Support\Facades\Crypt::encrypt($plan->id)])}}" id="interested_plan_{{ $plan->id }}" class="text-white">
                            <i class="ti ti-shopping-cart px-2 text-white"></i>{{ __('Subscribe') }}
                        </a>
                          </button>
                          </div>
                       @if($plan->id != 1 && \Auth::user()->plan != $plan->id)
                        <div class="col-4">
                          @if(\Auth::user()->requested_plan != $plan->id)
                              <ul class="list-unstyled">
                                <li>
                                  <span class="btn btn-primary btn-icon m-1">
                                    <a href="{{ route('send.request',[\Illuminate\Support\Facades\Crypt::encrypt($plan->id)]) }}" class="" data-title="{{__('Send Request')}}" data-toggle="tooltip">
                                  <span class=""><i class="ti ti-arrow-forward-up text-white"></i></span>

                              </a></span>
                                </li>
                              </ul>
                          @else
                            <ul class="list-unstyled">
                              <li>
                                  <span class="btn btn-danger btn-icon m-1">
                                   <a href="{{ route('request.cancel',\Auth::user()->id) }}" class="" data-title="{{__('Cancle Request')}}" data-toggle="tooltip">
                                  <span class=""><i class="ti ti-x text-white "></i></span>
                              </a></span>
                                </li>
                                 </ul>
                          @endif
                      </div>
                  @endif
                  </div>
                    @endif



            </div>
        @endif
        </div>
      </div>
    </div>
    @endforeach
</div>
</div>

          <div id="annual-billing" class="tab-pane">
               <div class="row">
               @foreach ($plans as $key => $plan)
             <div class="col-lg-3">
            <div
              class="card price-card price-1 wow animate__fadeInUp"
              data-wow-delay="0.4s"
              style="
                visibility: visible;
                animation-delay: 0.2s;
                animation-name: fadeInUp;
              "
            >
              <div class="card-body">
                <span class="price-badge bg-primary">{{ $plan->name }} </span>

               @if(\Auth::user()->type == 'user' && \Auth::user()->plan == $plan->id)
                <div class="d-flex flex-row-reverse m-0 p-0 ">
                    <span class="d-flex align-items-center ms-2">
                        <i class="f-10 lh-1 fas fa-circle text-success"></i>
                         <span class="ms-2"> {{ __('Active') }}</span>
                    </span>
                </div>
                @endif

                <span class="mb-4 f-w-600 p-price"
                  >{{ (env('CURRENCY_SYMBOL') ? env('CURRENCY_SYMBOL') : '$')}}{{ $plan->annual_price }}<small class="text-sm">/{{ __('Per Year') }}</small></span
                >
                <p class="mb-0">
                   {{ $plan->description }}
                </p>
                <ul class="list-unstyled my-5">
                  <li>
                    <span class="theme-avtar">
                      <i class=" text-primary ti ti-circle-plus"></i
                    ></span>
                  {{ ($plan->trial_days < 0)?__('Unlimited'):$plan->trial_days }} {{__('Trial Days')}}
                  </li>
                  <li>
                    <span class="theme-avtar">
                      <i class="text-primary ti ti-circle-plus"></i
                    ></span>
                    {{ ($plan->max_workspaces < 0)?__('Unlimited'):$plan->max_workspaces }} {{__('Workspaces')}}
                  </li>
                  <li>
                    <span class="theme-avtar">
                      <i class="text-primary ti ti-circle-plus"></i
                    ></span>
                   {{ ($plan->max_users < 0)?__('Unlimited'):$plan->max_users }} {{__('Users Per Workspace')}}
                  </li>
                  <li>
                    <span class="theme-avtar">
                      <i class="text-primary ti ti-circle-plus"></i
                    ></span>
                    {{ ($plan->max_clients < 0)?__('Unlimited'):$plan->max_clients }} {{__('Clients Per Workspace')}}
                  </li>
                  <li>
                    <span class="theme-avtar">
                      <i class="text-primary ti ti-circle-plus"></i
                    ></span>
                   {{ ($plan->max_projects < 0)?__('Unlimited'):$plan->max_projects }} {{__('Projects Per Workspace')}}
                  </li>
                </ul>
                  @if(Auth::user()->type != 'admin')
                <div class="d-grid text-center">

                   @if(\Auth::user()->plan == $plan->id && Auth::user()->is_trial_done == 1)
                  <button
                    class="btn mb-3 btn-light d-flex justify-content-center align-items-center btn-primary text-white mx-sm-5"
                  >
                       {{__('Trial Expires on ')}} <b> {{ (date('d M Y',strtotime(\Auth::user()->plan_expire_date))) }}</b>
                  </button>
                         @if((isset($paymentSetting['is_stripe_enabled']) && $paymentSetting['is_stripe_enabled'] == 'on') || (isset($paymentSetting['is_paypal_enabled']) && $paymentSetting['is_paypal_enabled'] == 'on') || (isset($paymentSetting['is_paystack_enabled']) && $paymentSetting['is_paystack_enabled'] == 'on') || (isset($paymentSetting['is_flutterwave_enabled']) && $paymentSetting['is_flutterwave_enabled'] == 'on') || (isset($paymentSetting['is_razorpay_enabled']) && $paymentSetting['is_razorpay_enabled'] == 'on') || (isset($paymentSetting['is_mercado_enabled']) && $paymentSetting['is_mercado_enabled'] == 'on') || (isset($paymentSetting['is_paytm_enabled']) && $paymentSetting['is_paytm_enabled'] == 'on') || (isset($paymentSetting['is_mollie_enabled']) && $paymentSetting['is_mollie_enabled'] == 'on') || (isset($paymentSetting['is_skrill_enabled']) && $paymentSetting['is_skrill_enabled'] == 'on') || (isset($paymentSetting['is_coingate_enabled']) && $paymentSetting['is_coingate_enabled'] == 'on'))
                         <div class="row">
                          <div class="col-8">
                         <button
                            class="btn mb-3 btn-primary d-flex justify-content-center align-items-center"
                          >
                             <a href="{{route('payment',['annual', \Illuminate\Support\Facades\Crypt::encrypt($plan->id)])}}" id="interested_plan_{{ $plan->id }}" class=""> <i class="ti ti-shopping-cart px-2"></i>{{ __('Subscribe') }}</a>
                          </button>
                        </div>
                          @if($plan->id != 1 && \Auth::user()->plan != $plan->id)
                        <div class="col-4">
                          @if(\Auth::user()->requested_plan != $plan->id)
                              <ul class="list-unstyled">
                                <li>
                                  <span class="btn btn-primary btn-icon m-1">
                                    <a href="{{ route('send.request',[\Illuminate\Support\Facades\Crypt::encrypt($plan->id)]) }}" class="" data-title="{{__('Send Request')}}" data-toggle="tooltip">
                                  <span class=""><i class="ti ti-arrow-forward-up text-white"></i></span>

                              </a></span>
                                </li>
                              </ul>
                          @else
                            <ul class="list-unstyled">
                              <li>
                                  <span class="btn btn-danger btn-icon m-1">
                                   <a href="{{ route('request.cancel',\Auth::user()->id) }}" class="" data-title="{{__('Cancle Request')}}" data-toggle="tooltip">
                                  <span class=""><i class="ti ti-x text-white "></i></span>
                              </a></span>
                                </li>
                                 </ul>
                          @endif
                      </div>
                  @endif
                </div>
                         @endif
                  @elseif(\Auth::user()->plan == $plan->id && (empty(\Auth::user()->plan_expire_date) || date('Y-m-d') < \Auth::user()->plan_expire_date))
                    <p class="">
                       @if(!empty(\Auth::user()->plan_expire_date))
                        {{__('Plan Expires on ')}} <b>{{  date('d M Y',strtotime(\Auth::user()->plan_expire_date))}}</b>
                       @else
                        <b>{{__('Unlimited')}}</b>
                       @endif
                    </p>


                     @elseif((isset($paymentSetting['is_stripe_enabled']) && $paymentSetting['is_stripe_enabled'] == 'on') || (isset($paymentSetting['is_paypal_enabled']) && $paymentSetting['is_paypal_enabled'] == 'on') || (isset($paymentSetting['is_paystack_enabled']) && $paymentSetting['is_paystack_enabled'] == 'on') || (isset($paymentSetting['is_flutterwave_enabled']) && $paymentSetting['is_flutterwave_enabled'] == 'on') || (isset($paymentSetting['is_razorpay_enabled']) && $paymentSetting['is_razorpay_enabled'] == 'on') || (isset($paymentSetting['is_mercado_enabled']) && $paymentSetting['is_mercado_enabled'] == 'on') || (isset($paymentSetting['is_paytm_enabled']) && $paymentSetting['is_paytm_enabled'] == 'on') || (isset($paymentSetting['is_mollie_enabled']) && $paymentSetting['is_mollie_enabled'] == 'on') || (isset($paymentSetting['is_skrill_enabled']) && $paymentSetting['is_skrill_enabled'] == 'on') || (isset($paymentSetting['is_coingate_enabled']) && $paymentSetting['is_coingate_enabled'] == 'on'))
                     @if(\Auth::user()->is_trial_done == 0 && $plan->id != 1)
                         <button
                            class="btn mb-3 btn-light btn-primary  d-flex justify-content-center align-items-center mx-sm-5"
                          >
                           <a href="{{route('take.a.plan.trial',$plan->id)}}" class="text-white">
                                <i class="fas fa-cart-plus mr-2"></i>{{ __('Active Free Trial') }}
                            </a>


                          </button>
                    @endif
                    <div class="row">
                      <div class="col-8">
                          <button
                            class="btn mb-3 btn-primary d-flex justify-content-center align-items-center"
                          >
                             <a href="{{route('payment',['annual', \Illuminate\Support\Facades\Crypt::encrypt($plan->id)])}}" id="interested_plan_{{ $plan->id }}" class="text-white">
                            <i class="ti ti-shopping-cart px-2 text-white"></i>{{ __('Subscribe') }}
                        </a>
                          </button>
                        </div>
                           @if($plan->id != 1 && \Auth::user()->plan != $plan->id)
                        <div class="col-4">
                          @if(\Auth::user()->requested_plan != $plan->id)
                              <ul class="list-unstyled">
                                <li>
                                  <span class="btn btn-primary btn-icon m-1">
                                    <a href="{{ route('send.request',[\Illuminate\Support\Facades\Crypt::encrypt($plan->id)]) }}" class="" data-title="{{__('Send Request')}}" data-toggle="tooltip">
                                  <span class=""><i class="ti ti-arrow-forward-up text-white"></i></span>

                              </a></span>
                                </li>
                              </ul>
                          @else
                            <ul class="list-unstyled">
                              <li>
                                  <span class="btn btn-danger btn-icon m-1">
                                   <a href="{{ route('request.cancel',\Auth::user()->id) }}" class="" data-title="{{__('Cancle Request')}}" data-toggle="tooltip">
                                  <span class=""><i class="ti ti-x text-white "></i></span>
                              </a></span>
                                </li>
                                 </ul>
                          @endif
                      </div>
                  @endif
                </div>
                    @endif


            </div>
        @endif
        </div>
      </div>
    </div>
    @endforeach
      </div>
    </div>
  </div>
</div>
</div>
</div>
@endsection

@push('scripts')
    <script>
        $(document).ready(function () {
            var tohref = '';
            @if(Auth::user()->is_register_trial == 1)
                tohref = $('#trial_{{ Auth::user()->interested_plan_id }}').attr("href");
            @elseif(Auth::user()->interested_plan_id != 0)
                tohref = $('#interested_plan_{{ Auth::user()->interested_plan_id }}').attr("href");
            @endif

            if (tohref != '') {
                window.location = tohref;
            }
        });
    </script>
@endpush
