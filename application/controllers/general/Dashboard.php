<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller {
	public function get_data()
	{
		$data['account']	=	$this->get_user_account();
		$this->load->model('Dashboard_Model', 'mod_db');
		$data['menu']	=	$this->mod_db->get_menu();

		$this->my_view(['role/general/page/dashboard/index_page/index','role/general/page/dashboard/index_page/js'],$data);
	}

}
