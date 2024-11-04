<?php
defined('BASEPATH') OR exit('No direct script access allowed');
		use PhpOffice\PhpSpreadsheet\Spreadsheet;
		use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class surat_jalan extends MY_Controller {
	public $arr = [
			'title'				=>	'Surat Jalan',
			'table'				=>	'surat_jalan',
			'column'			=>	[ 'kode','so_id','tanggal', 'keterangan','status_kirim', 'status','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','so_id','tanggal', 'keterangan', 'status_kirim', 'status','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','so_id','tanggal', 'keterangan', 'status_kirim', 'status','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/surat_jalan'
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
		$data['gudang']		=	$this->my_where('gudang',['status'=>1])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index', 'role/global/modal_setting',$data['param']['parents_link'].'/add_page/js'],$data);
	}
	public function edit_page($id = ""){
		if (!empty($id)) {
			$data['param'] 				= 	$this->arr;
			$data['id']					=	$id;

			$data['gudang']				=	$this->my_where('gudang',['status'=>1])->result_array();
			$data['data_edit']			=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();
			$data['so']					=	$this->my_where('sales_order', ['id'=>$data['data_edit']['so_id']])->row_array();
			$data['customer']			=	$this->my_where('master_data_customer', ['id'=>$data['so']['customer_id']])->row_array();
			$data['all_karyawan']		=	$this->my_where('karyawan', ['jabatan_id'=>999, 'status'=>1])->result_array();
			$data['karyawan']			=	$this->my_where('karyawan', ['id'=>$data['data_edit']['karyawan_id']])->row_array();
			$data['detail_sj']			=	$this->db->query('SELECT *, (select nama from produk where produk.id=produk_id) as nama_produk FROM `detail_surat_jalan` where surat_jalan_id='.$id)->result_array();
			if (!empty($data['data_edit'])) {
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting'],$data);
			}			
		}
	}
	function print_web(){
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->order_by('id', 'DESC')->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_sj_so')->result_array();
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_sj_so where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}
		$this->load->view('role/general/page/surat_jalan/print_page/print_web', $data);
	}
	function print_pdf()
	{
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->order_by('id', 'DESC')->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_sj_so')->result_array();
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_sj_so where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];

		$param	=	[
	          	'url'			=>	'role/general/page/surat_jalan/print_page/print_web',
	          	'customPaper'	=>	'A4',
	          	'data_value'	=>	$data,
	          	'name'			=>	md5(rand(0,9999999)),
	          	'pos' 			=> 'landscape'
	    ];

	    $this->my_pdf($param);
	}
	 function print_excel(){

        $data['param']  =   $this->arr;
		if ($_POST['cetak'] == 'last_data') {
			$sj		=	$this->db->limit(10)->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_sj_so')->result_array();
		}else{
			$sj		=	$this->db->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_sj_so where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

        $param  =   [
            'filename'          =>      'surat_jalan',
        ];

        $path_exc = $this->my_where('setting_table', ['table'=>'surat_jalan','name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>'surat_jalan','name'=>'start_row_excel'])->row_array();        
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
        $sheet->setCellValue('B'.($no), 'No. SJ');
        $sheet->setCellValue('C'.($no), 'No. SO');
        $sheet->setCellValue('D'.($no), 'Customer');
        $sheet->setCellValue('E'.($no), 'Status Kirim');
        $sheet->setCellValue('F'.($no), 'Pengirim');
        $sheet->setCellValue('G'.($no), 'Penerima');
        $sheet->setCellValue('H'.($no), 'Total');

        $sheet->getStyle('A'.$no.':H'.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($sj as $key => $value) {
            # code...
	        $sheet->setCellValue('A'.($no), date_format(date_create($value['tanggal']), 'd-m-Y'));
	        $sheet->setCellValue('B'.($no), $value['kode']);
	        $sheet->setCellValue('c'.($no), $value['kode_so']);
	        $sheet->setCellValue('D'.($no), $value['nama_customer']);
	        $sheet->setCellValue('E'.($no), $value['status_kirim']);
	        $sheet->setCellValue('F'.($no), $value['nama_pengirim']);
	        $sheet->setCellValue('G'.($no), $value['penerima']);

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

	function simpan_data()
	{
		try {
			
			$data = [
				'kode' => $_POST['kode'],
				'so_id' => $_POST['so_id'],
				'tanggal' => $_POST['tanggal'],
				'keterangan' => $_POST['keterangan'],
				'status_kirim' => "PENGIRIMAN",
				'nama_pengirim' => $_POST['nama_pengirim'],
				'status' => $_POST['status'],
				'karyawan_id' => $_POST['karyawan_id'],
			];
			if ($this->save_data('surat_jalan', $data)) {
				$sj = $this->my_where('surat_jalan', [
					'kode' => $_POST['kode'],
					'so_id' => $_POST['so_id'],
					'tanggal' => $_POST['tanggal'],
				])->row_array();

				if (!empty($_POST['detail'])) {
					foreach ($_POST['detail'] as $value) {
						$data_kirim = [
							'surat_jalan_id' => $sj['id'],
							'produk_id' => $value['produk_id'],
							'qty' => $value['qty'],
							'qty_kirim' => $value['qty_kirim']
						];

						$this->save_data('detail_surat_jalan', $data_kirim);
					}
				}
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data surat jalan berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data surat jalan gagal ditambahkan'
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
				'tanggal' => $_POST['tanggal'],
				'keterangan' => $_POST['keterangan'],
				'status_kirim' => "PENGIRIMAN",
				'nama_pengirim' => $_POST['nama_pengirim'],
				'status' => $_POST['status'],
				'karyawan_id' => $_POST['karyawan_id'],
			];
			if ($this->my_update('surat_jalan', $data, ['id'=>$_POST['id']])) {
				$sj = $_POST['id'];

				if (!empty($_POST['detail'])) {
					foreach ($_POST['detail'] as $value) {
						$data_kirim = [
							'qty_kirim' => $value['qty_kirim']
						];

						$this->my_update('detail_surat_jalan', $data_kirim, ['id'=>$value['id']]);
					}
				}
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data surat jalan berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data surat jalan gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}
	function hapus_data(){

		if ($this->db->delete('surat_jalan', ['id'=>$_POST['id']])) {
			$this->db->delete('detail_surat_jalan', ['surat_jalan_id'=>$_POST['id']]);
			echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data surat jalan berhasil dihapus'
			]);
		}else{
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data surat jalan gagal dihapus'
				]);
		}
	}
	function get_content_detail($id){
		try {
			if($id!== ''){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['sales_order']		=	$this->my_where('sales_order',['id'=>$id])->row_array();
				$data['suplier']		=	$this->my_where('master_data_suplier',['id'=>$data['sales_order']['suplier_id']])->row_array();
            	$data['pembayaran'] = 	$this->db->query("SELECT sum(total) as total FROM `surat_jalan` where so_id = ".$id)->row_array();
				$data['surat_jalan']		=	$this->my_where('surat_jalan',['so_id'=>$id])->result_array();
				$this->my_view([$data['param']['parents_link'].'/add_page/detail'],$data);
			}
		} catch (Exception $e) {
			
		}
	}
	function nota($id){
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['surat_jalan']		=	$this->my_where('surat_jalan',['id'=>$id])->row_array();
				$data['sales_order']		=	$this->my_where('sales_order',['id'=>$data['surat_jalan']['so_id']])->row_array();
				$data['customer']		=	$this->my_where('master_data_customer',['id'=>$data['sales_order']['customer_id']])->row_array();
				$data['karyawan']		=	$this->my_where('karyawan',['id'=>$data['surat_jalan']['karyawan_id']])->row_array();
				$data['detail_surat_jalan']	=	$this->db->query('SELECT *, (select kode from produk where produk.id = produk_id) as kode, (select nama from produk where produk.id = produk_id) as nama_produk, (select nama_satuan from v_produk_satuan_barang where produk_id=v_produk_satuan_barang.id) as nama_satuan FROM `detail_surat_jalan` where surat_jalan_id='.$id)->result_array();
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
				$data['surat_jalan']		=	$this->my_where('surat_jalan',['id'=>$id])->row_array();
				$data['sales_order']		=	$this->my_where('sales_order',['id'=>$data['surat_jalan']['so_id']])->row_array();
				$data['customer']		=	$this->my_where('master_data_customer',['id'=>$data['sales_order']['customer_id']])->row_array();
				$data['karyawan']		=	$this->my_where('karyawan',['id'=>$data['surat_jalan']['karyawan_id']])->row_array();
				$data['detail_surat_jalan']	=	$this->db->query('SELECT *, (select kode from produk where produk.id = produk_id) as kode, (select nama from produk where produk.id = produk_id) as nama_produk, (select nama_satuan from v_produk_satuan_barang where produk_id=v_produk_satuan_barang.id) as nama_satuan FROM `detail_surat_jalan` where surat_jalan_id='.$id)->result_array();
				$data['notaheader']		=	$this->get_setting_table('surat_jalan', 'template_nota_header');
				$data['notafooter']		=	$this->get_setting_table('surat_jalan', 'template_nota_footer');

				$data['slice']	=	[];
				$n = 0;
				$i = 0;
				foreach ($data['detail_surat_jalan'] as $key => $value) {
					if ($i<=10) {
						$data['slice'][$n]['detail_surat_jalan'][] = $value;
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
				$data['surat_jalan']		=	$this->my_where('surat_jalan',['id'=>$id])->row_array();
				$data['sales_order']		=	$this->my_where('sales_order',['id'=>$data['surat_jalan']['so_id']])->row_array();
				$data['customer']		=	$this->my_where('master_data_customer',['id'=>$data['sales_order']['customer_id']])->row_array();
				$data['karyawan']		=	$this->my_where('karyawan',['id'=>$data['surat_jalan']['karyawan_id']])->row_array();
				$data['detail_surat_jalan']	=	$this->db->query('SELECT *, (select kode from produk where produk.id = produk_id) as kode, (select nama from produk where produk.id = produk_id) as nama_produk, (select nama_satuan from v_produk_satuan_barang where produk_id=v_produk_satuan_barang.id) as nama_satuan FROM `detail_surat_jalan` where surat_jalan_id='.$id)->result_array();
				
				$data['struk']		=	$this->get_setting_table('surat_jalan', 'template_struk_header');
				$data['strukfooter']		=	$this->get_setting_table('surat_jalan', 'template_struk_footer');
				$this->load->view($data['param']['parents_link'].'/print_page/print_struk', $data);
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
            $so 		=	$this->my_where('sales_order', ['id'=>$field['so_id']])->row_array();
            $customer	=	$this->my_where('master_data_customer', ['id'=>$so['customer_id']])->row_array();
            $qtypemesanan = $this->db->query('SELECT sum(qty) as qty FROM `detail_sales_order` where sales_order_id = '.$so['id'])->row_array();
            $qtypengiriman = $this->db->query('SELECT sum(qty_kirim) as qty_kirim FROM `detail_surat_jalan` where surat_jalan_id = '.$field['id'])->row_array();
            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	date_format(date_create($field['tanggal']), 'd-M-Y');
            $row[]		=	'<a href="surat_jalan/nota/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	'<a href="sales_order/nota/'.$so['id'].'" class="app-item"><b>'. (!empty($so['kode']) ? strtoupper($so['kode']) : '-') . '</b></a>';
            $row[]		=	$customer['nama'];
            $row[]		=	$qtypemesanan['qty'];
            $row[]		=	$qtypengiriman['qty_kirim'];
            $row[]		=	'Rp. '.number_format($so['total'], 0, '.','.');
            $row[]		=	($field['status_kirim'] == 1) ? '<span class="label label-block label-rounded label-success">Terkirim</span>' : '<span class="label label-block label-rounded label-danger">Belum Dikirim</span>';
            $row[]		=	(!empty($field['foto_bukti'])) ? '<a target="__blank" href="'.$field['foto_bukti'].'">Lihat Foto</a>' : '<span class="label label-block label-rounded label-danger">Belum Dikirim</span>';
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('transaction', $field['status'])['color'].'">'.$this->get_status('transaction', $field['status'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="surat_jalan/nota/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							'.(($field['status'] == 1) ? '<li><a href="surat_jalan/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>' : '').'
            							<li><a  onclick="hapus_data('.$field['id'].');"><i class="icon-trash"></i> Hapus</a></li>
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

	function get_so_select(){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
      	 $this->db->where('status', 0);
	     $this->db->where("kode like '%".$searchTerm."%' ")->limit(5);
	     $this->db->order_by('id', 'DESC');
	     $fetched_records = $this->db->get('sales_order');
	     $bahan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($bahan as $so){
	        $data[] = array("id"=>$so['id'], "text"=>$so['kode'].' ('.$so['tanggal'].')');
	     }

      	echo json_encode($data);
	}

	function get_karyawan_select(){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
      	 $this->db->where('jabatan_id', 999);
      	 $this->db->where('status', 1);
	     $this->db->where("nama like '%".$searchTerm."%' ")->limit(5);
	     $this->db->order_by('id', 'DESC');
	     $fetched_records = $this->db->get('karyawan');
	     $karyawan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($karyawan as $data_karyawan){
	        $data[] = array("id"=>$data_karyawan['id'], "text"=>$data_karyawan['nama'].' ('.$data_karyawan['kode'].')');
	     }

      	echo json_encode($data);
	}

	function get_detail_so($id = ""){
		try {
			$data=[];
			if($id!==""){
				$data['so'] = $this->my_where('sales_order', ['id'=>$id])->row_array();
				$data['customer'] = $this->my_where('master_data_customer', ['id'=>$data['so']['customer_id']])->row_array();
				$data['total']	=	number_format($data['so']['total'], 0,'.','.');
				$data['qty_total'] =	$this->db->query('select sum(qty) as qty from detail_sales_order where sales_order_id = '.$id)->row_array();
				$data['terkirim'] =	$this->db->query('select sum(qty_kirim) as qty_kirim from v_sj_dtsj where so_id = '.$id)->row_array();
				echo json_encode([
					'status' => 200,
					'data' => $data
				]);
			}else{
				echo json_encode([
					'status' => 400,
					'msg' => "Data tidak ditemukan"
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status' => 500,
					'msg' => $e
				]);
		}
	}

	function get_content_so($id = "")
	{
		try {
			if($id !== ""){

				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['detail_so']	=	[];
				$detail_so		=	$this->db->query('SELECT *, (select nama from produk where produk.id=produk_id) as nama_produk FROM `detail_sales_order` where sales_order_id='.$id)->result_array();
				foreach ($detail_so as $key => $value) {
					$sj =	$this->db->query('select sum(qty_kirim) as qty_kirim from v_sj_dtsj where so_id = '.$id.' and produk_id='.$value['produk_id'])->row_array();
					$data['detail_so'][] = [
						'val'	=>	$value,
						'sj' 	=> $sj,
						'sisa' 	=>	(($value['qty'] < $sj['qty_kirim']) ? 0 : $value['qty']-$sj['qty_kirim']) 
					];
				}
				$this->my_view([$data['param']['parents_link'].'/add_page/detail'],$data);
			}
		} catch (Exception $e) {
			
		}
	}
}