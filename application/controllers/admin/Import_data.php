<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class import_data extends MY_Controller {
	public $arr = [
			'title'				=>	'Import Data',
			'table'				=>	'import_data',
			'column'			=>	[ 'kode','nama', 'status'],
			'column_order'		=>	[ 'id','kode','nama', 'status'],
			'column_search'		=>	[ 'id','kode','nama', 'status'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/import_data'
	];

	public $arr_tbl = [
		'master_data_suplier' => [ 'kode','nama', 'alamat','no_hp','email', 'deskripsi'],
		'master_data_bahan' => [ 'kode','nama', 'min_qty','qty', 'gudang_id'],
		'master_data_customer' => [ 'kode','nama', 'alamat','no_hp','no_hp2','no_hp3','email', 'deskripsi'],
		'produk' => ['kode','nama', 'min_qty','qty','kategori_barang_id', 'satuan_barang_id','harga','gudang_id'],
		'karyawan' => [ 'kode','nik','nama', 'alamat','jk','no_hp', 'email','tanggal_masuk', 'jabatan_id','status_karyawan_id']
	];

	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function import_process($value='')
	{
		try {
			$data['param'] 		= 	$this->arr;
			$file_mimes = array('application/octet-stream', 'application/vnd.ms-excel', 'application/x-csv', 'text/x-csv', 'text/csv', 'application/csv', 'application/excel', 'application/vnd.msexcel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
	 		$arrtbl = $this->arr_tbl[$_POST['table']];
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
				$no=0;
				$data['arr_tbl']	=	$arrtbl;
				$data['table']	=	$_POST['table'];
				if ($_POST['table'] == 'master_data_bahan') {
					for($i = 3 ;$i < count($sheetData);$i++)
					{
						if (!empty($sheetData[$i]['1'])) {
					        $kode 			= $sheetData[$i]['1'];
					        $nama 			= (!empty($sheetData[$i]['2'])) ? $sheetData[$i]['2'] : '';
					        $min_qty		= (!empty($sheetData[$i]['3'])) ? $sheetData[$i]['3'] : '';
					        $qty			= (!empty($sheetData[$i]['4'])) ? $sheetData[$i]['4'] : '';
					        $satuan_id 		= (!empty($sheetData[$i]['5'])) ? $sheetData[$i]['5'] : '';
					        $harga_satuan 	= (!empty($sheetData[$i]['6'])) ? $sheetData[$i]['6'] : '';
					        $gudang_id 		= (!empty($sheetData[$i]['7'])) ? $sheetData[$i]['7'] : '';
					        if (isset($sheetData[$i]['1'])) {

					        	
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
									'satuan_id'				=>	(!empty($satuan_id)) ? $satuan_id : '',
									'harga_satuan'			=>	(!empty($harga_satuan)) ? $harga_satuan : '',
									'gudang_id'				=>	(!empty($gudang_id)) ? $gudang_id : '',
								];
					        }
				    	}
				    }
				    $send	=	array_map('array_filter', $send);
				    $send 	=	array_filter($send);
					$data['gudang']		=	$this->my_where('gudang',[])->result_array();
				    $data['data_import']	=	$send;
					$this->my_view([$data['param']['parents_link'].'/index_page/proses_data_bahan'],$data);
				}
				else if($_POST['table'] == 'produk'){
					for($i = 3 ;$i < count($sheetData);$i++)
					{
						if (!empty($sheetData[$i]['1'])) {
					        $kode 			= $sheetData[$i]['1'];
					        $nama 			= (!empty($sheetData[$i]['2'])) ? $sheetData[$i]['2'] : '';
					        $min_qty		= (!empty($sheetData[$i]['3'])) ? $sheetData[$i]['3'] : '';
					        $qty			= (!empty($sheetData[$i]['4'])) ? $sheetData[$i]['4'] : '';
					        $harga_beli		= (!empty($sheetData[$i]['5'])) ? (int)preg_replace("/([^0-9\\.])/i", "", $sheetData[$i]['5'])  : '';
					        $satuan_barang_id= (!empty($sheetData[$i]['6'])) ? $sheetData[$i]['6'] : '';
					        $kategori_barang_id	= (!empty($sheetData[$i]['7'])) ? $sheetData[$i]['7'] : '';
					        $gudang_id 		= (!empty($sheetData[$i]['8'])) ? $sheetData[$i]['8'] : '';
					        if (isset($sheetData[$i]['1'])) {
					        	if (!empty($satuan_barang_id)) {
					        		$qsatuan_barang = $this->my_where('satuan_barang', ['UPPER(nama)'=>strtoupper($satuan_barang_id)]);
					        		if ($qsatuan_barang->num_rows() > 0) {
					        			$satuan_barang_id = $qsatuan_barang->row_array()['id'];
					        		}else{
					        			$satuan_barang_id = '';
					        		}
					        	}
					        	if (!empty($kategori_barang_id)) {
					        		$qkategori_barang = $this->my_where('kategori_barang', ['UPPER(nama)'=>strtoupper($kategori_barang_id)]);
					        		if ($qkategori_barang->num_rows() > 0) {
					        			$kategori_barang_id = $qkategori_barang->row_array()['id'];
					        		}else{
					        			$kategori_barang_id = '';
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
									'harga_beli'					=>	(!empty($harga_beli)) ? $harga_beli : '',
									'satuan_barang_id'		=>	(!empty($satuan_barang_id)) ? $satuan_barang_id : '',
									'kategori_barang_id'	=>	(!empty($kategori_barang_id)) ? $kategori_barang_id : '',
									'gudang_id'				=>	(!empty($gudang_id)) ? $gudang_id : '',
								];
					        }
				    	}
				        
				    }
				    $send	=	array_map('array_filter', $send);
				    $send 	=	array_filter($send);

					$data['gudang']		=	$this->my_where('gudang',[])->result_array();
					$data['satuan_barang']			=	$this->my_where('satuan_barang',[])->result_array();
					$data['kategori_barang']		=	$this->my_where('kategori_barang',[])->result_array();
				    $data['data_import']	=	$send;
					$this->my_view([$data['param']['parents_link'].'/index_page/proses_data_barang_jadi'],$data);
				}else if($_POST['table'] == 'karyawan'){
					for($i = 3 ;$i < count($sheetData);$i++)
					{
						if (!empty($sheetData[$i]['1'])) {
					        $kode 			= $sheetData[$i]['1'];
					        $nik 			= (!empty($sheetData[$i]['2'])) ? $sheetData[$i]['2'] : '';
					        $nama			= (!empty($sheetData[$i]['3'])) ? $sheetData[$i]['3'] : '';
					        $alamat			= (!empty($sheetData[$i]['4'])) ? $sheetData[$i]['4'] : '';
					        $jk				= (!empty($sheetData[$i]['5'])) ? $sheetData[$i]['5'] : '';
					        $no_hp			= (!empty($sheetData[$i]['6'])) ? $sheetData[$i]['6'] : '';
					        $email			= (!empty($sheetData[$i]['7'])) ? $sheetData[$i]['7'] : '';
					        $tanggal_masuk  = (!empty($sheetData[$i]['8'])) ? $sheetData[$i]['8'] : '';
					        $jabatan_id		= (!empty($sheetData[$i]['9'])) ? $sheetData[$i]['9'] : '';
					        $status_karyawan_id		= (!empty($sheetData[$i]['10'])) ? $sheetData[$i]['10'] : '';
					        if (isset($sheetData[$i]['1'])) {

					        	if (!empty($jabatan_id)) {
					        		$qjabatan_id = $this->my_where('jabatan', ['UPPER(nama)'=>strtoupper($jabatan_id)]);
					        		if ($qjabatan_id->num_rows() > 0) {
					        			$jabatan_id = $qjabatan_id->row_array()['id'];
					        		}else{
					        			$jabatan_id = '';
					        		}
					        	}
					        	if (!empty($status_karyawan_id)) {
					        		$qstatus_karyawan_id = $this->my_where('status_karyawan', ['UPPER(nama)'=>strtoupper($status_karyawan_id)]);
					        		if ($qstatus_karyawan_id->num_rows() > 0) {
					        			$status_karyawan_id = $qstatus_karyawan_id->row_array()['id'];
					        		}else{
					        			$status_karyawan_id = '';
					        		}
					        	}

					        	$send [] = [
									'kode'					=>	(!empty($kode)) ? $kode : '',
									'nik'					=>	(!empty($nik)) ? $nik : '',
									'nama' 					=>  (!empty($nama)) ? strtoupper($nama) : '',
									'alamat'				=>	(!empty($alamat)) ? $alamat : '',
									'jk'					=>	(!empty($jk)) ? $jk : '',
									'no_hp'					=>	(!empty($no_hp)) ? $no_hp : '',
									'email'					=>	(!empty($email)) ? $email : '',
									'tanggal_masuk'			=>	(!empty($tanggal_masuk)) ? $tanggal_masuk : '',
									'jabatan_id'			=>	(!empty($jabatan_id)) ? $jabatan_id : '',
									'status_karyawan_id'	=>	(!empty($status_karyawan_id)) ? $status_karyawan_id : '',
								];
					        }
				    	}
				        
				    }
				    $send	=	array_map('array_filter', $send);
				    $send 	=	array_filter($send);

					$data['jabatan']				=	$this->my_where('jabatan',[])->result_array();
					$data['status_karyawan']		=	$this->my_where('status_karyawan',[])->result_array();
				    $data['data_import']	=	$send;
					$this->my_view([$data['param']['parents_link'].'/index_page/proses_data_karyawan'],$data);
				}else{
					for($i = 3 ;$i < count($sheetData);$i++)
					{

						if (!empty($sheetData[$i]['1'])) {
							$iter = 1;
							foreach ($arrtbl as $value) {
								$send[$no][$value] = ((!empty($sheetData[$i][$iter])) ? $sheetData[$i][$iter] : '');
								$iter++;
							}
				    	}
				        $no++;
				    }
				    $send	=	array_map('array_filter', $send);
				    $send 	=	array_filter($send);
				    $data['data_import']	=	$send;
				    
					$this->my_view([$data['param']['parents_link'].'/index_page/proses_data'],$data);
				}
			}
		} catch (Exception $e) {
			
		}

	}

	public function import_data_proses()
	{
		try {
			$arr=$this->arr_tbl[$_POST['table']];
			$send = [];
			$i = 0;

			if($_POST['table'] == "master_data_customer"){
				foreach ($_POST['dt'] as $key => $value) {
					try {
						
						$send = [ 
							'kode'	=>	$value['kode'],
							'nama'	=>	$value['nama'], 
							'alamat'=>	$value['alamat'],
							'no_hp'	=>	$value['no_hp'],
							'email'	=>	$value['email'], 
							'deskripsi'	=>	$value['deskripsi']
						];
						$this->save_data($_POST['table'], $send);
						
						$getdt = $this->my_where($_POST['table'], $send)->row_array();
						
						if(!empty($value['no_hp2'])){
							$phone = [
								'customer_id'	=>	$getdt['id'],
								'name'			=>	"phone",
								'value'			=>	$value['no_hp2']
							];
							
							$this->save_data('additional_master_data_customer', $phone);
						}
						if(!empty($value['no_hp3'])){
							$phone = [
								'customer_id'	=>	$getdt['id'],
								'name'			=>	"phone",
								'value'			=>	$value['no_hp3']
							];
							
							$this->save_data('additional_master_data_customer', $phone);
						}
					} catch (Exception $e) {
						break;
					}
					$i++;
				}
			}elseif($_POST['table'] == "master_data_bahan"){
				foreach ($_POST['dt'] as $key => $value) {
					try {
						
						$send = [ 
							'kode'	=>	$value['kode'],
							'nama'	=>	$value['nama'], 
							'min_qty'=>	$value['min_qty'],
							'qty'	=>	$value['qty'],
							'harga_satuan'	=>	$value['harga_satuan'],
							'gudang_id'	=>	$value['gudang_id']
						];
						$this->save_data($_POST['table'], $send);
						
						$getdt = $this->my_where($_POST['table'], $send)->row_array();
						
						if(!empty($value['satuan_id'])){
							// get satuan
							$satuan = $this->my_where('satuan_beli', ['UPPER(nama)'=>strtoupper($value['satuan_id'])]);

							if($satuan->num_rows() == 0){
								$this->save_data('satuan_beli',[
									'kode'	=>	rand(0, 999999),
									'nama'	=>	strtoupper($value['satuan_id']),
									'status'=>	1
								]);
								
								$satuan = $this->my_where('satuan_beli', ['UPPER(nama)'=>strtoupper($value['satuan_id'])]);
							}


							// konversi satuan
							$konversi = [
								'bahan_id'	=>	$getdt['id'],
								'satuan_id'	=>	$satuan->row_array()['id'],
								'nilai'		=>	1,
								'default'	=>	1
							];

							$this->save_data('konversi_satuan_bahan', $konversi);
						}
						
					} catch (Exception $e) {
						break;
					}
					$i++;
				}
			}
			else{
				foreach ($_POST['dt'] as $key => $value) {
					try {
						foreach ($arr as $value_arr) {
							$send[$value_arr] = $value[$value_arr];
						}
						$this->save_data($_POST['table'], $send);					
					} catch (Exception $e) {
						break;
					}
					$i++;
				}
			}

			echo json_encode([
				'status'	=>  200,
				'msg'		=>	'Data berhasil diimport',
				'data' => $send
			]);
		} catch (Exception $e) {
			echo json_encode([
				'status'	=>  500,
				'msg'		=>	'Data gagal diimport'
			]);
		}
	}
	
}
