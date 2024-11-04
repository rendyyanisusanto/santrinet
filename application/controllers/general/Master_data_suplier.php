<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Master_data_suplier extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Supplier',
			'table'				=>	'master_data_suplier',
			'column'			=>	[ 'kode','nama', 'alamat','no_hp','province_id', 'city_id','email', 'deskripsi','status','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','nama', 'alamat', 'no_hp','province_id', 'city_id','email', 'deskripsi','status','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','nama', 'alamat', 'no_hp','province_id', 'city_id','email', 'deskripsi','status','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/master_data_suplier'
	];

	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['province']	=	$this->my_where('provinces',[])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['province']	=	$this->my_where('provinces',[])->result_array();
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

			$data['province']	=	$this->my_where('provinces',[])->result_array();
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();
			$data['produk_suplier']	=	$this->my_where('produk_suplier',['suplier_id'=>$id])->result_array();

			// print_r($data['produk_suplier']);

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
				$data['cities']	=	$this->my_where('cities', ['id'=>$data['data_edit']['city_id']])->row_array();
				$data['provinces']	=	$this->my_where('provinces', ['id'=>$data['data_edit']['province_id']])->row_array();
				$data['created_by']	=	$this->my_where('users', ['id'=>$data['data_edit']['created_by']])->row_array();
				$data['updated_by']	=	(($data['data_edit']['updated_by'] != 0 && $data['data_edit']['updated_by'] != '') ? $this->my_where('users', ['id'=>$data['data_edit']['updated_by']])->row_array()['username'] : "Belum di update");
				$data['produk']		=	$this->my_where('produk_suplier', ['suplier_id'	=>	$id])->result_array();

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
		$this->load->view('role/general/page/master_data_suplier/print_page/print_web', $data);
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
	          	'url'			=>	'role/general/page/master_data_suplier/print_page/cetak_pdf',
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
			
			$data = [
				'kode' => $_POST['kode'],
				'nama' => $_POST['nama'],
				'no_hp' => $_POST['no_hp'],
				'province_id' => $_POST['province_id'],
				'city_id' => $_POST['city_id'],
				'alamat' => $_POST['alamat'],
				'email' => $_POST['email'],
				'deskripsi' => $_POST['deskripsi'],
				'status' => $_POST['status'],
				'created_by' => $this->get_user_account()['id']
			];
			if ($this->save_data('master_data_suplier', $data)) {
				$suplier_id = $this->my_where('master_data_suplier', [
					'kode' => $_POST['kode'],
					'nama' => $_POST['nama'],
					'no_hp' => $_POST['no_hp'],
				] )->row_array();
				if (isset($_POST['produk'])) {
					foreach ($_POST['produk'] as $key => $value) {
						$produk = [
							'nama'	=>	$value['nama'],
							'harga'	=>	$value['harga'],
							'suplier_id'	=>	$suplier_id['id'],
							'created_by' => $this->get_user_account()['id']
						];

						$this->save_data('produk_suplier', $produk);
					}
				}

				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data Suplier berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data Suplier gagal ditambahkan'
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
				'no_hp' => $_POST['no_hp'],
				'province_id' => $_POST['province_id'],
				'city_id' => $_POST['city_id'],
				'alamat' => $_POST['alamat'],
				'email' => $_POST['email'],
				'deskripsi' => $_POST['deskripsi'],
				'status' => $_POST['status'],
				'updated_by' => $this->get_user_account()['id']
			];
			if ($this->my_update('master_data_suplier', $data, [$this->arr['id'] => $_POST['id']])) {

				foreach ($_POST['produk'] as $key => $value) {
					if (isset($value['id'])) {
						$produk = [
							'nama'	=>	$value['nama'],
							'harga'	=>	$value['harga'],
							'suplier_id'	=>	$_POST['id'],
							'updated_by' => $this->get_user_account()['id']
						];

						$this->my_update('produk_suplier', $produk, ['id'=>$value['id']]);
					}else{
						$produk = [
							'nama'	=>	$value['nama'],
							'harga'	=>	$value['harga'],
							'suplier_id'	=>	$_POST['id'],
							'created_by' => $this->get_user_account()['id']
						];

						$this->save_data('produk_suplier', $produk);
					}
				}

				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data Suplier berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data Suplier gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}
	function remove_produk(){
		try {
			$id = $_POST['id'];

			if ($this->db->delete('produk_suplier', ['id'=>$id])) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Berhasil menghapus produk suplier'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Gagal menghapus produk suplier'
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
			
			if ($this->my_update($dt['table'], ['status'=> (($_POST['status'] == 0) ? 1:0)], [$dt['id']=>$_POST['id']])) {
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
				for($i = 12 ;$i < count($sheetData);$i++)
				{
					if (!empty($sheetData[$i]['1'])) {
				        $kode 			= $sheetData[$i]['1'];
				        $nama 			= (!empty($sheetData[$i]['2'])) ? $sheetData[$i]['2'] : '';
				        $alamat			= (!empty($sheetData[$i]['3'])) ? $sheetData[$i]['3'] : '';
				        $no_hp 			= (!empty($sheetData[$i]['4'])) ? $sheetData[$i]['4'] : '';
				        $province_id	= (!empty($sheetData[$i]['5'])) ? $sheetData[$i]['5'] : '';
				        $city_id 		= (!empty($sheetData[$i]['6'])) ? $sheetData[$i]['6'] : '';
				        $email 			= (!empty($sheetData[$i]['7'])) ? $sheetData[$i]['7'] : '';
				        if (isset($sheetData[$i]['1'])) {
				        	$send [] = [
								'nama' 					=>  (!empty($nama)) ? strtoupper($nama) : '',
								'kode'					=>	(!empty($kode)) ? $kode : '',
								'alamat'				=>	(!empty($alamat)) ? $alamat : '',
								'no_hp'					=>	(!empty($no_hp)) ? $no_hp : '',
								'province_id'			=>	(!empty($province_id)) ? $province_id : 999,
								'city_id'				=>	(!empty($city)) ? $city : 999,
								'email'					=>	(!empty($email)) ? $email : '',
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
					'alamat' => $value['alamat'],
					'no_hp' => $value['no_hp'],
					'province_id' => $value['province_id'],
					'city_id' => $value['city_id'],
					'email' => $value['email'],
				];
				try {
					$this->save_data('master_data_suplier', $send);					
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
		if (($_POST['kode'] !== '')) {
			$this->db->like('kode', $_POST['kode']);
		}else if($_POST['nama'] !== ''){
			$this->db->like('nama', $_POST['nama']);
		}else if($_POST['alamat'] !== ''){
			$this->db->like('alamat', $_POST['alamat']);
		}else if($_POST['no_hp'] !== ''){
			$this->db->like('no_hp', $_POST['no_hp']);
		}else if($_POST['email'] !== ''){
			$this->db->like('email', $_POST['email']);
		}else if($_POST['province_id'] !== ''){
			$this->db->where('province_id', $_POST['province_id']);
		}else if($_POST['city_id_search'] !== ''){
			$this->db->where('city_id', $_POST['city_id_search']);
		}
       	$_POST['frm']   =   $this->arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $city  = "";
            $province = "";
            if (!empty($field['city_id'])) {
            	$city = $this->my_where('cities', ['id' => $field['city_id']])->row_array();
            	$city = (isset($city['name'])) ? $city['name'] : "";
            }
            if (!empty($field['province_id'])) {
            	$province = $this->my_where('provinces', ['id' => $field['province_id']])->row_array();
            	$province = (isset($province['name'])) ? $province['name'] : "";
            }
            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	'<a href="master_data_suplier/look_page/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	!empty($field['nama']) ? strtoupper($field['nama']) : '-';
            $row[]		=	!empty($field['no_hp']) ? $field['no_hp'] : '-';
            $row[]		=	!empty($field['alamat']) ? $field['alamat'] : '-';
            $row[]		=	!empty($field['city_id']) ? $province.' - '.$city : '-';
            $row[]		=	!empty($field['email']) ? $field['email'] : '-';
            $row[]		=	!empty($field['deskripsi']) ? $field['deskripsi'] : '-';
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('active', $field['status'])['color'].'">'.$this->get_status('active', $field['status'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="master_data_suplier/look_page/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							<li><a href="master_data_suplier/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
            							<li><a  onclick="change_status('.$field['id'].','.$field['status'].');"><i class="icon-close2"></i> '.(($field['status'] == 1) ? "Nonaktifkan" : "Aktifkan" ).'</a></li>
            							
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

	function add_produk(){
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['uid']		=	'uid'.rand(0,999999).rand(0,999999);	
		$this->my_view([$data['param']['parents_link'].'/add_page/index_produk'],$data);
	}

}
