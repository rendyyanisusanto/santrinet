<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


class penerimaan_barang extends MY_Controller {
	public $arr = [
			'title'				=>	'Penerimaan Barang',
			'table'				=>	'penerimaan_barang',
			'column'			=>	[ 'kode','purchase_order_id','tanggal', 'keterangan','no_surat_jalan', 'status','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','purchase_order_id','tanggal', 'keterangan', 'no_surat_jalan', 'status','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','purchase_order_id','tanggal', 'keterangan', 'no_surat_jalan', 'status','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/penerimaan_barang'
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
		$data['gudang']		=	$this->my_where('gudang',['status'=>1])->result_array();
		$data['ppn']	=	$this->my_where('ppn', ['is_active'=>1])->row_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js',$data['param']['parents_link'].'/add_page/modal_pembayaran','role/global/modal_gudang','role/global/modal_setting'],$data);
	}
	function edit_page($id='')
	{
		try {
			if($id !==''){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['gudang']		=	$this->my_where('gudang',['status'=>1])->result_array();
				$data['data_edit']['pb']	=	$this->my_where('penerimaan_barang', ['id'=>$id])->row_array();
				$data['ppn']	=	$this->my_where('ppn', ['is_active'=>1])->row_array();
				$data['data_edit']['po']	=	$this->my_where('purchase_order', ['id'=>$data['data_edit']['pb']['purchase_order_id']])->row_array();
				$data['data_edit']['gudang']	=	$this->my_where('gudang', ['id'=>$data['data_edit']['pb']['gudang_id']])->row_array();
				$data['data_edit']['suplier']	=	$this->my_where('master_data_suplier', ['id'=>$data['data_edit']['po']['suplier_id']])->row_array();
				$data['detail']		=	$this->db->query('select *, (select nama from master_data_bahan where detail_penerimaan_barang.bahan_id = master_data_bahan.id) as nama_bahan, (select nama from satuan_beli where satuan_beli.id = detail_penerimaan_barang.satuan_beli_id) as satuan_beli_nama from detail_penerimaan_barang where penerimaan_barang_id='.$id)->result_array();
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/js','role/global/modal_gudang','role/global/modal_setting'],$data);
			}
		} catch (Exception $e) {
			
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
	function print_web(){
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier,
				(select nama from gudang where gudang_id=gudang.id) as nama_gudang
			 from v_pb_po')->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier,
				(select nama from gudang where gudang_id=gudang.id) as nama_gudang
			 from v_pb_po where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}
		$this->load->view('role/general/page/penerimaan_barang/print_page/print_web', $data);
	}
	function print_excel(){
		$data['param']	=	$this->arr;
		$find	=	[];
		if ($_POST['cetak'] == 'last_data') {
			$find		=	$this->db->limit(10)->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier,
				(select nama from gudang where gudang_id=gudang.id) as nama_gudang
			 from v_pb_po')->result_array();	
		}else{
			$find		=	$this->db->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier,
				(select nama from gudang where gudang_id=gudang.id) as nama_gudang
			 from v_pb_po where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];
		$path_exc = $this->my_where('setting_table', ['table'=>'penerimaan_barang','name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>'penerimaan_barang','name'=>'start_row_excel'])->row_array();        
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
        $sheet->setCellValue('C'.($no), 'Kode PO');
        $sheet->setCellValue('D'.($no), 'Suplier');
        $sheet->setCellValue('E'.($no), 'Surat Jalan');
        $sheet->setCellValue('F'.($no), 'Nama Pengirim');
        $sheet->setCellValue('G'.($no), 'Gudang');
        $sheet->setCellValue('H'.($no), 'Total');

        $sheet->getStyle('A'.$no.':H'.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($find as $key => $value) {
            # code...
	        $sheet->setCellValue('A'.($no), date_format(date_create($value['tanggal']), 'd-m-Y'));
	        $sheet->setCellValue('B'.($no), $value['kode']);
	        $sheet->setCellValue('C'.($no), $value['kode_po']);
	        $sheet->setCellValue('D'.($no), $value['nama_suplier']);
	        $sheet->setCellValue('E'.($no), $value['no_surat_jalan']);
	        $sheet->setCellValue('F'.($no), $value['nama_pengirim']);
	        $sheet->setCellValue('G'.($no), $value['nama_gudang']);
	        $sheet->setCellValue('H'.($no), 'Rp. '.number_format($value['total'],0,'.','.'));
            
            $sheet->getStyle('A'.$no.':H'.$no)->applyFromArray($styleArray);
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
			$data[$data['param']['table']]		=	$this->db->limit(10)->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier,
				(select nama from gudang where gudang_id=gudang.id) as nama_gudang
			 from v_pb_po')->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier,
				(select nama from gudang where gudang_id=gudang.id) as nama_gudang
			 from v_pb_po where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];

		$param	=	[
	          	'url'			=>	'role/general/page/penerimaan_barang/print_page/print_web',
	          	'customPaper'	=>	'A4',
	          	'data_value'	=>	[
			           	"penerimaan_barang"		=>	$data[$data['param']['table']],
			           	"param"		=>	$this->arr
	     			],
	          	'name'			=>	md5(rand(0,9999999)),
	          	'pos' 			=> 'landscape'
	    ];

	    $this->my_pdf($param);
	}
	function get_po_select(){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
		 $this->db->where('status', 0);
	     $this->db->where("kode like '%".$searchTerm."%' ")->order_by('id','DESC')->limit(5);
	     $fetched_records = $this->db->get('purchase_order');
	     $bahan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($bahan as $po){
	        $data[] = array("id"=>$po['id'], "text"=>$po['kode'].' ('.$po['tanggal'].')');
	     }

      	echo json_encode($data);
	}
	function get_gudang(){
		try {
			$data['param']	=	$this->arr;
			$data['gudang'] =	$this->my_where('gudang', ['status'=>1])->result_array();
			$this->my_view([$data['param']['parents_link'].'/add_page/gudang'],$data);
		} catch (Exception $e) {
			
		}
	}
	function get_content_pb($id){
		try {
			$data['param']	=	$this->arr;
			$data['purchase_order']	=	$this->my_where('purchase_order', ['id'=>$id])->row_array();
			$detail			=	$this->db->query('SELECT *, (select nama from master_data_bahan where detail_purchase_order.bahan_id = master_data_bahan.id) as nama_bahan, (select nama from satuan_beli where satuan_beli.id = detail_purchase_order.satuan_beli_id) as satuan_beli_nama FROM `detail_purchase_order` where purchase_order_id='.$id)->result_array();
			$data['detail']	=	[];
			$data['sisa']	=	0;
			foreach ($detail as $key=>$value) {
				$qtyterima = $this->db->query('select sum(qty_terima) as qtyterima from vdetailpb where purchase_order_id='.$id.' and status_aktif=1 and bahan_id='.$value['bahan_id'])->row_array();

				$data['detail'][$key] = $value;
				$data['detail'][$key]['qtyterima']	=	(!empty($qtyterima['qtyterima'])) ? $qtyterima['qtyterima'] : 0;
				$data['sisa']	+= $value['qty']-((!empty($qtyterima['qtyterima'])) ? $qtyterima['qtyterima'] : 0);
			}

			// print_r($data['detail']);
			$this->my_view([$data['param']['parents_link'].'/add_page/detail'],$data);

			// echo json_encode($data);
		} catch (Exception $e) {
			
		}
	}
	function get_detail_po($id){
		try {
			$data['param']	=	$this->arr;
			$data['purchase_order']	=	$this->my_where('purchase_order', ['id'=>$id])->row_array();
			$data['detail']			=	$this->my_where('detail_purchase_order', ['purchase_order_id'=>$id])->result_array();
			$data['suplier']		=	$this->my_where('master_data_suplier', ['id'=>$data['purchase_order']['suplier_id']])->row_array();
			echo json_encode($data);
		} catch (Exception $e) {
			
		}
	}

	function simpan_data()
	{
		try {
			

			$total = 0;
			foreach ($_POST['data'] as $key => $value) {
				$total += ($value['qty_terima'] * $value['harga']);
			}

			$data = [
				'kode' => $_POST['kode'],
				'purchase_order_id' => $_POST['purchase_order_id'],
				'no_surat_jalan' => $_POST['no_surat_jalan'],
				'gudang_id' => $_POST['gudang_id'],
				'tanggal' => $_POST['tanggal'],
				'keterangan' => $_POST['keterangan'],
				'nama_pengirim' => $_POST['nama_pengirim'],
				'status' => $_POST['status'],
				'created_by' => $this->get_user_account()['id'],
				'nilai_pb'	=>	$total,
				'is_ppn' => ((isset($_POST['is_ppn'])) ? 1 :0),
				'ppn_id' => ((isset($_POST['is_ppn'])) ? $_POST['is_ppn'] :0),
				'subtotal' => $_POST['subtotal'],
				'diskon' => $_POST['diskon'],
				'total' => $_POST['total'],
				'total_ppn' => $_POST['total_ppn'],
			];
			if ($this->save_data('penerimaan_barang', $data)) {
				$data_pb = $this->my_where('penerimaan_barang', [
					'kode' => $_POST['kode'],
					'purchase_order_id' => $_POST['purchase_order_id'],
					'tanggal' => $_POST['tanggal'],
					'no_surat_jalan' => $_POST['no_surat_jalan'],
				])->row_array();

				foreach ($_POST['data'] as $value) {
					$data_detail = [
						'penerimaan_barang_id' => $data_pb['id'],
						'bahan_id' => $value['bahan_id'],
						'qty_pesan' => $value['qty_pesan'],
						'satuan_beli_id' => $value['satuan_beli_id'],
						'qty_terima' => $value['qty_terima'],
						'harga_satuan'	=>	$value['harga']
					];
					$this->save_data('detail_penerimaan_barang', $data_detail);
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
				'no_surat_jalan' => $_POST['no_surat_jalan'],
				'tanggal' => $_POST['tanggal'],
				'keterangan' => $_POST['keterangan'],
				'nama_pengirim' => $_POST['nama_pengirim'],
				'status' => $_POST['status'],
				'updated_by' => $this->get_user_account()['id'],

				'is_ppn' => ((isset($_POST['is_ppn'])) ? 1 :0),
				'ppn_id' => ((isset($_POST['is_ppn'])) ? $_POST['is_ppn'] :0),
				'subtotal' => $_POST['subtotal'],
				'diskon' => $_POST['diskon'],
				'total' => $_POST['total'],
				'total_ppn' => $_POST['total_ppn'],
			];
			if ($this->my_update('penerimaan_barang', $data, ['id'=>$_POST['id']])) {
				
				foreach ($_POST['data'] as $value) {
					$data_detail = [
						'qty_terima' => $value['qty_terima'],
					];
					$this->my_update('detail_penerimaan_barang', $data_detail, ['id'=>$value['id']]);
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

	function pembayaran($id = "")
	{
		try {
			if($id !== ""){
				$data['param']	=	$this->arr;
				$data['purchase_order']	=	$this->my_where('purchase_order', ['id'=>$id])->row_array();

				$this->my_view([$data['param']['parents_link'].'/add_page/pembayaran'],$data);
			}else{
				echo '<center><h3 style="font-weight:bold;">Pilih No. Purchase Order terlebih dahulu</h3></center>';
			}
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
	function simpan_metode(){
		try {
			$data['param']	=	$this->arr;
			$data['post']	=	$_POST;
			if ($_POST['metode_pembayaran'] == "TRANSFER") {
				$data['bank']	=	$this->my_where('bank', ['id'=>$_POST['bank_id']])->row_array();
			}
			$data['rand']	=	rand(0,999999).rand(0,999999);
			$this->my_view([$data['param']['parents_link'].'/add_page/table_metode'],$data);
		} catch (Exception $e) {
			
		}
	}

	function nota($id){
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['penerimaan_barang']	=	$this->my_where('penerimaan_barang',['id'=>$id])->row_array();
				$data['purchase_order']		=	$this->my_where('purchase_order',['id'=>$data['penerimaan_barang']['purchase_order_id']])->row_array();
				$data['detail_penerimaan_barang']	=	$this->db->query('SELECT *, (select kode from master_data_bahan where master_data_bahan.id=bahan_id) as kode_bahan,(select nama from satuan_beli where satuan_beli_id = satuan_beli.id) as satuan_beli, (select nama from master_data_bahan where master_data_bahan.id=bahan_id) as nama_bahan FROM `detail_penerimaan_barang` where penerimaan_barang_id='.$id)->result_array();
				$this->my_view([$data['param']['parents_link'].'/print_page/nota'],$data);
			}
		} catch (Exception $e) {
			
		}
	}
	function print_inv($id){
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['penerimaan_barang']	=	$this->my_where('penerimaan_barang',['id'=>$id])->row_array();
				$data['purchase_order']		=	$this->my_where('purchase_order',['id'=>$data['penerimaan_barang']['purchase_order_id']])->row_array();

				$data['notaheader']		=	$this->get_setting_table('penerimaan_barang', 'template_nota_header');
				$data['notafooter']		=	$this->get_setting_table('penerimaan_barang', 'template_nota_footer');

				$data['detail_penerimaan_barang']	=	$this->db->query('SELECT *, (select kode from master_data_bahan where master_data_bahan.id=bahan_id) as kode_bahan,(select nama from satuan_beli where satuan_beli_id = satuan_beli.id) as satuan_beli, (select nama from master_data_bahan where master_data_bahan.id=bahan_id) as nama_bahan FROM `detail_penerimaan_barang` where penerimaan_barang_id='.$id)->result_array();
				$data['slice']	=	[];
				$n = 0;
				$i = 0;
				foreach ($data['detail_penerimaan_barang'] as $key => $value) {
					if ($i<=10) {
						$data['slice'][$n]['detail_penerimaan_barang'][] = $value;
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
				$data['penerimaan_barang']	=	$this->my_where('penerimaan_barang',['id'=>$id])->row_array();
				$data['purchase_order']		=	$this->my_where('purchase_order',['id'=>$data['penerimaan_barang']['purchase_order_id']])->row_array();
				$data['detail_penerimaan_barang']	=	$this->db->query('SELECT *, (select kode from master_data_bahan where master_data_bahan.id=bahan_id) as kode_bahan,(select nama from satuan_beli where satuan_beli_id = satuan_beli.id) as satuan_beli, (select nama from master_data_bahan where master_data_bahan.id=bahan_id) as nama_bahan FROM `detail_penerimaan_barang` where penerimaan_barang_id='.$id)->result_array();
				
				$data['struk']		=	$this->get_setting_table('penerimaan_barang', 'template_struk_header');
				$data['strukfooter']		=	$this->get_setting_table('penerimaan_barang', 'template_struk_footer');
				$this->load->view($data['param']['parents_link'].'/print_page/print_struk', $data);
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
		$this->db->where('status_aktif', '1');
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $gudang 		=	$this->my_where('gudang', ['id'=>$field['gudang_id']])->row_array();
            $po 		=	$this->my_where('purchase_order', ['id'=>$field['purchase_order_id']])->row_array();
            $suplier 	=	$this->my_where('master_data_suplier', ['id'=>$po['suplier_id']])->row_array();
            // $pembayaran = 	$this->db->query("SELECT sum(total) as total FROM `pembayaran_tagihan` where pb_id = ".$field['id'])->row_array();
            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	date_format(date_create($field['tanggal']), 'd-M-Y');
            $row[]		=	'<a href="penerimaan_barang/nota/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	'<a href="purchase_order/invoice/'.$po['id'].'" class="app-item"><b>'. (!empty($po['kode']) ? strtoupper($po['kode']) : '-') . '</b></a>';
            $row[]		=	$suplier['nama'];
            $row[]		=	'Rp. '.number_format($field['total'], 0, '.','.');
            // $row[]		=	'Rp. '.number_format($pembayaran['total'], 0, '.','.');
            $row[]		=	$field['no_surat_jalan'];
            $row[]		=	$gudang['nama'];
            $row[]		=	$field['keterangan'];
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('transaction', $field['status'])['color'].'">'.$this->get_status('transaction', $field['status'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="penerimaan_barang/nota/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							'.(($field['status']==1)?'<li><a href="penerimaan_barang/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>':'').'
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

	function cancel_item(){

		try {

			$data['param'] 		= 	$this->arr;
			$id = $_POST['id'];
			
			if ($id !== '') {
				$data['pb']	=	$this->my_where('penerimaan_barang', ['id'=>$id])->row_array();
				$data['pt']	=	$this->db->query('SELECT * FROM `v_detail_pb_pt` where status_aktif=1 and pb_id='.$id)->result_array();
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
			$pt	=	$this->my_where('v_detail_pb_pt', ['pb_id'=>$id, 'status_aktif'=>1])->num_rows();
		
			if ($pt>0) {
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
	function cancel_pb(){
		try {
			
			$id = $_POST['id'];
			if ($this->my_update('penerimaan_barang', ['status_aktif'=>0], ['id'=>$id])) {

				$this->my_update('jurnal_umum', ['status_aktif'=>0], ['table_id'=>$_POST['id'], 'table'=>'penerimaan_barang']);
				echo json_encode([
					'status'=>200,
					'msg' => "Berhasil membatalkan Penerimaan Barang"
				]);
			}else{
				echo json_encode([
					'status'=>500,
					'msg' => "Gagal membatalkan Penerimaan Barang"
				]);
			};
		} catch (Exception $e) {
			
		}
	}


}
