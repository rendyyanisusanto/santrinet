<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class kamar extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data kamar',
			'table'				=>	'kamar',
			'column'			=>	[ 'kode','nama', 'asrama_id','status_aktif'],
			'column_order'		=>	[ 'id','kode','nama', 'asrama_id','status_aktif'],
			'column_search'		=>	[ 'id','kode','nama', 'asrama_id','status_aktif'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/kamar'
	];

	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal',$data['param']['parents_link'].'/index_page/js'],$data);
	}

	public function kamar_santri()
	{
		$this->arr['title'] = "Setting Kamar Santri";
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['asrama']		=	$this->db->query('select id, nama from asrama')->result_array();
		$data['kamar']		=	$this->db->query('select id, nama from kamar where status_aktif=1')->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/kamar_santri/index', $data['param']['parents_link'].'/kamar_santri/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['asrama']		=	$this->db->query('select id, nama from asrama where status_aktif=1')->result_array();
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
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();

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

	function get_city(){
		$data['param'] 		= 	$this->arr;
		$data['city']		=	$this->my_where('cities', ['province_id'=>$_POST['id']])->result_array();
		$data['city_id']	=	(isset($_POST['city_id'])) ? $_POST['city_id'] : "";
		$this->my_view([$data['param']['parents_link'].'/add_page/city'], $data);
	}

	function simpan_data()
	{
		try {
			
			$data = [
				'kode' => $_POST['kode'],
				'nama' => $_POST['nama'],
				'asrama_id' => $_POST['asrama_id'],
				'status_aktif' => $_POST['status_aktif']
			];
			if ($this->save_data('kamar', $data)) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data kamar berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data kamar gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}

	function add_kamar_santri(){
		try {
			
			$data = [
				'santri_id'	=>	$_POST['santri_id'],
				'kamar_id'	=>	$_POST['kamar_id'],
				'tahun'		=>	'',
				'status_aktif'	=>	1
			];
			if ($this->save_data('kamar_santri', $data)) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data kamar santri berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data kamar santri gagal ditambahkan'
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
				'color' => $_POST['color'],
				'status_aktif' => $_POST['status_aktif'],
				// 'updated_by' => $this->get_user_account()['id']
			];
			if ($this->my_update('kamar', $data, [$this->arr['id'] => $_POST['id']])) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data kamar berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data kamar gagal ditambahkan'
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

	function delete_kamar_santri(){
		try {
			$dt = $this->arr;
			if ($this->db->delete("kamar_santri", ["id"=>$_POST['id']])) {
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
	function change_status(){
		try {
			$dt = $this->arr;
			
			if ($this->my_update($dt['table'], ['status_aktif'=> (($_POST['status'] == 0) ? 1:0)], [$dt['id']=>$_POST['id']])) {
				echo json_encode([
					'status'	=>  200,
					'msg'		=>	'Status berhasil diganti'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
				'status'	=>  500,
				'msg'		=>	$e
			]);
		}
	}
	public function import_process($value='')
	{
		try {
			$data['param'] 		= 	$this->arr;
			$file_mimes = array('application/octet-stream', 'application/vnd.ms-excel', 'application/x-csv', 'text/x-csv', 'text/csv', 'application/csv', 'application/excel', 'application/vnd.msexcel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
	 
			if(isset($_FILES['file_upload']['name']) && in_array($_FILES['file_upload']['type'], $file_mimes)) {
			 	
			    $arr_file = explode('.', $_FILES['file_upload']['name']);
			    $extension = end($arr_file);
			 
			    if($extension == 'csv'){
	                    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Csv();
	                } elseif($extension == 'xlsx') {
	                    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
	                } else {
	                    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
	                }
			 
			    $spreadsheet = $reader->load($_FILES['file_upload']['tmp_name']);
			    $send = [];
				$sheetData = $spreadsheet->getActiveSheet()->toArray();
				for($i = 3 ;$i < count($sheetData);$i++)
				{
					if (!empty($sheetData[$i]['1'])) {
				        $kode 			= $sheetData[$i]['1'];
				        $nama 			= (!empty($sheetData[$i]['2'])) ? $sheetData[$i]['2'] : '';
				        if (isset($sheetData[$i]['1'])) {
				        	$send [] = [
								'nama' 					=>  (!empty($nama)) ? strtoupper($nama) : '',
								'kode'					=>	(!empty($kode)) ? $kode : '',
							];
				        }
			    	}
			        
			    }
			    $send	=	array_map('array_filter', $send);
			    $send 	=	array_filter($send);
			    $data['data_import']	=	$send;
				$this->my_view([$data['param']['parents_link'].'/import_page/proses_data'],$data);
			}
		} catch (Exception $e) {
			
		}

	}

	public function import_data()
	{
		try {
			$send = [];
			foreach ($_POST['dt'] as $key => $value) {
				$send	=	[
					'nama' => $value['nama'],
					'kode' => $value['kode'],
					'color' => $value['color'],
					'status_aktif'	=>	1
				];
				try {
					$this->save_data('kamar', $send);					
				} catch (Exception $e) {
					break;
				}
			}

			echo json_encode([
				'status'	=>  200,
				'msg'		=>	'Data berhasil diimport'
			]);
		} catch (Exception $e) {
			echo json_encode([
				'status'	=>  500,
				'msg'		=>	'Data gagal diimport'
			]);
		}
	}

	public function datatable()
	{
		$this->db->where('status_aktif', ($_POST['status_aktif'] ?? 1));
       	$_POST['frm']   =   $this->arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $row        =   array();
            $asrama		=	$this->db->query('select nama, color from asrama  where id='.$field['asrama_id'])->row_array();
			$jumlah		=	$this->db->query('select count(*) as jml from kamar_santri where kamar_id='.$field['id'])->row_array();
            $row[]		=	'<a href="kamar/edit_page/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	!empty($asrama['nama']) ? '<b style="color:'.$asrama['color'].'">'.strtoupper($asrama['nama']).'</b>' : '-';
            $row[]		=	!empty($field['nama']) ? '<b style="color:'.$field['color'].'">'.strtoupper($field['nama']).'</b>' : '-';
			$row[]		=	$jumlah['jml'];
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="kamar/look_page/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							<li><a href="kamar/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
            							<li><a  onclick="change_status('.$field['id'].','.$field['status_aktif'].');"><i class="icon-close2"></i> '.(($field['status_aktif'] == 1) ? "Nonaktifkan" : "Aktifkan" ).'</a></li>
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

	function get_table_kamar_santri(){
		
		$data['param'] 		= 	$this->arr;
		$search = $_POST['search'];
		$opt = $_POST['opt'];
		$data['santri']	=	$this->db->query('SELECT 
			s.id, s.nama, (select nama from asrama where asrama.id = s.asrama_id) as nama_asrama
		FROM 
			santri s
		LEFT JOIN 
			kamar_santri ks ON s.id = ks.santri_id
		WHERE 
			ks.santri_id IS NULL
			and 
			s.status_aktif = 1
			and 
			s.status_santri = "AKTIF"
		AND 
			s.nama LIKE "%' . $search . '%"
		'.((!empty($opt)) ? " AND s.asrama_id = ".$opt." " : "").'	
		LIMIT 20;')->result_array();

		$this->my_view([$data['param']['parents_link'].'/kamar_santri/table'], $data);
	}

	function get_table_kamar_for_santri(){
		$id = $_POST['id'];
		
		$data['param'] 		= 	$this->arr;
		$data['kamar_santri']	=	$this->db->query('select kamar_santri.id, nama, (select nama from kamar where kamar.id = kamar_id) as kamar from kamar_santri inner join santri on santri.id = santri_id where santri.status_aktif=1 and santri.status_santri="AKTIF" and kamar_id='.$id)->result_array();
		$this->my_view([$data['param']['parents_link'].'/kamar_santri/table_kamar'], $data);
	}
}
