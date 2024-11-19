<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class tatib extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Tata Tertib',
			'table'				=>	'tatib',
			'column'			=>	[ 'kode','nama'],
			'column_order'		=>	[ 'id','kode','nama'],
			'column_search'		=>	[ 'id','kode','nama'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/tatib'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
        
        $data['tatib'] = $this->db->query('SELECT
                kategori_tatib.kode AS kategori_kode,
                kategori_tatib.nama AS kategori_nama,
                kategori_tatib.color AS kategori_color,
                tatib.kode AS tatib_kode,
                tatib.poin AS tatib_poin,
                tatib.nama AS tatib_nama,
                tatib.id AS tatib_id
            FROM
                kategori_tatib
            LEFT JOIN
                tatib ON tatib.kategori_tatib_id = kategori_tatib.id
            WHERE
                kategori_tatib.status_aktif = 1
                AND tatib.status_aktif = 1
            ORDER BY
                kategori_tatib.kode ASC,
                -- Ekstrak bagian angka dari kode dan urutkan numerik
                CAST(SUBSTRING(tatib.kode, 2) AS UNSIGNED) ASC;')->result_array();

		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['uuid']		=	generate_uuid();
		$data['kategori_tatib']	=	$this->db->query("select id, nama, color from kategori_tatib")->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}
    
	public function edit_page($id = ""){
		if (!empty($id)) {
			$data['param'] 		= 	$this->arr;
			$data['id']			=	$id;
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();
            
		$data['kategori_tatib']	=	$this->db->query("select id, nama, color from kategori_tatib")->result_array();

			if (!empty($data['data_edit'])) {
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting'],$data);
			}			
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

    function simpan_data()
	{
		try {
			
			$data = [
				'kode' => $_POST['kode'],
				'nama' => $_POST['nama'],
				'poin'	=>	$_POST['poin'],
				'kategori_tatib_id' => $_POST['kategori_tatib_id'],
				'status_aktif' => $_POST['status_aktif']
			];
			if ($this->save_data('tatib', $data)) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data tatib berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data tatib gagal ditambahkan'
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
				'kode' => $_POST['kode'],
				'nama' => $_POST['nama'],
				'poin'	=>	$_POST['poin'],
				'kategori_tatib_id' => $_POST['kategori_tatib_id'],
				'status_aktif' => $_POST['status_aktif']
			];
			if ($this->my_update('tatib', $data, [$this->arr['id'] => $_POST['id']])) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data tatib berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data tatib gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
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
}
?>