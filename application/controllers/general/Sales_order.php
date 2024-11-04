<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


class sales_order extends MY_Controller {
	public $arr = [
			'title'				=>	'Sales Order',
			'table'				=>	'sales_order',
			'column'			=>	[ 'kode','customer_id','tanggal', 'keterangan','is_ppn','ppn_id','subtotal', 'diskon','total', 'status','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','customer_id','tanggal', 'keterangan', 'is_ppn','ppn_id','subtotal', 'diskon','total', 'status','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','customer_id','tanggal', 'keterangan', 'is_ppn','ppn_id','subtotal', 'diskon','total', 'status','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/sales_order'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['province']	=	$this->my_where('provinces',[])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal',$data['param']['parents_link'].'/index_page/modal_delete',$data['param']['parents_link'].'/index_page/js'],$data);
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
	public function get_edit_data_produksi($value='')
	{
		$_POST['harga'] = preg_replace("/[^0-9]/", "", $_POST['harga']);
		$subtotal = (($_POST['harga']*$_POST['qty']) - (($_POST['harga']*$_POST['qty'])/100) * $_POST['diskon']);
		echo json_encode([
			'post'	=>	$_POST,
			'subtotal'	=> $subtotal,
			'subtotaltext'=> 'Rp. '.number_format($subtotal, 0, '.','.')

		]);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['customer']	=	$this->my_where('master_data_customer', ['status'=>1])->result_array();
		$data['ppn']	=	$this->my_where('ppn', ['is_active'=>1])->row_array();
		$data['gudang']		=	$this->my_where('gudang',['status'=>1])->result_array();
		$data['satuan_beli']			=	$this->my_where('satuan_beli',['status'=>1])->result_array();
		$data['satuan_pakai']		=	$this->my_where('satuan_pakai',[])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js',$data['param']['parents_link'].'/add_page/modal',$data['param']['parents_link'].'/add_page/modal_edit_bahan',$data['param']['parents_link'].'/add_page/modal_pembayaran', 'role/global/modal_setting'],$data);
	}
	function add_produk_row(){
		$data['param'] 		= 	$this->arr;
		$data['uid']		=	rand(0,99999).rand(0,999999);
		$data['post']		=	$_POST;
		$data['produk']		=	$this->my_where('produk', ['id'=>$_POST['produk_id']])->row_array();
		$data['satuan_barang']	=	$this->my_where('satuan_barang', ['id'=>$data['produk']['satuan_barang_id']])->row_array();
		$data['post']['harga']	=	preg_replace("/[^0-9]/", "", $_POST['harga']);
		$data['produksi_status']	=	0;
		$this->my_view([$data['param']['parents_link'].'/add_page/index_bahan',$data['param']['parents_link'].'/add_page/js_bahan'],$data);
	}
	function print_inv($id){
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['sales_order']		=	$this->my_where('sales_order',['id'=>$id])->row_array();
				$data['customer']		=	$this->my_where('master_data_customer',['id'=>$data['sales_order']['customer_id']])->row_array();
				$data['detail_sales_order']	=	$this->db->query('SELECT *, (select kode from produk where produk.id = produk_id) as kode, (select nama from produk where produk.id = produk_id) as nama_produk FROM `detail_sales_order` where sales_order_id='.$id)->result_array();
				$data['notaheader']		=	$this->get_setting_table('sales_order', 'template_nota_header');
				$data['notafooter']		=	$this->get_setting_table('sales_order', 'template_nota_footer');

				
				$data['slice']	=	[];
				$n = 0;
				$i = 0;
				foreach ($data['detail_sales_order'] as $key => $value) {
					if ($i<=10) {
						$data['slice'][$n]['detail_sales_order'][] = $value;
					}else{
						$n++;
						$i=0;
					}
					$i++;
				}
				$this->load->view($data['param']['parents_link'].'/print_page/print', $data);
			}
		} catch (Exception $e) {
			
		}
	}
	function print_struk($id){
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['sales_order']		=	$this->my_where('sales_order',['id'=>$id])->row_array();
				$data['customer']		=	$this->my_where('master_data_customer',['id'=>$data['sales_order']['customer_id']])->row_array();
				$data['detail_sales_order']	=	$this->db->query('SELECT *, (select kode from produk where produk.id = produk_id) as kode, (select nama from produk where produk.id = produk_id) as nama_produk FROM `detail_sales_order` where sales_order_id='.$id)->result_array();
				
				$data['struk']		=	$this->get_setting_table('sales_order', 'template_struk_header');
				$data['strukfooter']		=	$this->get_setting_table('sales_order', 'template_struk_footer');
				$this->load->view($data['param']['parents_link'].'/print_page/print_struk', $data);
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

			$data['customer']	=	$this->my_where('master_data_customer', ['status'=>1])->result_array();
			$data['ppn']	=	$this->my_where('ppn', ['is_active'=>1])->row_array();
			$data['gudang']		=	$this->my_where('gudang',['status'=>1])->result_array();
			$data['satuan_beli']			=	$this->my_where('satuan_beli',['status'=>1])->result_array();
			$data['satuan_pakai']		=	$this->my_where('satuan_pakai',[])->result_array();


			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();
			$data['detail_sales_order']	=	$this->db->query("select *, 
				(select kode from produk where produk.id = produk_id) as kode_produk, 
				(select nama from produk where produk.id = produk_id) as nama_produk,
				(select qty from produk where produk.id = produk_id) as qty_produk
				from detail_sales_order where sales_order_id=".$id)->result_array();
			if (!empty($data['data_edit'])) {
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/js',$data['param']['parents_link'].'/edit_page/modal',$data['param']['parents_link'].'/edit_page/modal_edit_bahan',$data['param']['parents_link'].'/edit_page/modal_pembayaran',  'role/global/modal_setting'],$data);
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
				$data['sales_order']		=	$this->my_where('sales_order',['id'=>$id])->row_array();
				$data['customer']		=	$this->my_where('master_data_customer',['id'=>$data['sales_order']['customer_id']])->row_array();
				$data['detail_sales_order']	=	$this->db->query('SELECT *, (select kode from produk where produk.id = produk_id) as kode, (select nama from produk where produk.id = produk_id) as nama_produk FROM `detail_sales_order` where sales_order_id='.$id)->result_array();
				$this->my_view([$data['param']['parents_link'].'/print_page/nota'],$data);
			}
		} catch (Exception $e) {
			
		}
	}
	function print_web(){
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->get('v_lap_so')->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select * from v_lap_so where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}
		$this->load->view('role/general/page/sales_order/print_page/print_web', $data);
	}
	function print_excel(){
		$data['param']	=	$this->arr;
		$find	=	[];
		if ($_POST['cetak'] == 'last_data') {
			$find		=	$this->db->limit(10)->get('v_lap_so')->result_array();	
		}else{
			$find		=	$this->db->query('select * from v_lap_so where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
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
        $sheet->setCellValue('C'.($no), 'Customer');
        $sheet->setCellValue('D'.($no), 'Subtotal');
        $sheet->setCellValue('E'.($no), 'Diskon');
        $sheet->setCellValue('F'.($no), 'PPN');
        $sheet->setCellValue('G'.($no), 'Total');
        $sheet->setCellValue('H'.($no), 'Terbayar');
        $sheet->setCellValue('I'.($no), 'Sisa');

        $sheet->getStyle('A'.$no.':I'.$no)->applyFromArray($styleArray);
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
	        $sheet->setCellValue('H'.($no), 'Rp. '.number_format($value['terbayar'],0,'.','.'));
	        $sheet->setCellValue('I'.($no), 'Rp. '.number_format(($value['total']-$value['terbayar']),0,'.','.'));
            
            $sheet->getStyle('A'.$no.':I'.$no)->applyFromArray($styleArray);
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
			$data[$data['param']['table']]		=	$this->db->limit(10)->get('v_lap_so')->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select * from v_lap_so where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];

		$param	=	[
	          	'url'			=>	'role/general/page/sales_order/print_page/print_web',
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
				'created_by' => $this->get_user_account()['id']
			];
			if ($this->save_data('sales_order', $data)) {
				$data_po = $this->my_where('sales_order', [
					'kode' => $_POST['kode'],
					'customer_id' => $_POST['customer_id'],
					'tanggal' => $_POST['tanggal'],
					'total' => $_POST['total'],
				])->row_array();

				// if need produk -> add produksi
				$produksi = [];
				if(isset($_POST['status_produksi'])){
					$kodeproduksi = 'Prod-'.$_POST['kode'].rand(0,9999);
					$dataproduksi = [
						'kode'		=>	$kodeproduksi,
						'tanggal'	=>	$_POST['tanggal'],
						'keterangan'	=>	"Produksi dari SO : ".$_POST['kode'],
						'status'	=>	1,
						'status_produksi'	=>	0,
						'so_id'		=>	$data_po['id'],
						'created_by' => $this->get_user_account()['id']
					];
					if($this->save_data('produksi', $dataproduksi)){
						$produksi = $this->my_where('produksi', [
							'kode'		=>	$kodeproduksi,
							'tanggal'	=>	$_POST['tanggal'],
						])->row_array(); 
					}
				}
				// detail
				foreach ($_POST['data'] as $value) {
					if($value['status_produksi'] == 0){
						$data_detail = [
							'sales_order_id' => $data_po['id'],
							'produk_id' => $value['produk_id'],
							'qty' => $value['qty'],
							'harga' => preg_replace("/[^0-9]/", "", $value['harga']),
							'diskon' => $value['diskon'],
							'subtotal' => $value['subtotal'],
						];
						$this->save_data('detail_sales_order', $data_detail);
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
							'sales_order_id' => $data_po['id'],
							'produk_id' => $getproduk['id'],
							'qty' => $value['qty'],
							'harga' => preg_replace("/[^0-9]/", "", $value['harga']),
							'diskon' => $value['diskon'],
							'subtotal' => $value['subtotal'],
							'status_produksi'	=>	1
						];
						$this->save_data('detail_sales_order', $data_detail);
						
						
						// add detail produksi
						$detailproduksi = [
							'produk_id'	=>	$getproduk['id'],
							'produksi_id'	=>	$produksi['id'],
							'qty'		=>	$value['qty'],
						];

						$this->save_data('detail_produksi_produk', $detailproduksi);
					}
					
				}

				if (!empty($_POST['pembayaran'])) {
					$data_pembayaran = [
						'kode' => $_POST['kode_tagihan'],
						'so_id' => $data_po['id'],
						'total' => $_POST['total_pby'],
						'tanggal' => $_POST['tanggal'],
						'created_by' => $this->get_user_account()['id']
					];

					if ($this->save_data('pembayaran_sales_order', $data_pembayaran)) {
						$pembayaran = $this->my_where('pembayaran_sales_order', [
							'kode' => $_POST['kode_tagihan'],
							'so_id' => $data_po['id'],
						])->row_array();
						foreach ($_POST['pembayaran'] as $value) {
							$detail_pembayaran = [
								'pembayaran_sales_order_id' => $pembayaran['id'],
								'metode_pembayaran' => $value['metode_pembayaran'],
								'bank_id' => $value['bank_id'],
								'jumlah' => $value['jumlah'],
								'keterangan' => $value['keterangan'],
							];
							$this->save_data('detail_pembayaran_sales_order', $detail_pembayaran);
						}
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
			if ($this->my_update('sales_order', $data, [$this->arr['id'] => $_POST['id']])) {
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
								'sales_order_id' =>  $_POST['id'],
								'produk_id' => $value['produk_id'],
								'qty' => $value['qty'],
								'harga' => preg_replace("/[^0-9]/", "", $value['harga']),
								'diskon' => $value['diskon'],
								'subtotal' => $value['subtotal'],
							];
							$this->save_data('detail_sales_order', $data_detail);
						}else{

							$data_detail = [
								'qty' => $value['qty'],
								'harga' => preg_replace("/[^0-9]/", "", $value['harga']),
								'diskon' => $value['diskon'],
								'subtotal' => $value['subtotal'],
							];
							$this->my_update('detail_sales_order', $data_detail, ['id'=>$value['id']]);
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
							'sales_order_id' => $_POST['id'],
							'produk_id' => $getproduk['id'],
							'qty' => $value['qty'],
							'harga' => preg_replace("/[^0-9]/", "", $value['harga']),
							'diskon' => $value['diskon'],
							'subtotal' => $value['subtotal'],
							'status_produksi'	=>	1
						];
						$this->save_data('detail_sales_order', $data_detail);
						
						
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

		if ($this->db->delete('detail_sales_order', ['id'=>$id])) {
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
					$this->save_data('sales_order', $send);					
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
		
		$this->db->where('status_aktif', '1');
       	$_POST['frm']   =   $this->arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;

            $customer 	=	$this->my_where('master_data_customer', ['id'=>$field['customer_id']])->row_array();
            $pembayaran = 	$this->db->query("SELECT sum(total) as total FROM `pembayaran_sales_order` where so_id = ".$field['id'])->row_array();
            $label_sisa = (($field['total']-$pembayaran['total'])>0) ? "text-danger" : "";
            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	date_format(date_create($field['tanggal']), 'd-M-Y');
            $row[]		=	'<a href="sales_order/nota/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	$customer['nama'];
            $row[]		=	'Rp. '.number_format($field['subtotal'], 0, '.','.');
            $row[]		=	'Rp. '.number_format($field['total_ppn'], 0, '.','.');
            $row[]		=	'Rp. '.number_format($field['total'], 0, '.','.');
            $row[]		=	'Rp. '.number_format($pembayaran['total'], 0, '.','.');
            $row[]		=	'<b class="'.$label_sisa.'">Rp. '.number_format($field['total']-$pembayaran['total'], 0, '.','.').'</b>';
            $row[]		=	$field['keterangan'];
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('transaction', $field['status'])['color'].'">'.$this->get_status('transaction', $field['status'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="sales_order/nota/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							'.(($field['status'] == 1) ? '<li><a href="sales_order/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>':'').'
            							
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


	function cancel_item(){

		try {

			$data['param'] 		= 	$this->arr;
			$id = $_POST['id'];
			
			if ($id !== '') {
				$data['so']	=	$this->my_where('sales_order', ['id'=>$id])->row_array();
				$data['pembayaran_so']=$this->my_where('pembayaran_sales_order', ['so_id'=>$id,'status_aktif'=>1])->result_array();
				$data['produksi']=$this->my_where('produksi', ['so_id'=>$id,'status_aktif'=>1])->result_array();
				$data['surat_jalan']=$this->my_where('surat_jalan', ['so_id'=>$id])->result_array();
				$this->my_view([$data['param']['parents_link'].'/index_page/cancel_page'], $data);
			}
		} catch (Exception $e) {
			
		}
	}
	function submit_cancel(){
		try {
			$table = $_POST['table'];
			$id = $_POST['id'];
			$nonaktif = $_POST['nonaktif'];
			if ($nonaktif == 1) {
				$this->my_update($table, ['status_aktif'=>0], ['id'=>$id]);
			}else{
				$this->db->delete($table, ['id'=>$id]);
			}
		} catch (Exception $e) {
			
		}
	}

	function cek_cancel_item(){
		try {
			$id = $_POST['id'];
			$pso=$this->my_where('pembayaran_sales_order', ['so_id'=>$id,'status_aktif'=>1])->num_rows();
			$prd=$this->my_where('produksi', ['so_id'=>$id,'status_aktif'=>1])->num_rows();
			$sj=$this->my_where('surat_jalan', ['so_id'=>$id])->num_rows();
			if ($pso>0 || $prd>0 || $sj>0) {
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
	function cancel_so(){
		try {
			
			$id = $_POST['id'];
			if ($this->my_update('sales_order', ['status_aktif'=>0], ['id'=>$id])) {
				echo json_encode([
					'status'=>200,
					'msg' => "Berhasil membatalkan sales order"
				]);
			}else{
				echo json_encode([
					'status'=>500,
					'msg' => "Gagal membatalkan sales order"
				]);
			};
		} catch (Exception $e) {
			
		}
	}
}
