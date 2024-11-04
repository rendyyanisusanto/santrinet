<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Master_data_bahan extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Bahan',
			'table'				=>	'master_data_bahan',
			'column'			=>	[ 'kode','nama', 'min_qty','qty','satuan_pakai_id', 'satuan_beli_id','gudang_id','status','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','nama', 'min_qty', 'qty','satuan_pakai_id', 'satuan_beli_id','gudang_id','status','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','nama', 'min_qty', 'qty','satuan_pakai_id', 'satuan_beli_id','gudang_id','status','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/master_data_bahan'
	];

	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['gudang']		=	$this->my_where('gudang',[])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['gudang']		=	$this->my_where('gudang',['status'=>1])->result_array();
		$data['satuan_beli']			=	$this->my_where('satuan_beli',['status'=>1])->result_array();
		$data['satuan_pakai']		=	$this->my_where('satuan_pakai',[])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js',$data['param']['parents_link'].'/add_page/modal_satuan', 'role/global/modal_setting', 'role/global/modal_gudang'],$data);
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
			$data['gudang']		=	$this->my_where('gudang',[])->result_array();
			$data['satuan_beli']			=	$this->my_where('satuan_beli',[])->result_array();
			$data['satuan_pakai']		=	$this->my_where('satuan_pakai',[])->result_array();
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();
			$data['ksb']	=	$this->db->query('select *,(select nama from satuan_beli where satuan_id = satuan_beli.id) as nama_satuan from konversi_satuan_bahan where bahan_id='.$id)->result_array();

			if (!empty($data['data_edit'])) {
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting', 'role/global/modal_gudang'],$data);
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
				$data['satuan_beli']	=	$this->my_where('satuan_beli', ['id'=>$data['data_edit']['satuan_beli_id']])->row_array();
				$data['satuan_pakai']	=	$this->my_where('satuan_pakai', ['id'=>$data['data_edit']['satuan_pakai_id']])->row_array();
				$data['gudang']	=	$this->my_where('gudang', ['id'=>$data['data_edit']['gudang_id']])->row_array();
				$data['created_by']	=	$this->my_where('users', ['id'=>$data['data_edit']['created_by']])->row_array();
				$data['updated_by']	=	(($data['data_edit']['updated_by'] != 0 && $data['data_edit']['updated_by'] != '') ? $this->my_where('users', ['id'=>$data['data_edit']['updated_by']])->row_array()['username'] : "Belum di update");

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
		$this->load->view('role/general/page/master_data_bahan/print_page/print_web', $data);
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
	          	'url'			=>	'role/general/page/master_data_bahan/print_page/cetak_pdf',
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
	function add_row_satuan(){
		$data['param'] 		= 	$this->arr;
		$data['rnd']	=	rand(0,999999);
		$data['satuan_beli']	=	$this->my_where('satuan_beli', ['status'=>1])->result_array();
		$this->my_view([$data['param']['parents_link'].'/add_page/add_row_satuan'], $data);
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
				'min_qty' => $_POST['min_qty'],
				'qty' => $_POST['qty'],
				'gudang_id' => $_POST['gudang_id'],
				'status' => $_POST['status'],
				'created_by' => $this->get_user_account()['id']
			];
			if ($this->save_data('master_data_bahan', $data)) {
				// insert konversi
				$master_data_bahan = $this->my_where('master_data_bahan', [
					'kode' => $_POST['kode'],
					'nama' => $_POST['nama'],
					'gudang_id' => $_POST['gudang_id']
				])->row_array();
				foreach ($_POST['satuan'] as $key => $value) {
					$konversi = [
						'bahan_id' => $master_data_bahan['id'], 
						'satuan_id' => $value['satuan_id'],
						'nilai' => $value['nilai'],
						'default' => (($_POST['default'] == $key) ? 1 : 0)
					];
					$this->save_data('konversi_satuan_bahan', $konversi);
				}
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data bahan berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data bahan gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
				'status'	=>	500,
				'msg'		=>	$e
			]);
		}

		// echo json_encode($_POST);
	}
	function simpan_satuan()
	{
		try {
			
			$data = [
				'kode' => $_POST['kode'],
				'nama' => $_POST['nama'],
				'status' => $_POST['status'],
			];
			if ($this->save_data('satuan_beli', $data)) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data satuan_beli berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data satuan_beli gagal ditambahkan'
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
				'min_qty' => $_POST['min_qty'],
				'qty' => $_POST['qty'],
				'satuan_pakai_id' => $_POST['satuan_pakai_id'],
				'satuan_beli_id' => $_POST['satuan_beli_id'],
				'gudang_id' => $_POST['gudang_id'],
				'status' => $_POST['status'],
				'updated_by' => $this->get_user_account()['id']
			];
			if ($this->my_update('master_data_bahan', $data, [$this->arr['id'] => $_POST['id']])) {

				foreach ($_POST['satuan'] as $key => $value) {
					$konversi = [
						'bahan_id' => $_POST['id'], 
						'satuan_id' => $value['satuan_id'],
						'nilai' => $value['nilai'],
						'default' => (($_POST['default'] == $key) ? 1 : 0)
					];
					if (isset($value['id'])) {
						// code...
						$this->my_update('konversi_satuan_bahan', $konversi, ['id'=>$value['id']]);
					}else{

						$this->save_data('konversi_satuan_bahan', $konversi);
					}
				}

				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data bahan berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data bahan gagal ditambahkan'
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
	function delete_satuan($id){
		try {
			$dt = $this->arr;
			if ($this->db->delete('konversi_satuan_bahan', [$dt['id']=>$id])) {
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
				for($i = 3 ;$i < count($sheetData);$i++)
				{
					if (!empty($sheetData[$i]['1'])) {
				        $kode 			= $sheetData[$i]['1'];
				        $nama 			= (!empty($sheetData[$i]['2'])) ? $sheetData[$i]['2'] : '';
				        $min_qty		= (!empty($sheetData[$i]['3'])) ? $sheetData[$i]['3'] : '';
				        $qty			= (!empty($sheetData[$i]['4'])) ? $sheetData[$i]['4'] : '';
				        $satuan_pakai_id= (!empty($sheetData[$i]['5'])) ? $sheetData[$i]['5'] : '';
				        $satuan_beli_id	= (!empty($sheetData[$i]['6'])) ? $sheetData[$i]['6'] : '';
				        $gudang_id 		= (!empty($sheetData[$i]['7'])) ? $sheetData[$i]['7'] : '';
				        if (isset($sheetData[$i]['1'])) {

				        	if (!empty($satuan_pakai_id)) {
				        		$qsatuan_pakai = $this->my_where('satuan_pakai', ['UPPER(nama)'=>strtoupper($satuan_pakai_id)]);
				        		if ($qsatuan_pakai->num_rows() > 0) {
				        			$satuan_pakai_id = $qsatuan_pakai->row_array()['id'];
				        		}else{
				        			$satuan_pakai_id = '';
				        		}
				        	}
				        	if (!empty($satuan_beli_id)) {
				        		$qsatuan_beli = $this->my_where('satuan_beli', ['UPPER(nama)'=>strtoupper($satuan_beli_id)]);
				        		if ($qsatuan_beli->num_rows() > 0) {
				        			$satuan_beli_id = $qsatuan_beli->row_array()['id'];
				        		}else{
				        			$satuan_beli_id = '';
				        		}
				        	}
				        	if (!empty($gudang_id)) {
				        		$qgudang_id = $this->my_where('gudang', ['UPPER(nama)'=>strtoupper($gudang_id)]);
				        		if ($qgudang_id->num_rows() > 0) {
				        			$gudang_id = $qgudang_id->row_array()['id'];
				        		}else{
				        			$gudang_id = '';
				        		}
				        	}

				        	$send [] = [
								'nama' 					=>  (!empty($nama)) ? strtoupper($nama) : '',
								'kode'					=>	(!empty($kode)) ? $kode : '',
								'min_qty'				=>	(!empty($min_qty)) ? $min_qty : '',
								'qty'					=>	(!empty($qty)) ? $qty : '',
								'satuan_pakai_id'			=>	(!empty($satuan_pakai_id)) ? $satuan_pakai_id : '',
								'satuan_beli_id'				=>	(!empty($satuan_beli_id)) ? $satuan_beli_id : '',
								'gudang_id'					=>	(!empty($gudang_id)) ? $gudang_id : '',
							];
				        }
			    	}
			        
			    }
			    $send	=	array_map('array_filter', $send);
			    $send 	=	array_filter($send);

				$data['gudang']		=	$this->my_where('gudang',[])->result_array();
				$data['satuan_beli']			=	$this->my_where('satuan_beli',[])->result_array();
				$data['satuan_pakai']		=	$this->my_where('satuan_pakai',[])->result_array();
			    $data['data_import']	=	$send;
				$this->my_view([$data['param']['parents_link'].'/import_page/proses_data'],$data);
				// echo json_encode($data);
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
					'kode' => $value['kode'],
					'nama' => $value['nama'],
					'min_qty' => $value['min_qty'],
					'qty' => $value['qty'],
					'satuan_pakai_id' => $value['satuan_pakai_id'],
					'satuan_beli_id' => $value['satuan_beli_id'],
					'gudang_id' => $value['gudang_id'],
					'status' => 1,
					'created_by' => $this->get_user_account()['id']
				];

				try {
					$this->save_data('master_data_bahan', $send);					
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
		}else if($_POST['min_qty'] !== ''){
			$this->db->like('min_qty', $_POST['min_qty']);
		}else if($_POST['qty'] !== ''){
			$this->db->like('qty', $_POST['qty']);
		}else if($_POST['gudang_id'] !== ''){
			$this->db->where('gudang_id', $_POST['gudang_id']);
		}
       	$_POST['frm']   =   $this->arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $satuan = $this->db->query('select *,(select nama from satuan_beli where satuan_beli.id = satuan_id) as nama_satuan from konversi_satuan_bahan where bahan_id='.$field['id'].' and konversi_satuan_bahan.default=1');
            $gudang = "";
            if (!empty($field['gudang_id'])) {
            	$gudang = $this->my_where('gudang', ['id' => $field['gudang_id']])->row_array();
            	
            }
            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	'<a href="master_data_bahan/edit_page/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	!empty($field['nama']) ? strtoupper($field['nama']) : '-';
            $row[]		=	!empty($field['min_qty']) ? $field['min_qty'] : '-';
            $row[]		=	!empty($field['qty']) ? $field['qty'] : '-';
			$row[]		=	($satuan->num_rows() > 0) ? $satuan->row_array()['nama_satuan'] : '-';
			
            $row[]		=	!empty($field['gudang_id']) ? '<b style="color:'.$gudang['color'].'">'.$gudang['nama'].'<b>' : '-';
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('active', $field['status'])['color'].'">'.$this->get_status('active', $field['status'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="master_data_bahan/look_page/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							<li><a href="master_data_bahan/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
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

	function get_gudang(){
		try {
			$data['param']	=	$this->arr;
			$data['gudang'] =	$this->my_where('gudang', ['status'=>1])->result_array();
			$this->my_view([$data['param']['parents_link'].'/add_page/gudang'],$data);
		} catch (Exception $e) {
			
		}
	}
}
