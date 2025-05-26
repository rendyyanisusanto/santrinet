<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class santri extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Santri',
			'table'				=>	'santri',
			'column'			=>	[ 'nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','nama_ayah','nama_ibu','no_hp_ayah','no_hp_ibu','status_aktif'],
			'column_order'		=>	[ 'id','nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','nama_ayah','nama_ibu','no_hp_ayah','no_hp_ibu','status_aktif'],
			'column_search'		=>	[ 'id','nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','nama_ayah','nama_ibu','no_hp_ayah','no_hp_ibu','status_aktif'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/santri'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal_change_status_santri',$data['param']['parents_link'].'/index_page/js'],$data);
		// $this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page_card/index',$data['param']['parents_link'].'/index_page_card/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['asrama']		=	$this->db->query('select id, nama from asrama')->result_array();
		$data['lembaga_pengurus']		=	$this->db->query('select id, nama from lembaga_pengurus')->result_array();
		$data['angkatan']		=	$this->db->query('select id, nama from angkatan order by id DESC')->result_array();
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
			$data['asrama']		=	$this->db->query('select id, nama from asrama')->result_array();
			$data['angkatan']		=	$this->db->query('select id, nama from angkatan order by id DESC')->result_array();
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();

			$data['dokumen_santri']	=	$this->db->query('select id, fname, file from santri_dokumen where santri_id='.$id)->result_array();

			if (!empty($data['data_edit'])) {
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting'],$data);
			}			
		}
	}
	function import_santri(){
		$file_mimes = array('application/octet-stream', 'application/vnd.ms-excel', 'application/x-csv', 'text/x-csv', 'text/csv', 'application/csv', 'application/excel', 'application/vnd.msexcel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		
			$data['param'] 		= 	$this->arr;
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
			for($i = 2 ;$i < count($sheetData);$i++)
			{
				if (!empty($sheetData[$i]['1'])) {
			        $nis 			= (!empty($sheetData[$i]['0'])) ? $sheetData[$i]['0'] : '';
			        $nama 			= $sheetData[$i]['1'];
			        $jenis_kelamin 	= (!empty($sheetData[$i]['2'])) ? $sheetData[$i]['2'] : '';
			        $nik 			= (!empty($sheetData[$i]['3'])) ? $sheetData[$i]['3'] : '';
			        $tempat_lahir 	= (!empty($sheetData[$i]['4'])) ? $sheetData[$i]['4'] : '';
			        $tanggal_lahir 	= (!empty($sheetData[$i]['5'])) ? $sheetData[$i]['5'] : '';
			        $alamat 		= (!empty($sheetData[$i]['6'])) ? $sheetData[$i]['6'] : '';
			       	$nama_ayah		= (!empty($sheetData[$i]['7'])) ? $sheetData[$i]['7'] : '';
					$nama_ibu		= (!empty($sheetData[$i]['10'])) ? $sheetData[$i]['10'] : '';
					$no_hp_ayah		= (!empty($sheetData[$i]['8'])) ? $sheetData[$i]['8'] : '';
					$no_hp_ibu		= (!empty($sheetData[$i]['9'])) ? $sheetData[$i]['9'] : '';
					$nama_wali		= (!empty($sheetData[$i]['11'])) ? $sheetData[$i]['11'] : '';
					$no_hp_wali		= (!empty($sheetData[$i]['12'])) ? $sheetData[$i]['12'] : '';
			        if (isset($sheetData[$i]['1'])) {
			        	$send [] = [
							'nis'				=> $nis,
							'nik'				=> $nik,
							'nama'				=> $nama,
							'jenis_kelamin'		=> $jenis_kelamin,
							'tempat_lahir'		=> $tempat_lahir,
							'tanggal_lahir'		=> $tanggal_lahir,
							'alamat'			=> $alamat,
							'nama_ayah'			=> $nama_ayah,
							'nama_ibu'			=> $nama_ibu,
							'no_hp_ayah'		=> $no_hp_ayah,
							'no_hp_ibu'			=> $no_hp_ibu,
							'nama_wali'			=> $nama_wali,
							'no_hp_wali'		=> $no_hp_wali
						];
			        }
		    	}
		    }
			
		  header('Content-Type: application/json');
			echo json_encode([
				'status' => 'success',
				'data' => $send
			]);
		}
	}
	function import_santri_submit(){
		$import = json_decode($_POST['data'], true);
		if (is_array($import)) {
				foreach ($import as $value) {
					$data = [
						'nama'           => $value['nama'],
						'nis'            => $value['nis'],
						'nik'            => $value['nik'],
						'alamat'            => $value['alamat'],
						'jenis_kelamin'  => $value['jenis_kelamin'],
						'tempat_lahir'   => $value['tempat_lahir'],
						'tanggal_lahir'  => date('Y-m-d', strtotime($value['tanggal_lahir'])),
						'nama_ayah'      => $value['nama_ayah'],
						'nama_ibu'       => $value['nama_ibu'],
						'nama_wali'      => $value['nama_wali'],
						'no_hp_ayah'     => $value['no_hp_ayah'],
						'no_hp_ibu'      => $value['no_hp_ibu'],
						'no_hp_wali'     => $value['no_hp_wali'],
						'asrama_id'         => $value['asrama_id'],
						'status_santri'         => "AKTIF"
					];

					$this->db->insert('santri', $data);
				}
			}
		echo json_encode([
			'status' => 200,
			'msg'	=>	"Berhasil import data"
		]);
	}
	public function look_page($id='')
	{
		try {
			if (!empty($id)) {
				$data['param']	=	$this->arr;
				$data['id']		=	$id;
				$data['data_edit']	=	$this->db->query('select * from santri where id='.$id)->row_array();
				$data['pelanggaran']	=	$this->db->query('select * from pelanggaran where santri_id='.$id)->result_array();
				$data['rekam_medis']	=	$this->db->query('select * from rekam_medis where santri_id='.$id)->result_array();
				$data['buku_tahfidz']	=	$this->db->query('select * from buku_tahfidz where santri_id='.$id)->result_array();
				$data['perizinan_santri'] = $this->db->query('select * from perizinan_santri where santri_id='.$id)->result_array();
				// print_r($data);
				if (!empty($data['data_edit'])) {
					$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/look_page/index',$data['param']['parents_link'].'/look_page/js'],$data);
				}
			}
		} catch (Exception $e) {
			
		}
	}
	function print_web(){
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->get($data['param']['table'])->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select * from '.$data['param']['table'].' where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}
		$this->load->view('role/admin/page/santri/print_page/print_web', $data);
	}
	function print_excel(){
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->get($data['param']['table'])->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select * from '.$data['param']['table'].' where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];

	    $path_exc = $this->my_where('setting_table', ['table'=>$data['param']['table'],'name'=>'template_excel'])->row_array();      
	    $start_no = $this->my_where('setting_table', ['table'=>$data['param']['table'],'name'=>'start_row_excel'])->row_array();        
	    $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
		$spreadsheet = $reader->load("inc/excel_template/".$path_exc['value']);
		$sheet = $spreadsheet->getActiveSheet();
		$no = $start_no['value'];
		$styleArray = array(
			'borders' => array(
				  	'allBorders' => array(
				      	'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
				  	),
			),
		);
		foreach ($param['data_obj'] as $key => $value) {
			$abj = 'A';
			foreach ($param['header_table'] as $key_header => $value_header) {
				$sheet->setCellValue($abj.($no), $value[$value_header]);
				$abj++;
			}
					
			$sheet->getStyle('A'.$no.':'.$abj.$no)->applyFromArray($styleArray);

			$no ++;
		}

	    ob_start();
		$writer = new Xlsx($spreadsheet);
		$fileName = $data['param']['table'].".xlsx";
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment; filename="'. urlencode($fileName).'"');
		$writer->save('php://output');

		$xlsData = ob_get_contents();
       	ob_end_clean();
	       $response =  array(
		          'status' => TRUE,
		          'file' => "data:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64,".base64_encode($xlsData)
		      );
	       echo json_encode($response);
	}

	function print_pdf()
	{
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->get($data['param']['table'])->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select * from '.$data['param']['table'].' where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];

		$param	=	[
	          	'url'			=>	'role/admin/page/santri/print_page/cetak_pdf',
	          	'customPaper'	=>	'A4',
	          	'data_value'	=>	[
			           	"data"		=>	$data[$data['param']['table']],
			           	"param"		=>	$this->arr
	     			],
	          	'name'			=>	md5(rand(0,9999999)),
	          	'pos' 			=> 'landscape'
	    ];

	    $this->my_pdf($param);
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
			$foto_nama = null;
			
			if (!empty($_FILES['foto']['name'])) {
				$config['upload_path']   = './inc/media/santri/';
				$config['allowed_types'] = 'jpg|jpeg|png';
				$config['max_size']      = 2048; // 2MB
				$config['file_name']     = time() . '_' . $_FILES['foto']['name'];
				
				$this->load->library('upload', $config);
				
				if ($this->upload->do_upload('foto')) {
					$upload_data = $this->upload->data();
					$foto_nama = $upload_data['file_name'];
					
					// Kompres gambar menggunakan Intervention Image
					$this->load->library('image_lib');
					
					$config_img['image_library']  = 'gd2';
					$config_img['source_image']   = './uploads/santri/' . $foto_nama;
					$config_img['new_image']      = './uploads/santri/' . $foto_nama;
					$config_img['quality']        = '50%'; // Kompres lebih tinggi
					$config_img['maintain_ratio'] = TRUE;
					$config_img['width']          = 500;
					$config_img['height']         = 500;
					
					$this->image_lib->initialize($config_img);
					$this->image_lib->resize();
				}
			}
			
			$data = [
				'nama'           => $_POST['nama'],
				'nis'            => $_POST['nis'],
				'nik'            => $_POST['nik'],
				'alamat'            => $_POST['alamat'],
				'jenis_kelamin'  => $_POST['jenis_kelamin'],
				'tempat_lahir'   => $_POST['tempat_lahir'],
				'tanggal_lahir'  => $_POST['tanggal_lahir'],
				'nama_ayah'      => $_POST['nama_ayah'],
				'nama_ibu'       => $_POST['nama_ibu'],
				'nama_wali'      => $_POST['nama_wali'],
				'no_hp_ayah'     => $_POST['no_hp_ayah'],
				'no_hp_ibu'      => $_POST['no_hp_ibu'],
				'no_hp_wali'     => $_POST['no_hp_wali'],
				'asrama_id'         => $_POST['asrama_id'],
				'angkatan_id'         => $_POST['angkatan_id'],
				'status_santri'         => "AKTIF",
				'foto'           => $foto_nama
			];
			
			if ($this->db->insert('santri', $data)) {
				$santri_id = $this->db->insert_id(); // Ambil ID santri yang baru disimpan
				 // Cek checkbox yang dicentang
				 if (!empty($_POST['role']) && is_array($_POST['role'])) {
					foreach ($_POST['role'] as $role) {
						if ($role == "KAFIL") {
							$this->db->insert('kafil', ['santri_id' => $santri_id]);
						} elseif ($role == "ASATID") {
							$this->db->insert('asatid', ['santri_id' => $santri_id]);
						} elseif ($role == "PENGURUS") {
							$data_pengurus = [
								'santri_id'          => $santri_id,
								'lembaga_pengurus_id' => $_POST['lembaga_pengurus_id']
							];
							$this->db->insert('pengurus', $data_pengurus);
						}
					}
				}

				 // **Proses Upload Dokumen Tambahan**
				 if (!empty($_FILES['dokumen']['name'])) {
					foreach ($_FILES['dokumen']['name'] as $key => $name) {
						if (!empty($name['val'])) {
							
							$_FILES['file_dokumen']['name']     = $name['val'];
							$_FILES['file_dokumen']['type']     = $_FILES['dokumen']['type'][$key]['val'];
							$_FILES['file_dokumen']['tmp_name'] = $_FILES['dokumen']['tmp_name'][$key]['val'];
							$_FILES['file_dokumen']['error']    = $_FILES['dokumen']['error'][$key]['val'];
							$_FILES['file_dokumen']['size']     = $_FILES['dokumen']['size'][$key]['val'];
	
							$upload_path = './inc/media/santri/dokumen_santri/';
							$file_name = time() . '_' . $_FILES['file_dokumen']['name'];
	
							$config_dokumen['upload_path']   = $upload_path;
							$config_dokumen['allowed_types'] = '*'; // Semua tipe file
							$config_dokumen['max_size']      = 5120; // 5MB
							$config_dokumen['file_name']     = $file_name;
	
							// $this->upload->initialize($config_dokumen);
							$this->load->library('upload', $config_dokumen);
	
							if ($this->upload->do_upload('file_dokumen')) {
								$upload_data = $this->upload->data();
	
								// Simpan ke database
								$data_dokumen = [
									'santri_id' => $santri_id,
									'fname' => $_POST['dokumen'][$key]['name'],
									'file' => $upload_data['file_name']
								];
								$this->db->insert('santri_dokumen', $data_dokumen);
							}
						}
					}
				}
				echo json_encode([
					'status' => 200,
					'msg'    => 'Data santri berhasil diubah'
				]);
			} else {
				echo json_encode([
					'status' => 500,
					'msg'    => 'Data santri gagal diubah'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
				'status' => 500,
				'msg'    => $e->getMessage()
			]);
		}
	}
	function update_data()
	{
		try {
			$foto_nama = $this->input->post('foto_lama'); // Gunakan foto lama jika tidak ada yang baru
			
			if (!empty($_FILES['foto']['name'])) {
				$config['upload_path']   = './inc/media/santri/';
				$config['allowed_types'] = 'jpg|jpeg|png';
				$config['max_size']      = 1024; // 1MB
				$config['file_name']     = time() . '_' . $_FILES['foto']['name'];
				
				$this->load->library('upload', $config);
				
				if ($this->upload->do_upload('foto')) {
					$upload_data = $this->upload->data();
					$foto_nama = $upload_data['file_name'];
					
					// Kompres gambar menggunakan Intervention Image
					$this->load->library('image_lib');
					
					$config_img['image_library']  = 'gd2';
					$config_img['source_image']   = './inc/media/santri/' . $foto_nama;
					$config_img['new_image']      = './inc/media/santri/' . $foto_nama;
					$config_img['quality']        = '50%'; // Kompres lebih tinggi
					$config_img['maintain_ratio'] = TRUE;
					$config_img['width']          = 500;
					$config_img['height']         = 500;
					
					$this->image_lib->initialize($config_img);
					$this->image_lib->resize();
				}
			}
			
			$data = [
				'nama'           => $_POST['nama'],
				'nis'            => $_POST['nis'],
				'alamat'            => $_POST['alamat'],
				'jenis_kelamin'  => $_POST['jenis_kelamin'],
				'tempat_lahir'   => $_POST['tempat_lahir'],
				'tanggal_lahir'  => $_POST['tanggal_lahir'],
				'nama_ayah'      => $_POST['nama_ayah'],
				'nama_ibu'       => $_POST['nama_ibu'],
				'nama_wali'      => $_POST['nama_wali'],
				'no_hp_ayah'     => $_POST['no_hp_ayah'],
				'angkatan_id'         => $_POST['angkatan_id'],
				'no_hp_ibu'      => $_POST['no_hp_ibu'],
				'no_hp_wali'     => $_POST['no_hp_wali'],
				'asrama_id'      => $_POST['asrama_id'],
				'foto'           => $foto_nama
			];
			
			if ($this->my_update('santri', $data, ['id' => $_POST['id']])) {
				// Update data santri
				// 🚨 Hapus role lama sebelum menambahkan yang baru
				$this->db->delete('kafil', ['santri_id' => $_POST['id']]);
				$this->db->delete('asatid', ['santri_id' => $_POST['id']]);
				$this->db->delete('pengurus', ['santri_id' => $_POST['id']]);
		
				// 🚀 Tambahkan role baru jika ada
				if (!empty($_POST['role']) && is_array($_POST['role'])) {
					foreach ($_POST['role'] as $role) {
						if ($role == "KAFIL") {
							$this->db->insert('kafil', ['santri_id' => $_POST['id']]);
						} elseif ($role == "ASATID") {
							$this->db->insert('asatid', ['santri_id' => $_POST['id']]);
						} elseif ($role == "PENGURUS") {
							$data_pengurus = [
								'santri_id'           => $_POST['id'],
								'lembaga_pengurus_id' => $_POST['lembaga_pengurus_id']
							];
							$this->db->insert('pengurus', $data_pengurus);
						}
					}
				}

				
				 // **Proses Upload Dokumen Tambahan**
				 if (!empty($_FILES['dokumen']['name'])) {
					foreach ($_FILES['dokumen']['name'] as $key => $name) {
						if (!empty($name['val'])) {
							if(!empty($_POST['dokumen'][$key]['id'])){
								$this->db->delete('santri_dokumen', ['id'=>$_POST['dokumen'][$key]['id']]);
							}
							$_FILES['file_dokumen']['name']     = $name['val'];
							$_FILES['file_dokumen']['type']     = $_FILES['dokumen']['type'][$key]['val'];
							$_FILES['file_dokumen']['tmp_name'] = $_FILES['dokumen']['tmp_name'][$key]['val'];
							$_FILES['file_dokumen']['error']    = $_FILES['dokumen']['error'][$key]['val'];
							$_FILES['file_dokumen']['size']     = $_FILES['dokumen']['size'][$key]['val'];
	
							$upload_path = './inc/media/santri/dokumen_santri/';
							$file_name = time() . '_' . $_FILES['file_dokumen']['name'];
	
							$config_dokumen['upload_path']   = $upload_path;
							$config_dokumen['allowed_types'] = '*'; // Semua tipe file
							$config_dokumen['max_size']      = 5120; // 5MB
							$config_dokumen['file_name']     = $file_name;
	
							// $this->upload->initialize($config_dokumen);
							$this->load->library('upload', $config_dokumen);
	
							if ($this->upload->do_upload('file_dokumen')) {
								$upload_data = $this->upload->data();
	
								// Simpan ke database
								$data_dokumen = [
									'santri_id' => $_POST['id'],
									'fname' => $_POST['dokumen'][$key]['name'],
									'file' => $upload_data['file_name']
								];
								$this->db->insert('santri_dokumen', $data_dokumen);
							}
						}
					}
				}
				echo json_encode([
					'status' => 200,
					'msg'    => 'Data santri berhasil diperbarui'
				]);
			} else {
				echo json_encode([
					'status' => 500,
					'msg'    => 'Data santri gagal diperbarui'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
				'status' => 500,
				'msg'    => $e->getMessage()
			]);
		}
	}

	function delete_document($id){
		if($this->db->delete('santri_dokumen', ['id'=>$id])){
			echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Dokumen santri berhasil dihapus'
				]);
		}
	}
	

	function change_status_santri(){
		try{
			if($_POST['id'] != ''){
				$this->my_update('santri', ['status_santri' => $_POST['status_santri']], ['id' => $_POST['id']]);

				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Status santri berhasil diubah'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'ID tidak ditemukan'
				]);
			}
		}catch(Exception $e){
			echo json_encode([
				'status'	=>	500,
				'msg'		=>	$e
			]);
		}
		
	}

	function convert_to_alumni(){
		try{
			if($_POST['id'] != ''){
				$this->my_update('santri', ['status_santri' => "ALUMNI"], ['id' => $_POST['id']]);
				$this->db->insert('alumni', ['santri_id'=>$_POST['id'], 'tahun_lulus'=>$_POST['tahun_lulus'], 'keterangan'=>$_POST['keterangan']]);
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Status santri berhasil diubah'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'ID tidak ditemukan'
				]);
			}
		}catch(Exception $e){
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
					$this->save_data('santri', $send);					
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
       	$this->arr['table'] = 'v_santri_aktif';
		$_POST['frm']   =   $this->arr;
		$this->db->where('status_santri', 'AKTIF');
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]      =   (!empty($field['foto'])) ? '<center><img src="'.base_url('inc/media/santri/'.$field['foto']).'" style="width: 30px;height:40px;"></center>' : '<center><img src="'.base_url('inc/media/no_image.jpg').'" style="width: 40px;height:40px;"></center>';
            $row[]		=	'<a href="santri/look_page/'.$field['id'].'" class="app-item"><b>'. (!empty($field['nis']) ? strtoupper($field['nis']) : '-') . '</b></a>';
            $row[]		=	!empty($field['nama']) ? '<b style="color:black">'.strtoupper($field['nama']).'</b>' : '-';
            $row[]		=	'<a onclick="change_status_santri('.$field['id'].','."'".$field['status_santri']."'".')"><span class="label label-block label-rounded label-'.(($field['status_santri'] == "AKTIF") ? "success" : "info").'">'.$field['status_santri'].'</span></a>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="santri/look_page/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							<li><a href="santri/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
            							<li><a  onclick="change_status_santri('.$field['id'].','."'".$field['status_santri']."'".')"><i class="icon-user"></i> Jadikan Alumni</a></li>
            							<li><a  onclick="change_status('.$field['id'].','.$field['status_aktif'].');"><i class="icon-close2"></i> '.(($field['status_aktif'] == 1) ? "Nonaktifkan" : "Aktifkan" ).'</a></li>
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
