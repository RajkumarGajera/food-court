<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kds extends MY_Controller {

	public function __construct(){
		parent::__construct();
	}

	public function live($id)
	{
		$data = array();
		$data['page_title'] = "KDS";
        $data['page'] = "KDS";
        $data['data'] = false;
        $data['shop'] = $this->admin_m->get_shop_profile_md5($id);
        $data['id'] = $data['shop']['id'];
        $data['order_list'] = $this->admin_m->get_my_today_order_list_by_kds_id($id);
        $data['dine_list'] = $this->admin_m->get_my_todays_dine($data['id']);
		$data['main_content'] = $this->load->view('backend/restaurant/kds_live', $data, TRUE);
		$this->load->view('backend/kds_index',$data);
	}

/*----------------------------------------------
	change order start from quick view
----------------------------------------------*/
public function order_status_by_ajax($id,$shop_id,$status)
{
	if($status==1){
		//start preparing by kitchen
		$time_data = array(
			'is_preparing' => 1,
		);
		
		$this->admin_m->update($time_data,$id,'order_user_list');
		$data = array(
			'status' => $status,
		);
		$change = $this->admin_m->update_kds_by_type($data,$id,$shop_id,'order_user_list');

	}elseif($status==2){
		$date = 'completed_time';
		$data = array(
			'status' => $status,
			$date => d_time(),
		);
		$change = $this->admin_m->update_kds_by_type($data,$id,$shop_id,'order_user_list');

	}elseif($status==3){
		$date = 'cancel_time';
		$data = array(
			'status' => $status,
			$date => d_time(),
		);
		$change = $this->admin_m->update_kds_by_type($data,$id,$shop_id,'order_user_list');
	}elseif($status==4){
		$time_data = array(
			'is_preparing' => 2,
			'status' =>1
		);
		$change = $this->admin_m->update($time_data,$id,'order_user_list');
	}
	
	if($change){
		$data = [];
		$data['shop'] = $this->admin_m->get_shop_profile_md5($shop_id);
		$data['id'] = $data['shop']['id'];
        $data['order_list'] = $this->admin_m->get_my_today_order_list_by_kds_id($shop_id);
        $data['dine_list'] = $this->admin_m->get_my_todays_dine($data['id']);
		$load_view = $this->load->view('backend/restaurant/kds_details', $data,true);
		echo json_encode(['st'=>1,'load_data'=>$load_view]);
	}
}

public function get_new_order($id)
{
	$data = [];
	$data['id'] = $id;
	 $data['shop'] = $this->admin_m->get_shop_profile_md5(md5($id));
     $data['id'] = $data['shop']['id'];
     $count_notify = $this->admin_m->get_new_kds_order($id);
	 $data['order_list'] = $this->admin_m->get_my_today_order_list_by_kds_id(md5($id)); 
	 $data['dine_list'] = $this->admin_m->get_my_todays_dine($id);
	 $load_view = $this->load->view('backend/restaurant/kds_details', $data,true);
	if($count_notify >0 ):
		echo json_encode(['st'=>1,'load_data'=>$load_view]);
	else:
		echo json_encode(['st'=>0,'load_data'=>'']);
	endif;
	
	
}








}