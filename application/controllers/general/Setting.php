<?php
defined('BASEPATH') OR exit('No direct script access allowed');
		use PhpOffice\PhpSpreadsheet\Spreadsheet;
		use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class setting extends MY_Controller {
	public $arr = [
			'title'				=>	'Setting Aplikasi',
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/setting'
	];

	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index', $data['param']['parents_link'].'/index_page/js'],$data);
	}

	function kode_form(){
		$data['param'] 		= 	$this->arr;
		$data['kode']		=	$this->db->where('name',"kode")->or_where('name', "kode_ppn")->get("setting_table")->result_array();
		$this->my_view([$data['param']['parents_link'].'/index_page/kode_form'],$data);
	}
	function profil(){
		$data['param'] 		= 	$this->arr;
		$data['profil']		=	$this->my_where('profil_website',[])->row_array();
		$this->my_view([$data['param']['parents_link'].'/index_page/profil'],$data);
	}
	function template_cetak_struk()
	{
		
		$data['param'] 		= 	$this->arr;
		$data['kode']		=	$this->db->where('name','template_struk_header')->or_where('name', 'template_struk_footer')->get("setting_table")->result_array();
		$this->my_view([$data['param']['parents_link'].'/index_page/template_cetak_struk'],$data);
	}
	function template_cetak_nota()
	{
		
		$data['param'] 		= 	$this->arr;
		$data['kode']		=	$this->db->where('name','template_nota_header')->or_where('name', 'template_nota_footer')->get("setting_table")->result_array();
		$this->my_view([$data['param']['parents_link'].'/index_page/template_cetak_nota'],$data);
	}
	function setting_excel(){
		$data['param'] 		= 	$this->arr;
		$data['kode']		=	$this->db->where('name','template_excel')->or_where('name', 'start_row_excel')->get("setting_table")->result_array();
		$this->my_view([$data['param']['parents_link'].'/index_page/setting_excel'],$data);
	}
	function other_setting(){
		$data['param'] 		= 	$this->arr;
		$data['kode']		=	$this->db->where('table','other')->get("setting_table")->result_array();
		$this->my_view([$data['param']['parents_link'].'/index_page/other_setting'],$data);
	}
	function update_data_profil(){
		try {

			if(file_exists($_FILES['logo']['tmp_name']) || is_uploaded_file($_FILES['logo']['tmp_name'])) {
				$logo = $this->save_media([
					'path'	=>	"./include/media/",
					'filename' => 'logo',
				]);
			}
			if(file_exists($_FILES['icon']['tmp_name']) || is_uploaded_file($_FILES['icon']['tmp_name'])) {
				$icon = $this->save_media([
					'path'	=>	"./include/media/",
					'filename' => 'icon',
				]);
			}

			$data=[];
			$data=[
					'nama'						=>	$_POST['nama'],
					'nama_website'				=>	$_POST['nama_website'],
					'singkatan'					=>	$_POST['singkatan'],
					'pemilik'					=>	$_POST['pemilik'],
					'alamat'					=>	$_POST['alamat'],
					'kota'						=>	$_POST['kota'],
					'tagline'					=>	$_POST['tagline'],
					'no_hp'						=>	$_POST['no_hp'],
					'email'						=>	$_POST['email'],
					'facebook'					=>	$_POST['facebook'],		
					'twitter'					=>	$_POST['twitter'],
					'youtube'					=>	$_POST['youtube'],
					'instagram'					=>	$_POST['instagram'],
					];
			if(file_exists($_FILES['logo']['tmp_name']) || is_uploaded_file($_FILES['logo']['tmp_name'])) {
					$data['logo'] = ((isset($logo)) ? $logo['file_name'] : '');
			}
			if(file_exists($_FILES['icon']['tmp_name']) || is_uploaded_file($_FILES['icon']['tmp_name'])) {
					$data['icon'] = ((isset($icon)) ? $icon['file_name'] : '');
			}

					
			if ($this->my_update('profil_website',$data,[])) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data berhasil di update',
					'page' => $_POST['page']
				]);
			}	else 	{
				echo json_encode([
						'status'	=>	500,
						'msg'		=>	$e,
						'page' => $_POST['page']
				]);
			}
			
				
			
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e,
					'page' => $_POST['page']
			]);
		}
	}
	function update_kode(){
		try {

			foreach ($_POST['data'] as $value) {
				$data = [
					'value' => $value['value'],
				];

				$this->my_update('setting_table', $data, ['id_setting_table'=>$value['id']]);
			}
			
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data berhasil di update',
					'page' => $_POST['page']
				]);
			
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e,
					'page' => $_POST['page']
			]);
		}
	}
	function update_template_cetak_struk(){
		try {

			foreach ($_POST['data'] as $value) {
				$data = [
					'value' => $value['val'],
				];

				$this->my_update('setting_table', $data, ['id_setting_table'=>$value['id']]);
			}
			
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data berhasil di update',
					'page' => $_POST['page'],
					'post' => $_POST
				]);
			
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e,
					'page' => $_POST['page'],
					'post' => $_POST
			]);
		}
	}
}