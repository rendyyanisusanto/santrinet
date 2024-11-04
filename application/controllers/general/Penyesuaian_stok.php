<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


class penyesuaian_stok extends MY_Controller {
	public $arr = [
			'title'				=>	'Penyesuaian Stok',
			'table'				=>	'penyesuaian_stok',
			'column'			=>	[ 'kode','tanggal', 'keterangan','status','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','tanggal', 'keterangan', 'status','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','tanggal', 'keterangan', 'status','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/penyesuaian_stok'
	];

	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal',$data['param']['parents_link'].'/index_page/modal_delete',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/modal',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}
	function add_bahan(){
		$data['param'] 		= 	$this->arr;
		$data['uid']		=	rand(0,99999).rand(0,999999);
		$data['post']		=	$_POST;
		$data['master_data_bahan']		=	$this->my_where('master_data_bahan', ['id'=>$_POST['bahan_id']])->row_array();
		$this->my_view([$data['param']['parents_link'].'/add_page/index_bahan'],$data);
	}
	function update_bahan(){
		$data['param'] 		= 	$this->arr;
		$data['uid']		=	rand(0,99999).rand(0,999999);
		$data['post']		=	$_POST;
		$data['master_data_bahan']		=	$this->my_where('master_data_bahan', ['id'=>$_POST['bahan_id']])->row_array();
		$this->my_view([$data['param']['parents_link'].'/add_page/index_bahan'],$data);
	}
	function print_inv($id){
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['penyesuaian_stok']		=	$this->my_where('penyesuaian_stok',['id'=>$id])->row_array();
				$data['detail_penyesuaian_stok']	=	$this->db->query('SELECT *, (select kode from master_data_bahan where master_data_bahan.id = bahan_id) as kode, (select nama from master_data_bahan where master_data_bahan.id = bahan_id) as nama_bahan FROM `detail_penyesuaian_stok` where penyesuaian_stok_id='.$id)->result_array();
				
				$this->load->view($data['param']['parents_link'].'/print_page/print', $data);
			}
		} catch (Exception $e) {
			
		}
	}
	function import_page(){
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/import_page/index',$data['param']['parents_link'].'/import_page/js'],$data);
	}
	function tab_content($id = 1){
		$url = [
			'add_produk',
			'add_produk',
			'add_new_produk',
			'add_satuan'
		];

		$data['param'] 		= 	$this->arr;
		if ($id == 2) {
			$data['satuan']	=	$this->my_where('satuan_barang', ['status'=>1])->result_array();
			$data['kategori']	=	$this->my_where('kategori_barang', ['status'=>1])->result_array();
			$data['gudang']	=	$this->my_where('gudang', ['status'=>1])->result_array();
		}
		$this->my_view([$data['param']['parents_link'].'/add_page/'.$url[$id], $data['param']['parents_link'].'/add_page/js_'.$url[$id]],$data);
	}
	public function edit_page($id = ""){
		if (!empty($id)) {
			$data['param'] 		= 	$this->arr;
			$data['id']			=	$id;

			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();
			$data['detail_penyesuaian_stok']	=	$this->db->query('SELECT *, (select kode from master_data_bahan where master_data_bahan.id = bahan_id) as kode, (select nama from master_data_bahan where master_data_bahan.id = bahan_id) as nama_bahan FROM `detail_penyesuaian_stok` where penyesuaian_stok_id='.$id)->result_array();
				
			
			if (!empty($data['data_edit'])) {
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/modal',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting'],$data);
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

				if (!empty($data['data_edit'])) {
					$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/look_page/index',$data['param']['parents_link'].'/look_page/js'],$data);
				}
			}
		} catch (Exception $e) {
			
		}
	}
	function nota($id){
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['penyesuaian_stok']		=	$this->my_where('penyesuaian_stok',['id'=>$id])->row_array();
				$data['detail_penyesuaian_stok']	=	$this->db->query('SELECT *, (select kode from master_data_bahan where master_data_bahan.id = bahan_id) as kode, (select nama from master_data_bahan where master_data_bahan.id = bahan_id) as nama_bahan FROM `detail_penyesuaian_stok` where penyesuaian_stok_id='.$id)->result_array();
				$this->my_view([$data['param']['parents_link'].'/print_page/nota'],$data);
			}
		} catch (Exception $e) {
			
		}
	}
	function print_web(){
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->get('penyesuaian_stok')->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select * from penyesuaian_stok where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}
		$this->load->view('role/general/page/penyesuaian_stok/print_page/print_web', $data);
	}
	function print_excel(){
		$data['param']	=	$this->arr;
		$find	=	[];
		if ($_POST['cetak'] == 'last_data') {
			$find		=	$this->db->limit(10)->get('penyesuaian_stok')->result_array();	
		}else{
			$find		=	$this->db->query('select * from penyesuaian_stok where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];
$path_exc = $this->my_where('setting_table', ['table'=>'laporan_penjualan','name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>'laporan_penjualan','name'=>'start_row_excel'])->row_array();        
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
        $sheet->setCellValue('A'.($no), 'Tanggal');
        $sheet->setCellValue('B'.($no), 'Kode');
        $sheet->setCellValue('C'.($no), 'Keterangan');

        $sheet->getStyle('A'.$no.':C'.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($find as $key => $value) {
            # code...
	        $sheet->setCellValue('A'.($no), date_format(date_create($value['tanggal']), 'd-m-Y'));
	        $sheet->setCellValue('B'.($no), $value['kode']);
	        $sheet->setCellValue('C'.($no), $value['keterangan']);
            
            $sheet->getStyle('A'.$no.':C'.$no)->applyFromArray($styleArray);
            $no++;
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
			$data[$data['param']['table']]		=	$this->db->limit(10)->get('penyesuaian_stok')->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select * from penyesuaian_stok where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];

		$param	=	[
	          	'url'			=>	'role/general/page/penyesuaian_stok/print_page/print_web',
	          	'customPaper'	=>	'A4',
	          	'data_value'	=>	$data,
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
				'tanggal' => $_POST['tanggal'],
				'keterangan' => $_POST['keterangan'],
				'status' => $_POST['status'],
				'created_by' => $this->get_user_account()['id']
			];
			if ($this->save_data('penyesuaian_stok', $data)) {
				$penyesuaian_stok = $this->my_where('penyesuaian_stok', [
					'kode' => $_POST['kode'],
					'tanggal' => $_POST['tanggal'],
				])->row_array();

				foreach ($_POST['data'] as $value) {
					$detail = [
						'bahan_id' => $value['bahan_id'],
						'stok_awal' => $value['qty'],
						'stok_akhir' => $value['qty_akhir'],
						'penyesuaian_stok_id' => $penyesuaian_stok['id']

					];

					$this->save_data('detail_penyesuaian_stok', $detail);
				}
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data customer berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data customer gagal ditambahkan'
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
				'customer_id' => $_POST['customer_id'],
				'tanggal' => $_POST['tanggal'],
				'keterangan' => $_POST['keterangan'],
				'is_ppn' => ((isset($_POST['is_ppn'])) ? 1 :0),
				'ppn_id' => ((isset($_POST['is_ppn'])) ? $_POST['is_ppn'] :0),
				'subtotal' => $_POST['subtotal'],
				'diskon' => $_POST['diskon'],
				'total' => $_POST['total'],
				'status' => $_POST['status'],
				'status_produksi' =>((isset($_POST['status_produksi'])) ? 1 :0),
				'total_ppn' => $_POST['total_ppn'],
				'updated_by' => $this->get_user_account()['id']
			];
			if ($this->my_update('penyesuaian_stok', $data, [$this->arr['id'] => $_POST['id']])) {
				$produksi = [];
				if(isset($_POST['status_produksi'])){
					$kodeproduksi = 'Prod-'.$_POST['kode'].rand(0,9999);
					$dataproduksi = [
						'kode'		=>	$kodeproduksi,
						'tanggal'	=>	$_POST['tanggal'],
						'keterangan'	=>	"Produksi dari SO : ".$_POST['kode'],
						'status'	=>	1,
						'status_produksi'	=>	0,
						'so_id'		=>	$_POST['id'],
						'created_by' => $this->get_user_account()['id']
					];
					if($this->save_data('produksi', $dataproduksi)){
						$produksi = $this->my_where('produksi', [
							'kode'		=>	$kodeproduksi,
							'tanggal'	=>	$_POST['tanggal'],
						])->row_array(); 
					}
				}
				foreach ($_POST['data'] as $value) {
					if($value['status_produksi'] == 0){
						if (!isset($value['id'])) {
							$data_detail = [
								'penyesuaian_stok_id' =>  $_POST['id'],
								'produk_id' => $value['produk_id'],
								'qty' => $value['qty'],
								'harga' => preg_replace("/[^0-9]/", "", $value['harga']),
								'diskon' => $value['diskon'],
								'subtotal' => $value['subtotal'],
							];
							$this->save_data('detail_penyesuaian_stok', $data_detail);
						}else{

							$data_detail = [
								'qty' => $value['qty'],
								'harga' => preg_replace("/[^0-9]/", "", $value['harga']),
								'diskon' => $value['diskon'],
								'subtotal' => $value['subtotal'],
							];
							$this->my_update('detail_penyesuaian_stok', $data_detail, ['id'=>$value['id']]);
						}
					}else{
						// add produk
						$dataproduk = [
							'kode'	=>	$value['kode'],
							'nama'	=>	$value['nama'],
							'qty'	=>	$value['qty'],
							'min_qty'	=>	0,
							'satuan_barang_id'	=>	$value['satuan_id'],
							'harga'	=>	preg_replace("/[^0-9]/", "", $value['harga']),
							'kategori_barang_id'	=>	$value['kategori_id']
						];
						$this->save_data('produk', $dataproduk);
						$getproduk = $this->my_where('produk',[
							'kode'	=>	$value['kode'],
							'nama'	=>	$value['nama'],
						])->row_array();


						// add detail produk
						$data_detail = [
							'penyesuaian_stok_id' => $_POST['id'],
							'produk_id' => $getproduk['id'],
							'qty' => $value['qty'],
							'harga' => preg_replace("/[^0-9]/", "", $value['harga']),
							'diskon' => $value['diskon'],
							'subtotal' => $value['subtotal'],
							'status_produksi'	=>	1
						];
						$this->save_data('detail_penyesuaian_stok', $data_detail);
						
						
						// add detail produksi
						$detailproduksi = [
							'produk_id'	=>	$getproduk['id'],
							'produksi_id'	=>	$produksi['id'],
							'qty'		=>	$value['qty'],
						];

						$this->save_data('detail_produksi_produk', $detailproduksi);
					}
					
				}


				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data customer berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data customer gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}
	function hapus_data_produk(){
		$id = $_POST['id'];

		if ($this->db->delete('detail_penyesuaian_stok', ['id'=>$id])) {
			echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data berhasil dihapus'
				]);
		}else{
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data gagal dihapus'
				]);
		}
	}
	function add_produk_new_row()
	{
		try {
			
		$data['param'] 		= 	$this->arr;
		$data['uid']		=	rand(0,99999).rand(0,999999);
		$data['post']		=	$_POST;
		$data['produk']		=	[
			'kode'	=> $_POST['kode_barang_produksi'],
			'nama'	=> $_POST['nama'],
			'qty'	=> $_POST['qty'],
			'kategori_id'	=> $_POST['kategori_id'],
			'satuan_id'	=> $_POST['satuan_id'],
			'gudang_id'	=> $_POST['gudang_id'],
		];
		
		$data['satuan_barang']	=	$this->my_where('satuan_barang', ['id'=>$_POST['satuan_id']])->row_array();
		$data['post']['harga']	=	preg_replace("/[^0-9]/", "", $_POST['harga']);
		$data['produksi_status']	=	1;
		$this->my_view([$data['param']['parents_link'].'/add_page/index_bahan_produksi',$data['param']['parents_link'].'/add_page/js_bahan'],$data);

		} catch (Exception $e) {
			echo json_encode([
				'status'	=>	500,
				'msg'		=>	$e
			]);
		}

		// echo json_encode($_POST);
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
					'kode' => $_POST['kode'],
					'nik' => $_POST['nik'],
					'nama' => $_POST['nama'],
					'no_hp' => $_POST['no_hp'],
					'jk' => $_POST['jk'],
					'province_id' => $_POST['province_id'],
					'city_id' => $_POST['city_id'],
					'alamat' => $_POST['alamat'],
					'email' => $_POST['email'],
					'tanggal_masuk' => $_POST['tanggal_masuk'],
					'status' => $_POST['status'],
					'jabatan_id'=>$_POST['jabatan_id'],
					'created_by' => $this->get_user_account()['id']
				];
				try {
					$this->save_data('penyesuaian_stok', $send);					
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

	function get_produk_select(){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
	     $this->db->where("nama like '%".$searchTerm."%' ");
	     $this->db->or_where("kode like '%".$searchTerm."%' ")->limit(5);
	     $fetched_records = $this->db->get('produk');
	     $bahan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['nama'].' ('.$user['kode'].')');
	     }

      	echo json_encode($data);
	
	}
	function get_detail_produk_select($id = ""){
		$send = [];
		try {
			if ($id !== "") {
				$data = $this->my_where("produk", ['id'=>$id])->row_array();
				$send = [
					'status' => 200,
					'data'	=>	$data
				];
			}else{
				$send = [
					'status' => 400,
					'data'	=>	[]
				];
			}			
		} catch (Exception $e) {
			
				$send = [
					'status' => 500,
					'data'	=>	[],
					'msg'	=>	$e
				];
		}

		echo json_encode($send);
	}
	function get_satuan_by_id($id){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
	     // $this->db->where();
	     // $this->db->where("nama like '%".$searchTerm."%' ")->limit(5);
	     $fetched_records = $this->db->query("SELECT konversi_satuan_bahan.id, konversi_satuan_bahan.bahan_id,
								konversi_satuan_bahan.satuan_id,
								konversi_satuan_bahan.nilai,
								master_data_bahan.nama,
								satuan_beli.nama
								FROM
								konversi_satuan_bahan
								INNER JOIN master_data_bahan ON master_data_bahan.id = konversi_satuan_bahan.bahan_id
								INNER JOIN satuan_beli ON satuan_beli.id = konversi_satuan_bahan.satuan_id
								where bahan_id=".$id." and 
								satuan_beli.nama like '%".$searchTerm."%' order by konversi_satuan_bahan.default DESC"  

								);

	     $bahan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['nama']);
	     }

      	echo json_encode($data);	
	}

	function simpan_metode(){
		try {
			$data['param']	=	$this->arr;
			$data['post']	=	$_POST;
			$data['post']['jumlah']	=	preg_replace("/[^0-9]/", "", $_POST['jumlah']);
			if ($_POST['metode_pembayaran'] == "TRANSFER") {
				$data['bank']	=	$this->my_where('bank', ['id'=>$_POST['bank_id']])->row_array();
			}
			$data['rand']	=	rand(0,999999).rand(0,999999);
			$this->my_view([$data['param']['parents_link'].'/add_page/table_metode'],$data);
		} catch (Exception $e) {
			
		}
	}

	function metode_transfer($id=""){
		try {
			if($id !== ""){
				$data['param']	=	$this->arr;
				$data['bank']	=	$this->my_where('bank', [])->result_array();

				$this->my_view([$data['param']['parents_link'].'/add_page/metode_transfer'],$data);
			}
		} catch (Exception $e) {
			
		}
	}

	public function datatable()
	{
		if (!empty($_POST['mulai'])) {
			$this->db->where('DATE(tanggal) >=', date_format(date_create($_POST['mulai']),"Y/m/d"));
		}else if(!empty($_POST['sampai'])){
			$this->db->where('DATE(tanggal) <=', date_format(date_create($_POST['sampai']),"Y/m/d"));
		}
		
       	$_POST['frm']   =   $this->arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;

            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	date_format(date_create($field['tanggal']), 'd-M-Y');
            $row[]		=	'<a href="penyesuaian_stok/nota/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	$field['keterangan'];
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('transaction', $field['status'])['color'].'">'.$this->get_status('transaction', $field['status'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="penyesuaian_stok/nota/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							'.(($field['status'] == 1) ? '<li><a href="penyesuaian_stok/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>':'').'
            							
            							<li><a  onclick="cancel_item('.$field['id'].');"><i class="icon-trash"></i> Batalkan Transaksi</a></li>
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

	
	function add_row_satuan(){
		$data['param'] 		= 	$this->arr;
		$data['rnd']	=	rand(0,999999);
		$data['satuan_beli']	=	$this->my_where('satuan_beli', ['status'=>1])->result_array();
		$this->my_view([$data['param']['parents_link'].'/add_page/add_row_satuan'], $data);
	}

	function get_table_satuan($id){
		try {
			$data['param'] 		= 	$this->arr;
			
			$data['konversi_satuan_bahan']	=	$this->db->query("SELECT konversi_satuan_bahan.id, konversi_satuan_bahan.bahan_id,
								konversi_satuan_bahan.satuan_id,
								konversi_satuan_bahan.nilai,
								master_data_bahan.nama as bahan_nama,
								satuan_beli.nama as satuan_nama
								FROM
								konversi_satuan_bahan
								INNER JOIN master_data_bahan ON master_data_bahan.id = konversi_satuan_bahan.bahan_id
								INNER JOIN satuan_beli ON satuan_beli.id = konversi_satuan_bahan.satuan_id
								where bahan_id=".$id  
								)->result_array();

			$this->my_view([$data['param']['parents_link'].'/add_page/table_konversi_satuan'], $data);

		} catch (Exception $e) {
			
		}
	}


	function get_bahan_select(){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
	     $this->db->where("nama like '%".$searchTerm."%' ");
	     $this->db->or_where("kode like '%".$searchTerm."%' ")->limit(5);
	     $this->db->order_by('id', 'DESC');
	     $fetched_records = $this->db->get('master_data_bahan');
	     $bahan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['nama'].' ('.$user['kode'].')');
	     }

      	echo json_encode($data);
	
	}
}
