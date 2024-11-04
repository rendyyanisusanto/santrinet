<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


class pembayaran_tagihan extends MY_Controller {
	public $arr = [
			'title'				=>	'Pembayaran Tagihan',
			'table'				=>	'pembayaran_tagihan',
			'column'			=>	[ 'kode','po_id','tanggal', 'pb_id','total', 'status','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','po_id','tanggal', 'pb_id', 'total', 'status','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','po_id','tanggal', 'pb_id', 'total', 'status','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/pembayaran_tagihan'
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
		$data['suplier']	=	$this->my_where('master_data_suplier', ['status'=>1])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/modal_add_pb',$data['param']['parents_link'].'/add_page/modal_pembayaran',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}

	public function edit_page($id = "")
	{
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['gudang']		=	$this->my_where('gudang',['status'=>1])->result_array();
				$data['ppn']	=	$this->my_where('ppn', ['is_active'=>1])->row_array();
				$data['data_edit']['pt'] = $this->my_where('pembayaran_tagihan', ['id'=>$id])->row_array();
				$data['suplier']	=	$this->my_where('master_data_suplier', ['id'=>$data['data_edit']['pt']['suplier_id']])->row_array();


				// detail pb
				$dtpb = $this->my_where('detail_pb_pt', ['pt_id'=>$id])->result_array();
				$data['detail_pb_pt'] = [];
				foreach ($dtpb as $value) {
					$pb = $this->my_where('penerimaan_barang', ['id'=>$value['pb_id']])->row_array();
					$data['detail_pb_pt'][] = [
						'pb' => $pb,
						'po' => $this->my_where('purchase_order', ['id'=>$pb['purchase_order_id']])->row_array(),
						'total_pb' => $this->db->query('select sum(harga_satuan*qty_terima) as total from v_dpb_pb_dpo where penerimaan_barang_id='.$value['pb_id'])->row_array(),
						'detail_pb' => $this->db->query('select * from v_dpb_pb_dpo where penerimaan_barang_id='.$value['pb_id'])->result_array()
					];
				}
				$data['detail_pt']	=	$this->db->query('select *, (select bank from bank where bank.id=bank_id) as nama_bank from detail_pembayaran_tagihan where pembayaran_tagihan_id ='.$id)->result_array();
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/modal_add_pb',$data['param']['parents_link'].'/edit_page/modal_pembayaran',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting'],$data);
			}
		} catch (Exception $e) {
			
		}
	}
	function simpan_data()
	{
		try {
			$total_bayar = 0;

			foreach ($_POST['pembayaran'] as $key => $value) {
				$total_bayar += $value['jumlah'];
			}
			$data = [
				'kode'			=>	$_POST['kode'],
				'subtotal'		=>	$_POST['subtotal'],
				'total'			=>	$_POST['total_tagihan'],
				'tanggal'		=>	$_POST['tanggal'],
				'created_by'	=>  $this->get_user_account()['id'],
				'status'		=>	$_POST['status'],
				'status_aktif'	=> 1,
				'no_tagihan'	=> $_POST['no_tagihan'],
				'penagih'		=> $_POST['penagih'],
				'jatuh_tempo'	=> $_POST['jatuh_tempo'],
				'keterangan'	=> $_POST['keterangan'],
				'diskon'		=> $_POST['diskon'],
				'is_ppn' 		=> ((isset($_POST['is_ppn'])) ? 1 :0),
				'ppn_id'		=> ((isset($_POST['is_ppn'])) ? $_POST['is_ppn'] :0),
				'total_ppn'		=> $_POST['total_ppn'],
				'suplier_id'		=> $_POST['suplier_id'],
				'total_bayar'	=>	$total_bayar
			];
			if ($this->save_data('pembayaran_tagihan', $data)) {
				// get pt
				$pt = $this->my_where('pembayaran_tagihan', [
					'kode'			=>	$_POST['kode'],
					'subtotal'		=>	$_POST['subtotal'],
					'total'			=>	$_POST['total_tagihan'],
					'tanggal'		=>	$_POST['tanggal'],
				])->row_array();
				
				// add pb
				foreach ($_POST['pb'] as $key => $value) {
					$datapb = [
						'pb_id'	=>	$value['id'],
						'pt_id'	=>	$pt['id']
					];

					$this->save_data('detail_pb_pt', $datapb);
				}

				// add pembayaran
				foreach ($_POST['pembayaran'] as $key => $value) {
					$datapem = [
						'pembayaran_tagihan_id' =>	$pt['id'],
						'metode_pembayaran'		=>	$value['metode_pembayaran'],
						'bank_id'				=>	$value['bank_id'],
						'jumlah'				=>	$value['jumlah'],
						'keterangan'			=>	$value['keterangan'],
					];

					$this->save_data('detail_pembayaran_tagihan', $datapem);
				}

				echo json_encode([
					'status'	=>	200,
					'msg'		=>	"PT berhasil ditambahkan"
				]);
			}else{
				
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	"PT gagal ditambahkan"
				]);
			}
		} catch (\Throwable $th) {
			
			echo json_encode([
				'status'	=>	500,
				'msg'		=>	$th
			]);
		}
	}

	function update_data()
	{
		try {
			$data = [
				'kode'			=>	$_POST['kode'],
				'subtotal'		=>	$_POST['subtotal'],
				'total'			=>	$_POST['total_tagihan'],
				'tanggal'		=>	$_POST['tanggal'],
				'updated_by'	=>  $this->get_user_account()['id'],
				'no_tagihan'	=> $_POST['no_tagihan'],
				'status'		=>	$_POST['status'],
				'penagih'		=> $_POST['penagih'],
				'jatuh_tempo'	=> $_POST['jatuh_tempo'],
				'keterangan'	=> $_POST['keterangan'],
				'diskon'		=> $_POST['diskon'],
				'is_ppn' 		=> ((isset($_POST['is_ppn'])) ? 1 :0),
				'ppn_id'		=> ((isset($_POST['is_ppn'])) ? $_POST['is_ppn'] :0),
				'total_ppn'		=> $_POST['total_ppn'],
			];
			if ($this->my_update('pembayaran_tagihan', $data, ['id'=>$_POST['id']])) {
				// get pt
				
				
				// add pb
				foreach ($_POST['pb'] as $key => $value) {
					$datapb = [
						'pb_id'	=>	$value['id'],
						'pt_id'	=>	$_POST['id']
					];

					$this->save_data('detail_pb_pt', $datapb);
				}

				// add pembayaran
				foreach ($_POST['pembayaran'] as $key => $value) {
					if (!isset($value['id'])) {
						$datapem = [
							'pembayaran_tagihan_id' =>	$_POST['id'],
							'metode_pembayaran'		=>	$value['metode_pembayaran'],
							'bank_id'				=>	$value['bank_id'],
							'jumlah'				=>	$value['jumlah'],
							'keterangan'			=>	$value['keterangan'],
						];

						$this->save_data('detail_pembayaran_tagihan', $datapem);
					}
				}

				echo json_encode([
					'status'	=>	200,
					'msg'		=>	"PT berhasil ditambahkan"
				]);
			}else{
				
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	"PT gagal ditambahkan"
				]);
			}
		} catch (\Throwable $th) {
			
			echo json_encode([
				'status'	=>	500,
				'msg'		=>	$th
			]);
		}
	}
	function print_web(){
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier
			 from pembayaran_tagihan')->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier
			 from pembayaran_tagihan where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}
		$this->load->view('role/general/page/pembayaran_tagihan/print_page/print_web', $data);
	}
	function print_excel(){
		$data['param']	=	$this->arr;
		$find	=	[];
		if ($_POST['cetak'] == 'last_data') {
			$find		=	$this->db->limit(10)->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier
			 from pembayaran_tagihan')->result_array();	
		}else{
			$find		=	$this->db->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier
			 from pembayaran_tagihan where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];
		$path_exc = $this->my_where('setting_table', ['table'=>'pembayaran_tagihan','name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>'pembayaran_tagihan','name'=>'start_row_excel'])->row_array();        
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
        $sheet->setCellValue('B'.($no), 'Jatuh Tempo');
        $sheet->setCellValue('C'.($no), 'Kode');
        $sheet->setCellValue('D'.($no), 'Suplier');
        $sheet->setCellValue('E'.($no), 'No. Tagihan');
        $sheet->setCellValue('F'.($no), 'Subtotal');
        $sheet->setCellValue('G'.($no), 'Diskon');
        $sheet->setCellValue('H'.($no), 'PPN');
        $sheet->setCellValue('I'.($no), 'Total');

        $sheet->getStyle('A'.$no.':I'.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($find as $key => $value) {
            # code...
	        $sheet->setCellValue('A'.($no), date_format(date_create($value['tanggal']), 'd-m-Y'));
	        $sheet->setCellValue('B'.($no), $value['jatuh_tempo']);
	        $sheet->setCellValue('C'.($no), $value['kode']);
	        $sheet->setCellValue('D'.($no), $value['nama_suplier']);
	        $sheet->setCellValue('E'.($no), $value['no_tagihan']);
	        $sheet->setCellValue('F'.($no), 'Rp. '.number_format($value['subtotal'],0,'.','.'));
	        $sheet->setCellValue('G'.($no), 'Rp. '.number_format($value['diskon'],0,'.','.'));
	        $sheet->setCellValue('H'.($no), 'Rp. '.number_format($value['total_ppn'],0,'.','.'));
	        $sheet->setCellValue('I'.($no), 'Rp. '.number_format($value['total'],0,'.','.'));
            
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
			$data[$data['param']['table']]		=	$this->db->limit(10)->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier
			 from pembayaran_tagihan')->result_array();	
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select *,
				(select nama from master_data_suplier where master_data_suplier.id = suplier_id) as nama_suplier
			 from pembayaran_tagihan where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];

		$param	=	[
	          	'url'			=>	'role/general/page/pembayaran_tagihan/print_page/print_web',
	          	'customPaper'	=>	'A4',
	          	'data_value'	=>	[
			           	"pembayaran_tagihan"		=>	$data[$data['param']['table']],
			           	"param"		=>	$this->arr
	     			],
	          	'name'			=>	md5(rand(0,9999999)),
	          	'pos' 			=> 'landscape'
	    ];

	    $this->my_pdf($param);
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
	function get_content_detail($id){
		try {
			if($id!== ''){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['purchase_order']		=	$this->my_where('purchase_order',['id'=>$id])->row_array();
				$data['suplier']		=	$this->my_where('master_data_suplier',['id'=>$data['purchase_order']['suplier_id']])->row_array();
            	$data['pembayaran'] = 	$this->db->query("SELECT sum(total) as total FROM `pembayaran_tagihan` where po_id = ".$id)->row_array();
				$data['pembayaran_tagihan']		=	$this->my_where('pembayaran_tagihan',['po_id'=>$id])->result_array();
				$this->my_view([$data['param']['parents_link'].'/add_page/detail'],$data);
			}
		} catch (Exception $e) {
			
		}
	}

	function add_pb(){
		try {
			$id = $_POST['pb_id'];
			$data['param'] 		= 	$this->arr;
			$data['pb']			=	$this->my_where('penerimaan_barang', ['id'=>$id])->row_array();
			$data['po']			=	$this->my_where('purchase_order', ['id'=>$data['pb']['purchase_order_id']])->row_array();
			$data['total_pb']	=	$this->db->query('select sum(harga_satuan*qty_terima) as total from v_dpb_pb_dpo where penerimaan_barang_id='.$id)->row_array();
			$data['detail_pb']	=	$this->db->query('select * from v_dpb_pb_dpo where penerimaan_barang_id='.$id)->result_array();
			$data['rand']		=	rand(0,99999);
			$this->my_view([$data['param']['parents_link'].'/add_page/add_pb'],$data);
			
		} catch (Exception $e) {
			
		}
	}

	function add_pembayaran(){
		try {
			$data['param'] 		= 	$this->arr;
			$data['metode_transfer'] = (($_POST['metode_pembayaran']  == "TRANSFER") ? $this->my_where('bank', ['id'=>$_POST['bank_id']])->row_array() : '');
			$data['post']		=	$_POST;
			$data['rand']		=	rand(0,99999);
			$this->my_view([$data['param']['parents_link'].'/add_page/add_pembayaran'],$data);
			
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
			$suplier 	=	$this->my_where('master_data_suplier', ['id'=>$field['suplier_id']])->row_array();
            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	date_format(date_create($field['tanggal']), 'd-M-Y');
			$row[]		=	date_format(date_create($field['jatuh_tempo']), 'd-M-Y');
            $row[]		=	'<a href="pembayaran_tagihan/nota/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
			$row[]		=	$suplier['nama'];
			$row[]		=	$field['no_tagihan'];
            $row[]		=	'Rp. '.number_format($field['subtotal'], 0, '.','.');
            $row[]		=	'Rp. '.number_format($field['diskon'], 0, '.','.');
            $row[]		=	'Rp. '.number_format($field['total_ppn'], 0, '.','.');
            $row[]		=	'Rp. '.number_format($field['total'], 0, '.','.');
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('transaction', $field['status'])['color'].'">'.$this->get_status('transaction', $field['status'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="pembayaran_tagihan/nota/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							'.(($field['status']==1)?'<li><a href="pembayaran_tagihan/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>':'').'
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
	function nota($id){
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['pembayaran_tagihan']	=	$this->my_where('pembayaran_tagihan',['id'=>$id])->row_array();
				$data['purchase_order']		=	$this->my_where('purchase_order',['id'=>$data['pembayaran_tagihan']['po_id']])->row_array();
				$data['penerimaan_barang']		=	$this->my_where('penerimaan_barang',['id'=>$data['pembayaran_tagihan']['pb_id']])->row_array();
				$data['detail_pembayaran_tagihan']	=	$this->db->query('SELECT *, (SELECT bank from bank where bank.id=bank_id) as bank FROM `detail_pembayaran_tagihan` where pembayaran_tagihan_id='.$id)->result_array();
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
				$data['pembayaran_tagihan']	=	$this->my_where('pembayaran_tagihan',['id'=>$id])->row_array();
				$data['purchase_order']		=	$this->my_where('purchase_order',['id'=>$data['pembayaran_tagihan']['po_id']])->row_array();
				$data['penerimaan_barang']		=	$this->my_where('penerimaan_barang',['id'=>$data['pembayaran_tagihan']['pb_id']])->row_array();
				$data['detail_pembayaran_tagihan']	=	$this->db->query('SELECT *, (SELECT bank from bank where bank.id=bank_id) as bank FROM `detail_pembayaran_tagihan` where pembayaran_tagihan_id='.$id)->result_array();
				
				$data['notaheader']		=	$this->get_setting_table('pembayaran_tagihan', 'template_nota_header');
				$data['notafooter']		=	$this->get_setting_table('pembayaran_tagihan', 'template_nota_footer');

				
				$data['slice']	=	[];
				$n = 0;
				$i = 0;
				foreach ($data['detail_pembayaran_tagihan'] as $key => $value) {
					if ($i<=10) {
						$data['slice'][$n]['detail_pembayaran_tagihan'][] = $value;
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
				$data['pembayaran_tagihan']	=	$this->my_where('pembayaran_tagihan',['id'=>$id])->row_array();
				$data['purchase_order']		=	$this->my_where('purchase_order',['id'=>$data['pembayaran_tagihan']['purchase_order_id']])->row_array();
				$data['detail_pembayaran_tagihan']	=	$this->db->query('SELECT *, (SELECT bank from bank where bank.id=bank_id) as bank FROM `detail_pembayaran_tagihan` where pembayaran_tagihan_id='.$id)->result_array();
				
				$data['struk']		=	$this->get_setting_table('pembayaran_tagihan', 'template_struk_header');
				$data['strukfooter']		=	$this->get_setting_table('pembayaran_tagihan', 'template_struk_footer');
				$this->load->view($data['param']['parents_link'].'/print_page/print_struk', $data);
			}
		} catch (Exception $e) {
			
		}
	}
	function get_pb_select(){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
      	 $this->db->where('status_aktif', '1');
      	 $this->db->where('suplier_id', $_POST['suplier_id']);
	     $this->db->where("kode like '%".$searchTerm."%' ")->limit(5);
	     $fetched_records = $this->db->get('v_pb_po');
	     $bahan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($bahan as $pb){
	        $data[] = array("id"=>$pb['id'], "text"=>$pb['kode'].' ('.$pb['tanggal'].')');
	     }

      	echo json_encode($data);
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
	function cancel_item(){

		try {

			$data['param'] 		= 	$this->arr;
			$id = $_POST['id'];
			
			if ($id !== '') {
				$data['pb']	=	$this->my_where('penerimaan_barang', ['id'=>$id])->row_array();
				$data['pt']	=	$this->db->query('SELECT * FROM `pembayaran_tagihan` where status_aktif=1 and pb_id='.$id)->result_array();
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
			$pt	=	$this->my_where('pembayaran_tagihan', ['pb_id'=>$id, 'status_aktif'=>1])->num_rows();
		
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
	function cancel_pt(){
		try {
			
			$id = $_POST['id'];
			if ($this->my_update('pembayaran_tagihan', ['status_aktif'=>0], ['id'=>$id])) {

				$this->my_update('jurnal_umum', ['status_aktif'=>0], ['table_id'=>$_POST['id'], 'table'=>'pembayaran_tagihan']);
				echo json_encode([
					'status'=>200,
					'msg' => "Berhasil membatalkan Pembayaran Tagihan"
				]);
			}else{
				echo json_encode([
					'status'=>500,
					'msg' => "Gagal membatalkan Pembayaran Tagihan"
				]);
			};
		} catch (Exception $e) {
			
		}
	}
}