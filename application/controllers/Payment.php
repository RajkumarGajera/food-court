<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
    class Payment extends MY_Controller 
    {
         function  __construct(){
            parent::__construct();
            $this->load->library('paypal_lib');
            $this->config->load('stripe_config');
            $this->load->model('payment_m');
            is_login();
         }

        public function index($slug,$account_slug)
        {
            $data = array();
            $data['page_title'] = "Payment Method";
            $data['page'] = "Payment";
            $data['account_type'] = $account_slug;
            $data['account_slug'] = $account_slug;
            $data['slug'] = $slug;
            $data['u_info'] = get_all_user_info_slug($slug);
            $data['package'] = $this->admin_m->get_package_info_by_slug($account_slug);


            $paytm = $this->payment_m->paytm_init($slug,$account_slug,'admin');
            $data['paytm_init'] = $paytm;

            $mercado = $this->payment_m->mercado_init($slug,$account_slug);
            $data['init'] = $mercado['init'];

            $data['main_content'] = $this->load->view('backend/payments/payment_gateway', $data, TRUE);
            $this->load->view('backend/index',$data);
        }

         
         function success($slug,$account_slug){
            $data = array();
             $statusMsg='';
         	//get payment data from paypal url
         	$paypalInfo = $this->input->get();
            
            $settings = settings();
            $package_info = get_package_info_by_slug($account_slug); //get package info by slug
            $u_info = get_all_user_info_slug($slug); //get user info by id from paypal url

            $data_info = array(
            	'user_id' => $u_info['user_id'],
            	'account_type' =>$package_info['id'],
            	'price' => $paypalInfo["amt"],
            	'currency_code' => $paypalInfo["cc"],
            	'status' => $paypalInfo["st"],
            	'txn_id' => $paypalInfo["tx"],
                'payment_type' =>1,
            	'created_at' => d_time(),
            );
            $insert = $this->common_m->insert($data_info,'payment_info');
            
            if($insert):
                $statusMsg .= '<h4>Thanks for your Payment!</h4>';
                $statusMsg .= '<h5>The transaction was successful. Transaction details are given below:</h5>';
                $statusMsg .= "<p>Package: {$package_info['package_name']}</p>";
                $statusMsg .= "<p>Transaction ID: {$paypalInfo["tx"]}</p>";
                $statusMsg .= "<p>Total: {$paypalInfo["amt"]} {$paypalInfo["cc"]}</p>";

            	$this->common_m->update(array('is_payment'=>1,'is_expired'=>0,'is_request'=>0,'start_date'=>d_time(),'end_date'=>add_year($package_info['package_type']),'account_type'=>$package_info['id']),$u_info['user_id'],'users');

	            if(round($u_info['price']) == round($paypalInfo["amt"])){

	            	$this->email_m->send_payment_verified_email($data_info,'Paypal'); // send payment transaction succesfull mail with transaction_id
                    
                    $this->session->set_flashdata('payment_msg', $statusMsg);
	            }else{
	            	$statusMsg = 'Somethings were wrong!!';
                    $this->session->set_flashdata('payment_error', $statusMsg);
	            }
	        endif;
            
            redirect(base_url('stripe-payment-success/'.$u_info['username']));
         }

         
         //paypal payment cancel
         function cancel($slug=''){
            if(isset($_GET['slug'])){
                $slug = $_GET['slug'];
            }else{
                $slug = $slug;
            }
         	$this->session->set_flashdata('payment_error', 'Payment cancel');
            redirect(base_url('stripe-payment-success/'.$slug));
         }


/* *******  Razorpay payment method **********
================================================== */
         function razorpay_payment(){
            $statusMsg = '';
            $data = array();

            if (!empty($this->input->post('razorpay_payment_id'))) {
            //get payment data from paypal url
            $razorpay_payment_id = $this->input->post('razorpay_payment_id');
            $package_id = $this->input->post('product_id');
            $settings = settings();
            $package_info = get_package_info_by_id($package_id); //get package info by id
            $u_info = get_all_user_info_slug($this->input->post('username')); //get user info by id from paypal url
           

            $amount = $this->input->post('totalAmount');

            $keys = array(
                'key_id' => $settings['razorpay_key_id'],
                'secret_key' => $settings['razorpay_key'],
            );


            $data = array(
                'amount' => $amount*100,
                'currency' => get_currency('currency_code'),
            );

            $success = false;
            $error = '';

            try {                
                $ch = $this->curl_handler($razorpay_payment_id, $data,$keys);
                    //execute post
                $result = curl_exec($ch);

                $http_status = curl_getinfo($ch, CURLINFO_HTTP_CODE);

                if ($result === false) {
                    $success = false;
                    $error = 'Curl error: '.curl_error($ch);
                } else {
                    $response_array = json_decode($result, true);
                            //Check success response
                    if ($http_status === 200 and isset($response_array['error']) === false) {
                        $success = true;
                    } else {
                        $success = false;
                        if (!empty($response_array['error']['code'])) {
                            $error = $response_array['error']['code'].':'.$response_array['error']['description'];
                        } else {
                            $error = 'RAZORPAY_ERROR:Invalid Response <br/>'.$result;
                        }
                    }
                }
                    //close curl connection
                curl_close($ch);
            } catch (Exception $e) {
                $success = false;
                $error = 'Request to Razorpay Failed';
                echo json_encode(['st'=>0,'msg'=>$$error]);
            }

            if ($success === true) {
                $payment_data = array(
                    'user_id' => $u_info['user_id'],
                    'account_type' => $package_info['id'],
                    'price' => $amount,
                    'currency_code' => 'INR',
                    'txn_id' => $razorpay_payment_id,
                    'status' => 'Authorized',
                    'payment_type' => 'razorpay',
                    'created_at' => d_time(),
               );
                 $insert = $this->common_m->insert($payment_data,'payment_info');

                 if($insert):
                    $statusMsg .= '<h4>Thanks for your Payment!</h4>';
                    $statusMsg .= '<h5>The transaction was successful. Transaction details are given below:</h5>';
                    $statusMsg .= "<p>Package: {$package_info['package_name']}</p>";
                    $statusMsg .= "<p>Transaction ID: {$razorpay_payment_id}</p>";
                    $statusMsg .= "<p>Total: {$amount} INR</p>";


                    $this->common_m->update(array('is_payment'=>1,'is_expired'=>0,'is_request'=>0,'start_date'=>d_time(),'end_date'=>add_year($package_info['package_type']),'account_type'=>$package_info['id']),$u_info['user_id'],'users');

                    $this->session->set_flashdata('payment_msg', $statusMsg);
                    $data['status'] = 1;
                    $data['msg'] = $statusMsg;
                    echo json_encode($data);
                endif;

            } else {
                $msg = 'Payment Canceled';
                echo json_encode(['st'=>0,'msg'=>$msg]);
            } //success === true


            }else{
                 $msg = 'An error occured. Contact site administrator, please!';
                 echo json_encode(['st'=>0,'msg'=>$msg]);
            } 
            
        }
         

        private function curl_handler($payment_id, $data, $keys)  {
            $url            = 'https://api.razorpay.com/v1/payments/'.$payment_id.'/capture';
            $key_id         = $keys['key_id'];
            $key_secret     = $keys['secret_key'];
            $params = http_build_query($data);
                //cURL Request
            $ch = curl_init();
                //set the url, number of POST vars, POST data
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_USERPWD, $key_id.':'.$key_secret);
            curl_setopt($ch, CURLOPT_TIMEOUT, 60);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
            return $ch;
        }  


    /* ************* Start stripe Payment
    ================================================== */
    public function stripe_payment($slug,$account_slug)
    {
        $data = array();
        $data['page_title'] = "Stripe Payment";
        $data['page'] = "Payment";
        $data['slug'] = $slug;
        if(empty($slug)){
            redirect(base_url('404'));
        }
        $data['account_type'] = $account_slug;
        $data['u_info'] = get_all_user_info_slug($slug);
        
        $data['package'] = $this->admin_m->get_package_info_by_slug($account_slug);
        $data['main_content'] = $this->load->view('backend/payments/stripe_payment_form', $data, TRUE);
        $this->load->view('backend/index',$data);
        
    }


    public function stripe_success($slug)
    {
        $data = array();
        $data['page_title'] = "Payment success";
        $data['page'] = "Payment";
        $data['slug'] = $slug;
        $data['msg'] = $this->session->flashdata('payment_msg')?$this->session->flashdata('payment_msg'):'';
        $data['u_info'] = get_all_user_info_slug($slug);
        $data['main_content'] = $this->load->view('backend/payments/payment_success', $data, TRUE);
        $this->load->view('backend/index',$data);
        
    }

    public function payment()
    {
        $data = array();   
        $statusMsg =''; 

        if(!empty($this->input->post('stripeToken'))) {                                                             
            $amount = $this->input->post('amount');
            $package_id = $this->input->post('package_id');
            $username = $this->input->post('username');
            $name = $this->input->post('stripe_name');
            $email = $this->input->post('stripe_email');

            $u_info = get_all_user_info_slug($username);
            $package_info = $this->admin_m->get_package_info_by_id($package_id);


            $params = array(
                'amount' => $amount * 100,
                'currency' => CURRENCY_CODE,
                'description' => 'Charge for '.$this->settings['site_name'].' Registrations',
                'source' => $this->input->post('stripeToken'),
                'metadata' => array( 
                'product_id' => $package_id,
                )
            );
            $jsonData = $this->get_curl_handle($params);
            $resultJson = json_decode($jsonData, true);
            if($resultJson['amount_refunded'] == 0 && empty($resultJson['failure_code']) && $resultJson['paid'] == 1 && $resultJson['captured'] == 1){ 
            // Order details  
            $transactionID = $resultJson['balance_transaction']; 
            $currency = $resultJson['currency']; 
            $payment_status = $resultJson['status'];
            $amount_captured = $resultJson['amount_captured']/100;


             // If the order is successful 
            if($payment_status == 'succeeded') { 
                $statusMsg .= '<h4>Thanks for your Payment!</h4>';
                $statusMsg .= '<h5>The transaction was successful. Transaction details are given below:</h5>';
                $statusMsg .= "<p>Package: {$package_info['package_name']}</p>";
                $statusMsg .= "<p>Transaction ID: {$transactionID}</p>";
                $statusMsg .= "<p>Total: {$amount} {$currency}</p>";

                $data = array(
                    'user_id' => $u_info['user_id'],
                    'account_type' => $package_info['id'],
                    'price' => $amount_captured,
                    'currency_code' => $currency,
                    'txn_id' => $transactionID,
                    'status' => $payment_status,
                    'payment_type' => 'stripe',
                    'created_at' => d_time(),
                );
                $insert = $this->common_m->insert($data,'payment_info');
                
                if($insert):  
                  
                  $this->common_m->update(array('is_payment'=>1,'is_expired'=>0,'is_request'=>0,'start_date'=>d_time(),'end_date'=>add_year($package_info['package_type']),'account_type'=>$package_id,'is_request'=>0),$u_info['user_id'],'users');

                   $this->email_m->send_payment_verified_email($data,'Stripe'); // send payment transaction succesfull mail with transaction id
                    $this->session->set_flashdata('success_msg', $statusMsg);
                    redirect(base_url('payment/successMsg/'.$u_info['username']));
                    exit();
                endif;
            }else{ 
                $statusMsg = "Your Payment has Failed!"; 
                $this->session->set_flashdata('payment_error', $statusMsg);
            } 

            } else { 
                $statusMsg = isset($resultJson['message'])?$resultJson['message']:"Transaction has been failed!"; 
                $this->session->set_flashdata('payment_error', $statusMsg);
            }
         } else { 
                $statusMsg = "Error on form submission."; 
                $this->session->set_flashdata('payment_error', $statusMsg);
        }  

        redirect(base_url('stripe-payment-success/'.$u_info['username']));
        
       
    }

    // get curl handle method
    private function get_curl_handle($data) {
        $url = 'https://api.stripe.com/v1/charges';
        $key_secret = $this->config->item('secret_key');
        //cURL Request
        $ch = curl_init();
        //set the url, number of POST vars, POST data
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_USERPWD, $key_secret);
        curl_setopt($ch, CURLOPT_TIMEOUT, 60);
        curl_setopt($ch, CURLOPT_POST, 1);
        $params = http_build_query($data);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
        $output = curl_exec ($ch);
        return $output;
    }


    /* end stripe payment
    ================================================== */

    

    /*********  Offline Payment
    ================================================== */

    public function offline_payment($slug,$account_slug)
    {
        $statusMsg = '';
        $data = array();
        $data['page_title'] = "Offline Payment";
        $data['slug'] = $slug;
        $data['page'] = 'Payment';
        $txn_id = 'op-'.random_string('alnum',4).'-'.random_string('numeric',4);
        $currency = CURRENCY_CODE;
        
        $u_info = get_all_user_info_slug($slug);
        $send = $this->email_m->offline_payment_request_mail($slug,$account_slug,$txn_id);
        if($send){
            $package_info = get_package_info_by_slug($account_slug);
            $off_data = array(
                'txn_id' => $txn_id,
                'username' => $slug,
                'user_id' => $u_info['user_id'],
                'email' => $u_info['email'],
                'package' => $package_info['package_name'],
                'price' => $package_info['price'],
                'status' => 0,
                'created_at' => d_time(),
            ); 
            $this->admin_m->insert($off_data,'offline_payment');


            $user_data = array(
                'is_request' =>1,
                'is_payment' =>0,
                'account_type' =>$package_info['id'],
            );
            $this->admin_m->update($user_data,$u_info['user_id'],'users');

            $statusMsg .= '<h4>Thanks for your Payment Request!</h4>';
            $statusMsg .= '<h5>Payement Request details are given below:</h5>';
            $statusMsg .= "<p>Package: {$package_info['package_name']}</p>";
            $statusMsg .= "<p>Request ID: {$txn_id}</p>";
            $statusMsg .= "<p>Total: {$package_info['price']} {$currency}</p>";
            $this->session->set_flashdata('success_msg', $statusMsg);
            redirect(base_url('payment/successMsg/'.$u_info['username']));
            exit();
        }else{
            $statusMsg = 'Somethings Were Wrong!! Try again';
            $this->session->set_flashdata('payment_error', $statusMsg);
        }
        redirect(base_url('payment/successMsg/'.$u_info['username']));
    }


    public function send_success($slug,$account_slug,$data){
        $statusMsg = '';
        $package_info = get_package_info_by_slug($account_slug); //get package info by slug
        $u_info = get_all_user_info_slug($slug); 
        $data_info = array(
            'user_id' => $u_info['user_id'],
            'account_type' =>$package_info['id'],
            'price' => $data['amount'],
            'currency_code' => $data['currency'],
            'status' => $data['status'],
            'txn_id' => $data['txn_id'],
            'payment_type' =>$data['payment_type'],
            'all_info' =>json_encode($data['all_info']),
            'created_at' => d_time(),
        );

        $insert = $this->common_m->insert($data_info,'payment_info');
        if($insert):
            $statusMsg .= '<h4>Thanks for your Payment!</h4>';
            $statusMsg .= '<h5>The transaction was successful. Transaction details are given below:</h5>';
            $statusMsg .= "<p>Package: {$package_info['package_name']}</p>";
            $statusMsg .= "<p>Transaction ID: {$data['txn_id']}</p>";
            $statusMsg .= "<p>Total: {$data['amount']} {$data['currency']}</p>";

            $this->common_m->update(array('is_payment'=>1,'is_expired'=>0,'is_request'=>0,'start_date'=>d_time(),'end_date'=>add_year($package_info['package_type']),'account_type'=>$package_info['id']),$u_info['user_id'],'users');

             $this->email_m->send_payment_verified_email($data_info,$data['payment_type']); // send payment transaction succesfull mail with transaction_id
            $this->session->set_flashdata('success_msg', $statusMsg);
            redirect(base_url('payment/successMsg/'.$u_info['username']));
        endif;
        
        
    }

    public function successMsg($slug)
    {
        $data = array();
        $data['page_title'] = "Payment success";
        $data['page'] = "Payment";
        $data['slug'] = $slug;
        $data['msg'] = $this->session->flashdata('success_msg')?$this->session->flashdata('success_msg'):'';
        $data['u_info'] = get_all_user_info_slug($slug);
        $data['main_content'] = $this->load->view('backend/payments/success_msg', $data, TRUE);
        $this->load->view('backend/index',$data);
        
    }

    public function send_failed($slug,$account_slug,$data){
        $statusMsg = '';
        $package_info = get_package_info_by_slug($account_slug); //get package info by slug
        $u_info = get_all_user_info_slug($slug); 
        $data_info = array(
            'user_id' => $u_info['user_id'],
            'account_type' =>$package_info['id'],
            'price' => !empty($data['amount'])?$data['amount']:$package_info['price'],
            'currency_code' => !empty($data['currency'])?$data['currency']:get_currency('currency_code'),
            'status' => 'failed',
            'txn_id' => $data['txn_id'],
            'payment_type' =>$data['payment_type'],
            'all_info' =>json_encode($data['all_info']),
            'created_at' => d_time(),
        );

        $insert = $this->common_m->insert($data_info,'payment_info');
        if($insert):
            $statusMsg .= '<h4>Sorry Payment Failed</h4>';
            $statusMsg .= '<h5>The transaction was unsuccessful. Transaction details are given below:</h5>';
            $statusMsg .= "<p>Package: {$package_info['package_name']}</p>";
            $statusMsg .= "<p>Transaction ID: {$data['txn_id']}</p>";
            $statusMsg .= "<p>Total: {$data['amount']} {$data['currency']}</p>";
            $this->session->set_flashdata('payment_error', $statusMsg);
            redirect(base_url('stripe-payment-success/'.$u_info['username']));
        endif;
    }

    public function paytm_verify(){
        $mkey = $_GET['key'];
        require_once("vendor/paytm/paytmchecksum/PaytmChecksum.php");
        $checksum = (!empty($_POST['CHECKSUMHASH'])) ? $_POST['CHECKSUMHASH'] : '';
        unset($_POST['CHECKSUMHASH']);
        $verifySignature = PaytmChecksum::verifySignature($_POST, $mkey, $checksum);
        if($verifySignature){
            $data = array(
                'currency' =>$_POST['CURRENCY'],
                'amount' =>$_POST['TXNAMOUNT'],
                'txn_id' => $_POST['TXNID'],
                'status' => $_POST['STATUS'],
                'payment_type' => 'paytm',
                'all_info' => json_encode(['bank_name'=>$_POST['BANKNAME'],'bank_txn_id'=>$_POST['BANKTXNID'],'gateway'=>$_POST['GATEWAYNAME'],'payment_mode'=>$_POST['PAYMENTMODE']]),
            );
             $this->send_success($_GET['slug'],$_GET['account_slug'],$data);
        }else{
            $this->send_failed($_GET['slug'],$_GET['account_slug'],$data);
        }
    }


    public function stripe_fpx(){
        $settings = settings();
        $stripe_fpx = json_decode($settings['fpx_config']);
        $stripe = $this->input->get();
        \Stripe\Stripe::setApiKey($stripe_fpx->fpx_secret_key);

            $intent = \Stripe\PaymentIntent::retrieve($stripe['payment_intent']); //PAYMENT_INTENT_ID
            $charges = $intent->charges->data;
        if($stripe['redirect_status']=="succeeded"):
            $bank_name = $charges[0]->payment_method_details->fpx->bank;
            $bank_txn = $charges[0]->payment_method_details->fpx->transaction_id;
            $data = array(
                'currency' =>$charges[0]->currency,
                'amount' =>$charges[0]->amount_captured/100,
                'txn_id' => $charges[0]->balance_transaction,
                'status' => $charges[0]->status,
                'payment_type' => 'stripe_fpx',
                'all_info' => json_encode(['bank_name'=>$bank_name,'bank_txn_id'=>$bank_txn]),
            );
            $this->send_success($stripe['slug'],$stripe['account_slug'],$data);
        elseif($stripe['redirect_status']=="failed"):
             $this->send_failed($_GET['slug'],$_GET['account_slug'],$data);
        endif;

    }

    public function mercado(){
        $settings = settings();
        $mercado = !empty($settings['mercado_config'])?json_decode($settings['mercado_config']):'';

        $respuesta = array(
            'Payment' => $_GET['payment_id'],
            'Status' => $_GET['status'],
            'MerchantOrder' => $_GET['merchant_order_id']        
        ); 
        MercadoPago\SDK::setAccessToken($mercado->access_token);
        $merchant_order = $_GET['payment_id'];

        $payment = MercadoPago\Payment::find_by_id($merchant_order);
        $merchant_order = MercadoPago\MerchantOrder::find_by_id($payment->order->id);

        $data = array(
            'currency' =>$payment->currency_id,
            'amount' =>$payment->transaction_details->total_paid_amount,
            'txn_id' => $_GET['preference_id'],
            'status' => $payment->status,
            'payment_type' => 'mercadopago',
            'all_info' => $merchant_order->payments,
        );
        $this->send_success($_GET['slug'],$_GET['account_slug'],$data);
        exit();


        $paid_amount = 0;
        foreach ($merchant_order->payments as $payment) {   
            if ($payment['status'] == 'approved'){
                $paid_amount += $payment['transaction_amount'];
            }
        }
        echo "<pre>";print_r($merchant_order->payments);exit();
    // If the payment's transaction amount is equal (or bigger) than the merchant_order's amount you can release your items
        if($paid_amount >= $merchant_order->total_amount){
                if (count($merchant_order->shipments)>0) { // The merchant_order has shipments
                    if($merchant_order->shipments[0]->status == "ready_to_ship") {
                        print_r("Totally paid. Print the label and release your item.");
                    }
                } else { // The merchant_order don't has any shipments
                print_r("Totally paid. Release your item.");
            }
        } else {
            print_r("Not paid yet. Do not release your item.");
        }

        echo "<pre>";print_r($_GET);exit();


    }


