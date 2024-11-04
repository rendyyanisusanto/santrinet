<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class users extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Users (Role Access)',
			'table'				=>	'users',
			'column'			=>	[ 'name','description'],
			'column_order'		=>	[ 'id','name','description'],
			'column_search'		=>	[ 'id','name','description'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/users'
	];

	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['groups']		=	$this->my_where('groups', [])->result_array();
		$data['karyawan']		=	$this->my_where('karyawan', ['status'=>1])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}
	public function edit_user_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['groups']		=	$this->my_where('groups', [])->result_array();
		$data['karyawan']		=	$this->my_where('karyawan', ['status'=>1])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_user_page/index',$data['param']['parents_link'].'/edit_user_page/js'],$data);
	}
	function import_page(){
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/import_page/index',$data['param']['parents_link'].'/import_page/js'],$data);
	}
	function get_details($id){
		try {
			if(isset($id)){
				$data['param'] 		= 	$this->arr;
				$menu 				=	$this->my_where('menu', [])->result_array();
				$data['menu']		=	[];
				foreach ($menu as $value) {
					$datasubmenu = $this->my_where('submenu', ['menu_id'=>$value['id']])->result_array();
					$submenu = [];
					foreach ($datasubmenu as $value_submenu) {
						$c 	=	$this->my_where('groups_detail', ['groups_id' => $id, 'submenu_id'=> $value_submenu['id']])->row_array();
						$submenu[]	=	[
							'submenu' => $value_submenu,
							'c' => ((!empty($c)) ? $c['c'] : 0),
							'r' => ((!empty($c)) ? $c['r'] : 0),
							'u' => ((!empty($c)) ? $c['u'] : 0),
							'd' => ((!empty($c)) ? $c['d'] : 0),
							'id'=>	$c['id']
						];
					}

					$data['menu'][]	=	[
						'menu' => $value,
						'submenu' => $submenu
					];
				}

				$this->my_view([$data['param']['parents_link'].'/add_page/detail'],$data);
			}
		} catch (Exception $e) {
			
		}
	}
	public function edit_page($id = ""){
		if (!empty($id)) {
			$data['param'] 		= 	$this->arr;
			$data['id']			=	$id;
			$data['groups']		=	$this->my_where('groups', [])->result_array();
			$data['group_id']	=	$this->my_where('users_groups', ['user_id'=>$id])->row_array();
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();
			if (!empty($data['data_edit'])) {
				// print_r($data['menu']);
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting'],$data);
			}
			
		}
	}
	public function look_page($id='')
	{
		try {
			if (!empty($id)) {
				$data['param']	=	$this->arr;
				$data['id']		=	$id;
				$data['data_edit']	=	$this->my_where($data['param']['table'], [
					$data['param']['id']	=>	$id
				])->row_array();
				
				if (!empty($data['data_edit'])) {
					$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/look_page/index',$data['param']['parents_link'].'/look_page/js'],$data);
				}
			}
		} catch (Exception $e) {
			
		}
	}
	function simpan_data()
	{
		try {
			$data = [
				'username'	=>	$_POST['username'],
				'password'	=>	$_POST['password'],
				'email'		=>	$_POST['email'],
				'additional_data'	=>	[
					'first_name'	=>	$_POST['name'],
					'anggota_id' 	=>	$_POST['anggota_id'],
					'table' => 	'karyawan'	
				],
				'group'	=>	[$_POST['groups_id']]
			];
			if ($this->ion_auth->register($data['username'], $data['password'], $data['email'], $data['additional_data'], $data['group'])) {
				
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data users berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data users gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}
	function update_data()
	{
		
		try {
			
			$id = $_POST['id'];
			$data = [
				'username'	=>	$_POST['username'],
				'email'		=>	$_POST['email'],
				'first_name'	=>	$_POST['name'],
			];
			if (!empty($_POST['password'])) {
					$data['password']	=	$_POST['password'];
			}
			if (!empty($_POST['pin'])) {
					$data['pin']	=	$_POST['pin'];
			}
			$this->ion_auth->update($id, $data);

			if ($this->my_update('users_groups', ['group_id'	=>	$_POST['groups_id']], ['user_id'=>$id])) {
				
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data users berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data users gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}
	function update_data_user()
	{
		
		try {
			
			$id = $_POST['id'];
			$data = [
				'username'	=>	$_POST['username'],
				'email'		=>	$_POST['email'],
			];
			if (!empty($_POST['password'])) {
					$data['password']	=	$_POST['password'];
			}
			if (!empty($_POST['pin'])) {
					$data['pin']	=	$_POST['pin'];
			}
			$this->ion_auth->update($id, $data);
			echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data users berhasil ditambahkan'
				]);
			
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}
	function bulk_delete()
	{
		try {
			$dt = $this->arr;
			foreach ($_POST['data_get'] as $key => $value) {
				$this->db->delete($dt['table'],[$dt['id']=>$value]);
			}
			echo json_encode([
				'status'	=>  200,
				'msg'		=>	'Data berhasil terhapus'
			]);
		} catch (Exception $e) {
			echo json_encode([
				'status'	=>  500,
				'msg'		=>	$e
			]);
		}
		
	}

	public function get_pin(){

		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$pin = $_POST['pin'];

		if ($pin == $data['account']['pin']) {
			echo json_encode(['status' => 200, 'ans'=>true, 'msg' => $data['account']['pin']]);
		}else{
			echo json_encode(['status' => 200, 'ans'=>false]);
		}
	}
	function delete_item(){
		try {
			$dt = $this->arr;
			if ($this->db->delete($dt['table'], [$dt['id']=>$_POST['id']])) {
				echo json_encode([
					'status'	=>  200,
					'msg'		=>	'Data berhasil terhapus'
				]);
			}else{
				echo json_encode([
					'status'	=>  500,
					'msg'		=>	'Data gagal terhapus'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
				'status'	=>  500,
				'msg'		=>	$e
			]);
		}
		
	}

	function get_detail_user($id = ""){
		try {
			if ($id !== "") {
				$data['karyawan']	=	$this->my_where('karyawan', ['id'=>$id])->row_array();
				echo json_encode([
					'status'	=>  200,
					'msg'		=>	'Data berhasil diambil',
					'data' 		=> $data
				]);
			}else{
				echo json_encode([
					'status'	=>  500,
					'msg'		=>	'Data gagal diambil'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
				'status'	=>  500,
				'msg'		=>	$e
			]);
		}
	}

	public function datatable()
	{
       	$_POST['frm']   =   $this->arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $row        =   array();
            $created_by 	=	((!empty($field['created_by'])) ? $this->my_where('users', ['id'=>$field['created_by']])->row_array()['username'] : '-');
            $updated_by 	=	((!empty($field['updated_at'])) ? $this->my_where('users', ['id'=>$field['updated_by']])->row_array()['username'] : '-');
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	!empty($field['ip_address']) ? '<b>'.strtoupper($field['ip_address']).'</b>' : '-';
            $row[]		=	!empty($field['username']) ? $field['username']: '-';

            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="users/look_page/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							<li><a href="users/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
            							<li><a  onclick="delete_item('.$field['id'].');"><i class="icon-trash"></i> Hapus</a></li>
            						</ul>
            					</li>
            				</ul>';

            $data[]     =   $row;
        }
        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->mod_datatable->count_all(),
            "recordsFiltered" => $this->mod_datatable->count_filtered(),
            "data" => $data,
        );

        echo json_encode($output);
	}

}
