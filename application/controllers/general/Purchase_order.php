<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


class purchase_order extends MY_Controller {
	public $arr = [
			'title'				=>	'Purchase Order',
			'table'				=>	'purchase_order',
			'column'			=>	[ 'kode','suplier_id','tanggal', 'keterangan','is_ppn','ppn_id','subtotal', 'diskon','total', 'status','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','suplier_id','tanggal', 'keterangan', 'is_ppn','ppn_id','subtotal', 'diskon','total', 'status','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','suplier_id','tanggal', 'keterangan', 'is_ppn','ppn_id','subtotal', 'diskon','total', 'status','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/purchase_order'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['province']	=	$this->my_where('provinces',[])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal',$data['param']['parents_link'].'/index_page/modal_delete',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['suplier']	=	$this->my_where('master_data_suplier', ['status'=>1])->result_array();
		$data['ppn']	=	$this->my_where('ppn', ['is_active'=>1])->row_array();
		$data['gudang']		=	$this->my_where('gudang',['status'=>1])->result_array();
		$data['status_transaksi']			=	$this->my_where('status_transaksi',[])->result_array();
		$data['satuan_beli']			=	$this->my_where('satuan_beli',['status'=>1])->result_array();
		$data['satuan_pakai']		=	$this->my_where('satuan_pakai',[])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js',$data['param']['parents_link'].'/add_page/modal',$data['param']['parents_link'].'/add_page/modal_edit_bahan', 'role/global/modal_setting'],$data);
	} 
	function edit_page($id = ""){
		try {
			if ($id !=='') {
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['suplier']	=	$this->my_where('master_data_suplier', ['status'=>1])->result_array();
				$data['ppn']	=	$this->my_where('ppn', ['is_active'=>1])->row_array();
				$data['gudang']		=	$this->my_where('gudang',['status'=>1])->result_array();
				$data['satuan_beli']			=	$this->my_where('satuan_beli',['status'=>1])->result_array();
				$data['satuan_pakai']		=	$this->my_where('satuan_pakai',[])->result_array();
				$data['status_transaksi']			=	$this->my_where('status_transaksi',[])->result_array();
				$data['data_edit']['po']	=	$this->my_where('purchase_order', ['id'=>$id])->row_array();
				$data['data_edit']['detail']=	$this->my_where('v_detail_po_bahan', ['purchase_order_id'=>$id])->result_array();

				
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/js',$data['param']['parents_link'].'/edit_page/modal',$data['param']['parents_link'].'/edit_page/modal_edit_bahan', 'role/global/modal_setting'],$data);
			}
		} catch (Exception $e) {
			
		}

	}
	function print_inv($id){
		if (!empty($id)) {
			$data['param'] 		= 	$this->arr;
			$data['id']			=	$id;

			$data['jabatan']	=	$this->my_where('jabatan',['status'=>1])->result_array();
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();
			$data['notaheader']		=	$this->get_setting_table('purchase_order', 'template_nota_header');
			$data['notafooter']		=	$this->get_setting_table('purchase_order', 'template_nota_footer');
			$data['detail_purchase_order']	=	$this->db->query('select *, (select nama from master_data_bahan where master_data_bahan.id = bahan_id) as nama_bahan, (select nama from satuan_beli where satuan_beli.id=satuan_beli_id) as nama_satuan from detail_purchase_order where purchase_order_id = '.$id)->result_array();
			$data['slice']	=	[];
			$n = 0;
			$i = 0;
			foreach ($data['detail_purchase_order'] as $key => $value) {
				if ($i<=10) {
					$data['slice'][$n]['detail_purchase_order'][] = $value;
				}else{
					$n++;
					$i=0;
				}
				$i++;
			}
			$data['master_data_suplier']	=	$this->my_where('master_data_suplier',['id'=>$data['data_edit']['suplier_id']])->row_array();
			$data['ppn']		=	$this->my_where('ppn', ['id'=>$data['data_edit']['ppn_id']])->row_array();
			if (!empty($data['data_edit'])) {
				$this->load->view($data['param']['parents_link'].'/invoice/print', $data);
			}			
		}
	}
	function print_struk($id){
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['purchase_order']		=	$this->my_where('purchase_order',['id'=>$id])->row_array();
				$data['master_data_suplier']	=	$this->my_where('master_data_suplier',['id'=>$data['purchase_order']['suplier_id']])->row_array();
				$data['detail_purchase_order']	=	$this->db->query('select *, (select nama from master_data_bahan where master_data_bahan.id = bahan_id) as nama_bahan, (select nama from satuan_beli where satuan_beli.id=satuan_beli_id) as nama_satuan from detail_purchase_order where purchase_order_id = '.$id)->result_array();
				
				$data['struk']		=	$this->get_setting_table('purchase_order', 'template_struk_header');
				$data['strukfooter']		=	$this->get_setting_table('purchase_order', 'template_struk_footer');
				$this->load->view($data['param']['parents_link'].'/invoice/print_struk', $data);
			}
		} catch (Exception $e) {
			
		}
	}
	public function get_edit_data($value='')
	{
		$_POST['harga'] = preg_replace("/[^0-9]/", "", $_POST['harga']);
		$subtotal = (($_POST['harga']*$_POST['qty']) - (($_POST['harga']*$_POST['qty'])/100) * $_POST['diskon']);
		echo json_encode([
			'post'	=>	$_POST,
			'subtotal'	=> $subtotal,
			'subtotaltext'=> 'Rp. '.number_format($subtotal, 0, '.','.')

		]);
	}
	function add_produk_row(){
		$data['param'] 		= 	$this->arr;
		$data['uid']		=	rand(0,99999).rand(0,999999);
		$data['post']		=	$_POST;
		$data['master_data_bahan']	=	$this->my_where('master_data_bahan', ['id'=>$_POST['bahan_id']])->row_array();
		$data['konversi_satuan_bahan']	=	$this->my_where('konversi_satuan_bahan', ['id'=>$_POST['konversi_satuan_id']])->row_array();
		$data['satuan']	=	$this->my_where('satuan_beli', ['id'=>$data['konversi_satuan_bahan']['satuan_id']])->row_array();
		$data['post']['harga']	=	preg_replace("/[^0-9]/", "", $_POST['harga']);
		$this->my_view([$data['param']['parents_link'].'/add_page/index_bahan',$data['param']['parents_link'].'/add_page/js_bahan'],$data);
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
			$data['gudang']	=	$this->my_where('gudang', ['status'=>1])->result_array();
		}
		$this->my_view([$data['param']['parents_link'].'/add_page/'.$url[$id], $data['param']['parents_link'].'/add_page/js_'.$url[$id]],$data);
	}
	public function invoice($id = ""){
		if (!empty($id)) {
			$data['param'] 		= 	$this->arr;
			$data['id']			=	$id;

			$data['jabatan']	=	$this->my_where('jabatan',['status'=>1])->result_array();
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();
			$data['detail_purchase_order']	=	$this->db->query('select *, (select nama from master_data_bahan where master_data_bahan.id = bahan_id) as nama_bahan, (select nama from satuan_beli where satuan_beli.id=satuan_beli_id) as nama_satuan from detail_purchase_order where purchase_order_id = '.$id)->result_array();
			$data['master_data_suplier']	=	$this->my_where('master_data_suplier',['id'=>$data['data_edit']['suplier_id']])->row_array();
			$data['ppn']		=	$this->my_where('ppn', ['id'=>$data['data_edit']['ppn_id']])->row_array();
			if (!empty($data['data_edit'])) {
				$this->my_view([$data['param']['parents_link'].'/invoice/index',$data['param']['parents_link'].'/invoice/js'],$data);
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
	function print_web(){
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->get('v_lap_po')->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select * from v_lap_po where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}
		$this->load->view('role/general/page/purchase_order/print_page/print_web', $data);
	}
	function print_excel(){
		$data['param']	=	$this->arr;
		$find	=	[];
		if ($_POST['cetak'] == 'last_data') {
			$find		=	$this->db->limit(10)->get('v_lap_po')->result_array();	
		}else{
			$find		=	$this->db->query('select * from v_lap_po where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];
		$path_exc = $this->my_where('setting_table', ['table'=>'purchase_order','name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>'purchase_order','name'=>'start_row_excel'])->row_array();        
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
        $sheet->setCellValue('C'.($no), 'Suplier');
        $sheet->setCellValue('D'.($no), 'Subtotal');
        $sheet->setCellValue('E'.($no), 'Diskon');
        $sheet->setCellValue('F'.($no), 'PPN');
        $sheet->setCellValue('G'.($no), 'Total');

        $sheet->getStyle('A'.$no.':G'.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($find as $key => $value) {
            # code...
	        $sheet->setCellValue('A'.($no), date_format(date_create($value['tanggal']), 'd-m-Y'));
	        $sheet->setCellValue('B'.($no), $value['kode']);
	        $sheet->setCellValue('C'.($no), $value['nama_customer']);
	        $sheet->setCellValue('D'.($no), 'Rp. '.number_format($value['subtotal'] ,0,'.','.'));
	        $sheet->setCellValue('E'.($no), 'Rp. '.number_format($value['diskon'],0,'.','.'));
	        $sheet->setCellValue('F'.($no), 'Rp. '.number_format($value['total_ppn'],0,'.','.'));
	        $sheet->setCellValue('G'.($no), 'Rp. '.number_format($value['total'],0,'.','.'));
            
            $sheet->getStyle('A'.$no.':G'.$no)->applyFromArray($styleArray);
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
			$data[$data['param']['table']]		=	$this->db->limit(10)->get('v_lap_po')->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select * from v_lap_po where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];

		$param	=	[
	          	'url'			=>	'role/general/page/purchase_order/print_page/print_web',
	          	'customPaper'	=>	'A4',
	          	'data_value'	=>	[
			           	"purchase_order"		=>	$data[$data['param']['table']],
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
				'suplier_id' => $_POST['suplier_id'],
				'tanggal' => $_POST['tanggal'],
				'keterangan' => $_POST['keterangan'],
				'is_ppn' => ((isset($_POST['is_ppn'])) ? 1 :0),
				'ppn_id' => ((isset($_POST['is_ppn'])) ? $_POST['is_ppn'] :0),
				'subtotal' => $_POST['subtotal'],
				'diskon' => $_POST['diskon'],
				'total' => $_POST['total'],
				'status' => $_POST['status'],
				'status_transaksi_id' => $_POST['status_transaksi_id'],
				'total_ppn' => $_POST['total_ppn'],
				'created_by' => $this->get_user_account()['id']
			];
			if ($this->save_data('purchase_order', $data)) {
				$data_po = $this->my_where('purchase_order', [
					'kode' => $_POST['kode'],
					'suplier_id' => $_POST['suplier_id'],
					'tanggal' => $_POST['tanggal'],
					'total' => $_POST['total'],
				])->row_array();

				foreach ($_POST['data'] as $value) {
					$data_detail = [
						'purchase_order_id' => $data_po['id'],
						'bahan_id' => $value['bahan_id'],
						'qty' => $value['qty'],
						'satuan_beli_id' => $value['satuan_id'],
						'harga' => preg_replace("/[^0-9]/", "", $value['harga']),
						'diskon' => $value['diskon'],
						'subtotal' => $value['subtotal'],
					];
				
					$this->save_data('detail_purchase_order', $data_detail);
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


	function add_produk_new_row()
	{
		try {
			
			$data = [
				'kode' => $_POST['kode'],
				'nama' => $_POST['nama'],
				'min_qty' => $_POST['min_qty'],
				'qty' => $_POST['qty'],
				'gudang_id' => $_POST['gudang_id'],
				'status' => 1,
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
					'msg'		=>	'Data bahan berhasil ditambahkan, pilih kembali bahan anda di halaman bahan'
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

	function update_data()
	{
		try {
			
			$data = [
				'kode' => $_POST['kode'],
				'suplier_id' => $_POST['suplier_id'],
				'tanggal' => $_POST['tanggal'],
				'keterangan' => $_POST['keterangan'],
				'is_ppn' => ((isset($_POST['is_ppn'])) ? 1 :0),
				'ppn_id' => ((isset($_POST['is_ppn'])) ? $_POST['is_ppn'] :0),
				'subtotal' => $_POST['subtotal'],
				'diskon' => $_POST['diskon'],
				'total' => $_POST['total'],
				'status_transaksi_id' => $_POST['status_transaksi_id'],
				'status' => $_POST['status'],
				'total_ppn' => $_POST['total_ppn'],
				'updated_by' => $this->get_user_account()['id']
			];
			if ($this->my_update('purchase_order', $data, [$this->arr['id'] => $_POST['id']])) {
				$data_po = $this->my_where('purchase_order',[$this->arr['id'] => $_POST['id']])->row_array();

				foreach ($_POST['data'] as $value) {
					$data_detail = [
						'purchase_order_id' => $data_po['id'],
						'bahan_id' => $value['bahan_id'],
						'qty' => $value['qty'],
						'satuan_beli_id' => $value['satuan_id'],
						'harga' => preg_replace("/[^0-9]/", "", $value['harga']),
						'diskon' => $value['diskon'],
						'subtotal' => $value['subtotal'],
					];
					if (isset($value['detail_po_id'])) {
						$this->my_update('detail_purchase_order', $data_detail, ['id' => $value['detail_po_id']]);
					}else{
						$this->save_data('detail_purchase_order', $data_detail);
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
	function delete_row(){
		try {
			if(isset($_POST['id'])){
				
				if($this->db->delete('detail_purchase_order', ['id'=>$_POST['id']])){
					echo json_encode([
						'status'=>200,
						'msg' => "Berhasil menghapus data"
					]);
				}else{
					echo json_encode([
						'status'=>500,
						'msg' => "Gagal menghapus data"
					]);
				}

			}
		} catch (Exception $e) {
			
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
					$this->save_data('purchase_order', $send);					
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

	public function datatable()
	{
		if (!empty($_POST['mulai'])) {
			$this->db->where('DATE(tanggal) >=', date_format(date_create($_POST['mulai']),"Y/m/d"));
		}else if(!empty($_POST['sampai'])){
			$this->db->where('DATE(tanggal) <=', date_format(date_create($_POST['sampai']),"Y/m/d"));
		}
		
		$this->db->where('status_aktif', '1');
       	$_POST['frm']   =   $this->arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;

            $suplier 	=	$this->my_where('master_data_suplier', ['id'=>$field['suplier_id']])->row_array();
            $status_transaksi 	=	$this->my_where('status_transaksi', ['id'=>$field['status_transaksi_id']])->row_array();
            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	date_format(date_create($field['tanggal']), 'd-M-Y');
            $row[]		=	'<a href="purchase_order/invoice/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	$suplier['nama'];
            $row[]		=	'Rp. '.number_format($field['subtotal'], 0, '.','.');
            $row[]		=	'Rp. '.number_format($field['total_ppn'], 0, '.','.');
            $row[]		=	'Rp. '.number_format($field['total'], 0, '.','.');
            $row[]		=	$field['keterangan'];
            $row[]		=	(!empty($status_transaksi)) ? $status_transaksi['status_transaksi'] : "Belum disetting" ;
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('transaction', $field['status'])['color'].'">'.$this->get_status('transaction', $field['status'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="purchase_order/invoice/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							'.(($field['status']==1)?'<li><a href="purchase_order/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>':'').'
            							<li><a  onclick="cancel_item('.$field['id'].');"><i class="icon-close2"></i> Batalkan Transaksi</a></li>
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
	function cancel_item(){

		try {

			$data['param'] 		= 	$this->arr;
			$id = $_POST['id'];
			
			if ($id !== '') {
				$data['po']	=	$this->my_where('purchase_order', ['id'=>$id])->row_array();
				$data['pb']	=	$this->db->query('SELECT *, (select count(*) from v_detail_pb_pt where pb_id=penerimaan_barang.id and status_aktif=1) as jml_pt FROM `penerimaan_barang` where purchase_order_id='.$id.' and status_aktif=1')->result_array();
				$data['pt']	=	$this->my_where('v_detail_pb_pt', ['purchase_order_id'=>$id, 'status_aktif'=>1])->result_array();
				$this->my_view([$data['param']['parents_link'].'/index_page/cancel_page'], $data);
			}
		} catch (Exception $e) {
			
		}
	}
	function submit_cancel(){
		try {
			$table = $_POST['table'];
			$id = $_POST['id'];

			$this->my_update($table, ['status_aktif'=>0], ['id'=>$id]);

			$this->my_update('jurnal_umum', ['status_aktif'=>0], ['table_id'=>$_POST['id'], 'table'=>$table]);
		} catch (Exception $e) {
			
		}
	}

	function cek_cancel_item(){
		try {
			$id = $_POST['id'];
			$pb	=	$this->db->query('SELECT *, (select count(*) from v_detail_pb_pt where pb_id=penerimaan_barang.id and status_aktif=1) as jml_pt FROM `penerimaan_barang` where purchase_order_id='.$id.' and status_aktif=1')->num_rows();
			$pt	=	$this->my_where('v_detail_pb_pt', ['purchase_order_id'=>$id, 'status_aktif'=>1])->num_rows();
		
			if ($pt>0 || $pb>0) {
				echo json_encode([
					'status' => 200,
					'data' => 0,
					'id' => $id
				]);
			}else{

				echo json_encode([
					'status' => 200,
					'data' => 1,
					'id' => $id
				]);
			}
		} catch (Exception $e) {
			
		}
	}
	function cancel_po(){
		try {
			
			$id = $_POST['id'];
			if ($this->my_update('purchase_order', ['status_aktif'=>0], ['id'=>$id])) {

				$this->my_update('jurnal_umum', ['status_aktif'=>0], ['table_id'=>$_POST['id'], 'table'=>'purchase_order']);
				echo json_encode([
					'status'=>200,
					'msg' => "Berhasil membatalkan purchase_order"
				]);
			}else{
				echo json_encode([
					'status'=>500,
					'msg' => "Gagal membatalkan purchase_order"
				]);
			};
		} catch (Exception $e) {
			
		}
	}
}