/*----------------------------------------------
FLUTTERWAVE
----------------------------------------------*/



    public function flutterwave_create_transaction()
    {
        $post = $_POST;
        $data = array(
            'amount'=>$post['amount'],
            'customer_email' => $post['customer_email'],
            'redirect_url'=>base_url("payment/flutterwave_payment_status/?slug={$post['slug']}&account_slug={$post['account_slug']}"),
            'payment_plan'=>$post['payment_plan'],
            'csrf_test_name' =>$this->security->get_csrf_hash(),
            'slug' =>$post['slug'],
            'account_slug' =>$post['account_slug'],
        );
        $this->response = $this->payment_m->create_flutterwave_payment($data);
     
        if(!empty($this->response) || $this->response != ''){
            $this->response = json_decode($this->response,1);
            if(isset($this->response['status']) && $this->response['status'] == 'success'){
                redirect($this->response['data']['link']);
            }else{
                $this->session->set_flashdata('message_type', 'danger');
                $this->session->set_flashdata('message', 'API returned error >> '.$this->response['message']);
                redirect(base_url('flutterwave/'));
            }
        }
    }
    public function flutterwave_payment_status()
    {
        $params = $this->input->get();
        if(empty($params)){
            $paymentData = array(
                'currency'=> get_currency('currency_code'),
                'amount' => '',
                'txn_id' => '1254879287',
                'status' => 'error',
                'payment_type' => 'flutterwave',
                'all_info' => json_encode([]),
            );

            $this->send_failed($_GET['slug'],$_GET['account_slug'],$paymentData); 
            
        }elseif(isset($params['txref']) && !empty($params['txref'])){
            $response = $this->payment_m->verify_transaction($params['txref']);
            if(!empty($response)){
                $response = json_decode($response,1);
                if($response['status'] == 'success' && isset($response['data']['chargecode']) && ( $response['data']['chargecode'] == '00' || $response['data']['chargecode'] == '0') ){
                    
                    $data['payment_plan']    = $response['data']['paymentplan'];
                    $data['customer_email']         = $response['data']['custemail'];
                    $data['txn_id']         = $response['data']['txref'];
                    $data['amount']    = $response['data']['amount'];
                    $data['currency_code']  = $response['data']['currency'];
                    $data['status']         = $response['data']['status'];
                    $data['message']        = $response['message'];
                    $data['full_data']      = $response;
                    $paymentData = array(
                        'currency'=>$response['data']['currency'],
                        'amount' => $response['data']['amount'],
                        'txn_id' => $response['data']['txref'],
                        'status' => $response['data']['status'],
                        'payment_type' => 'flutterwave',
                        'all_info' => json_encode(['customer_email'=>$response['data']['custemail'],'narration'=>$response['data']['narration'],'ip'=>$response['data']['custemail'],'txid'=>$response['data']['custemail']]),
                    );
                    $this->send_success($_GET['slug'],$_GET['account_slug'],$paymentData); 

                }elseif( (isset($params['cancelled']) && $params['cancelled'] == true)){
                    $paymentData = array(
                        'currency'=> get_currency('currency_code'),
                        'amount' => '',
                        'txn_id' => '1254879287',
                        'status' => 'cancelled',
                        'payment_type' => 'flutterwave',
                        'all_info' => json_encode([]),
                    );
                     $this->send_failed($_GET['slug'],$_GET['account_slug'],$paymentData); 

                }elseif( $response['status'] == 'error'){
                    $paymentData = array(
                        'currency'=>$response['data']['currency'],
                        'amount' => $response['data']['amount'],
                        'txn_id' => $response['data']['txref'],
                        'status' => $response['data']['status'],
                        'payment_type' => 'flutterwave',
                        'all_info' => json_encode(['customer_email'=>$response['data']['custemail'],'narration'=>$response['data']['narration'],'ip'=>$response['data']['custemail'],'txid'=>$response['data']['custemail']]),
                    );
                    $this->send_failed($_GET['slug'],$_GET['account_slug'],$paymentData);  $this->load->view('flutterwave/payment_status',$data);
                }
            }else{
                $paymentData = array(
                        'currency'=> get_currency('currency_code'),
                        'amount' => '',
                        'txn_id' => '1254879287',
                        'status' => 'error',
                        'payment_type' => 'flutterwave',
                        'all_info' => json_encode([]),
                    );
                
                $this->send_failed($_GET['slug'],$_GET['account_slug'],$paymentData); 
            }
        }
    }










         
    }
?>