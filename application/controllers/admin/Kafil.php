<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class kafil extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Kafil',
			'table'				=>	'kafil',
			'column'			=>	[ 'kode','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','status_aktif'],
			'column_order'		=>	[ 'id','kode','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','status_aktif'],
			'column_search'		=>	[ 'id','kode','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','status_aktif'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/kafil'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['asrama']		=	$this->db->query('select id, nama from asrama')->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}
	public function add_page_kafil()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['asrama']		=	$this->db->query('select id, nama from asrama')->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page_kafil/index',$data['param']['parents_link'].'/add_page_kafil/js' ],$data);
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
	function print_web(){
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->get($data['param']['table'])->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select * from '.$data['param']['table'].' where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}
		$this->load->view('role/admin/page/kafil/print_page/print_web', $data);
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
	          	'url'			=>	'role/admin/page/kafil/print_page/cetak_pdf',
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
				'status_santri'         => "AKTIF",
				'foto'           => $foto_nama
			];
			
			if ($this->db->insert('santri', $data)) {
				$santri_id = $this->db->insert_id(); // Ambil ID santri yang baru disimpan
				 // Cek checkbox yang dicentang
				 $this->db->insert('kafil', ['santri_id'=>$santri_id]);

				echo json_encode([
					'status' => 200,
					'msg'    => 'Data kafil berhasil ditambahkan'
				]);
			} else {
				echo json_encode([
					'status' => 500,
					'msg'    => 'Data kafil gagal ditambahkan'
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
			
			$data = [
				'nama' 				=> $_POST['nama'],
				'kode'				=>	$_POST['kode'],
				'jenis_kelamin'		=>	$_POST['jenis_kelamin'],
				'tempat_lahir'		=>	$_POST['tempat_lahir'],
				'tanggal_lahir'		=>	$_POST['tanggal_lahir'],
				'no_hp'				=>	$_POST['no_hp'],
				'status_aktif' 		=> $_POST['status_aktif']
			];
			if ($this->my_update('kafil', $data, [$this->arr['id'] => $_POST['id']])) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data kafil berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data kafil gagal ditambahkan'
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
					$this->save_data('kafil', $send);					
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
		$this->arr['table']	=	'v_kafil';
       	$_POST['frm']   =   $this->arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $row        =   array();
            $row[]      =   (!empty($field['foto'])) ? '<img src="'.base_url('inc/media/santri/'.$field['foto']).'" style="max-width: 50px">' : '<img src="'.base_url('inc/media/no_image.jpg').'" style="max-width: 50px">';
			$row[]		=	!empty($field['nama']) ? '<b style="color:black">'.strtoupper($field['nama']).'</b>' : '-';
			$row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="kafil/look_page/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							<li><a href="kafil/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
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

	
	function get_table_kafil_santri(){
		
		$data['param'] 		= 	$this->arr;
		$search = $_POST['search'];
		$opt = $_POST['opt'];
		$data['santri']	=	$this->db->query('SELECT 
			s.id, s.nama, (select nama from asrama where asrama.id = s.asrama_id) as nama_asrama
		FROM 
			santri s
		LEFT JOIN 
			kafil ps ON s.id = ps.santri_id
		WHERE 
			ps.santri_id IS NULL
		AND 
			s.nama LIKE "%' . $search . '%"
		'.((!empty($opt)) ? " AND s.asrama_id = ".$opt." " : "").'	
		LIMIT 20;')->result_array();

		$this->my_view([$data['param']['parents_link'].'/add_page_kafil/table'], $data);
	}
	function get_table_kafil(){
		$data['param'] 		= 	$this->arr;
		$data['kafil']	=	$this->db->query('select id, (select nama from santri where santri.id = santri_id) as nama from kafil')->result_array();
		$this->my_view([$data['param']['parents_link'].'/add_page_kafil/table_kafil'], $data);
	}
	function save_table_kafil(){
		try {
			
			$data = [
				'santri_id'	=>	$_POST['santri_id']
			];
			if ($this->save_data('kafil', $data)) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data kafil berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data kafil gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}
}
