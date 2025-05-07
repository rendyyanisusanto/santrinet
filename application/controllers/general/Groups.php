<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class groups extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Groups (Role Access)',
			'table'				=>	'groups',
			'column'			=>	[ 'name','description'],
			'column_order'		=>	[ 'id','name','description'],
			'column_search'		=>	[ 'id','name','description'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/groups'
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
		$menu 				=	$this->my_where('menu', [])->result_array();
		$data['menu']		=	[];
		foreach ($menu as $value) {
			$submenu = $this->my_where('submenu', ['menu_id'=>$value['id']])->result_array();
		
			$data['menu'][]	=	[
				'menu' => $value,
				'submenu' => $submenu
			];
		}
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}
	function import_page(){
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/import_page/index',$data['param']['parents_link'].'/import_page/js'],$data);
	}
	public function edit_page($id = ""){
		if (!empty($id)) {
			$data['param'] 		= 	$this->arr;
			$data['id']			=	$id;
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
				'name' => $_POST['name'],
				'description' => $_POST['description']
			];
			if ($this->save_data('groups', $data)) {
				$id = $this->my_where('groups', $data)->row_array();

				foreach ($_POST['submenu'] as $value) {
					if (isset($value['id'])) {
						$data_dt = [
							'groups_id' => $id['id'],
							'submenu_id' => $value['id'],
							'c' => ((isset($value['c'])) ? 1 : 0) ,
							'r' => ((isset($value['r'])) ? 1 : 0) ,
							'u' => ((isset($value['u'])) ? 1 : 0) ,
							'd' => ((isset($value['d'])) ? 1 : 0) ,
						];

						$this->save_data('groups_detail', $data_dt);
					}
				}
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data groups berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data groups gagal ditambahkan'
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
			
			$data = [
				'name' => $_POST['name'],
				'description' => $_POST['description']
			];
			if ($this->my_update('groups', $data, ['id'	=>	$_POST['id']])) {
				$id =$_POST['id'];

				foreach ($_POST['submenu'] as $value) {
					if (isset($value['id'])) {
						$data_dt = [
							'groups_id' => $id,
							'submenu_id' => $value['id'],
							'c' => ((isset($value['c'])) ? 1 : 0) ,
							'r' => ((isset($value['r'])) ? 1 : 0) ,
							'u' => ((isset($value['u'])) ? 1 : 0) ,
							'd' => ((isset($value['d'])) ? 1 : 0) ,
						];

						$this->db->delete('groups_detail', [
							'groups_id' => $id,
							'submenu_id' => $value['id'],
						]);
						$this->save_data('groups_detail', $data_dt);
					}
				}
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data groups berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data groups gagal ditambahkan'
				]);
			}
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
            $row[]		=	!empty($field['name']) ? '<b>'.strtoupper($field['name']).'</b>' : '-';
            $row[]		=	!empty($field['description']) ? $field['description']: '-';

            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="groups/look_page/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							<li><a href="groups/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
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
