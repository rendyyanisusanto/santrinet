<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


class Pembayaran_sales_order extends MY_Controller {
	public $arr = [
			'title'				=>	'Pembayaran Sales Order',
			'table'				=>	'pembayaran_sales_order',
			'column'			=>	[ 'kode','po_id','tanggal', 'pb_id','total', 'status','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','po_id','tanggal', 'pb_id', 'total', 'status','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','po_id','tanggal', 'pb_id', 'total', 'status','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/pembayaran_sales_order'
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
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/modal_pembayaran',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}

	function edit_page($id)
	{
		try {
			if ($id !=='') {
				$data['param'] 				= 	$this->arr;
				$data['account']			=	$this->get_user_account();
				$data['data_edit']['pembayaran_sales_order']	=	$this->my_where('pembayaran_sales_order', ['id'=>$id])->row_array();
				$data['customer']			=	$this->my_where('master_data_customer', [])->result_array();
				$data['data_edit']['detail_pembayaran_sales_order'] = $this->db->query('select *, (select bank from bank where bank_id=bank.id) as nama_bank from detail_pembayaran_sales_order where pembayaran_sales_order_id ='.$id)->result_array();

				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/modal_pembayaran',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting'],$data);
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

	function simpan_data()
	{
		try {
			$data_pembayaran = [
				'kode' => $_POST['kode'],
				'so_id' => $_POST['so_id'],
				'total' => $_POST['jumlah_pembayaran'],
				'tanggal' => date('Y-m-d'),
				'status' => $_POST['status'],
				'created_by' => $this->get_user_account()['id']
			];

			if ($this->save_data('pembayaran_sales_order', $data_pembayaran)) {
				$pembayaran = $this->my_where('pembayaran_sales_order', [
					'kode' => $_POST['kode'],
					'so_id' => $_POST['so_id'],
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
			//throw $th;
			echo json_encode([
				'status'	=>	500,
				'msg'		=>	"PT gagal ditambahkan"
			]);
		}
	}

	function update_data()
	{
		try {
			$data_pembayaran = [
				'kode' => $_POST['kode'],
				'total' => $_POST['jumlah_pembayaran'],
				'status' => $_POST['status'],
				'updated_by' => $this->get_user_account()['id']
			];

			if ($this->my_update('pembayaran_sales_order', $data_pembayaran, ['id'=>$_POST['id']] )) {
				foreach ($_POST['pembayaran'] as $value) {
					if (!isset($value['id_pembayaran'])) {
						$detail_pembayaran = [
							'pembayaran_sales_order_id' => $_POST['id'],
							'metode_pembayaran' => $value['metode_pembayaran'],
							'bank_id' => $value['bank_id'],
							'jumlah' => $value['jumlah'],
							'keterangan' => $value['keterangan'],
						];
						$this->save_data('detail_pembayaran_sales_order', $detail_pembayaran);
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
			//throw $th;
			echo json_encode([
				'status'	=>	500,
				'msg'		=>	"PT gagal ditambahkan"
			]);
		}
	}

	
	function nota($id){
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['pembayaran_sales_order']		=	$this->my_where('pembayaran_sales_order',['id'=>$id])->row_array();
				$data['sales_order']		=	$this->my_where('sales_order',['id'=>$data['pembayaran_sales_order']['so_id']])->row_array();
				$data['customer']		=	$this->my_where('master_data_customer',['id'=>$data['sales_order']['customer_id']])->row_array();
				$data['detail_pembayaran_sales_order']	=	$this->db->query('SELECT * FROM `detail_pembayaran_sales_order` where pembayaran_sales_order_id='.$id)->result_array();
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
				$data['pembayaran_sales_order']		=	$this->my_where('pembayaran_sales_order',['id'=>$id])->row_array();
				$data['sales_order']		=	$this->my_where('sales_order',['id'=>$data['pembayaran_sales_order']['so_id']])->row_array();
				$data['customer']		=	$this->my_where('master_data_customer',['id'=>$data['sales_order']['customer_id']])->row_array();
				$data['detail_pembayaran_sales_order']	=	$this->db->query('SELECT * FROM `detail_pembayaran_sales_order` where pembayaran_sales_order_id='.$id)->result_array();
				$data['notaheader']		=	$this->get_setting_table('pembayaran_sales_order', 'template_nota_header');
				$data['notafooter']		=	$this->get_setting_table('pembayaran_sales_order', 'template_nota_footer');

				
				$data['slice']	=	[];
				$n = 0;
				$i = 0;
				foreach ($data['detail_pembayaran_sales_order'] as $key => $value) {
					if ($i<=10) {
						$data['slice'][$n]['detail_pembayaran_sales_order'][] = $value;
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
				$data['pembayaran_sales_order']		=	$this->my_where('pembayaran_sales_order',['id'=>$id])->row_array();
				$data['sales_order']		=	$this->my_where('sales_order',['id'=>$data['pembayaran_sales_order']['so_id']])->row_array();
				$data['customer']		=	$this->my_where('master_data_customer',['id'=>$data['sales_order']['customer_id']])->row_array();
				$data['detail_pembayaran_sales_order']	=	$this->db->query('SELECT * FROM `detail_pembayaran_sales_order` where pembayaran_sales_order_id='.$id)->result_array();
				$data['struk']		=	$this->get_setting_table('pembayaran_tagihan', 'template_struk_header');
				$data['strukfooter']		=	$this->get_setting_table('pembayaran_tagihan', 'template_struk_footer');
				$this->load->view($data['param']['parents_link'].'/print_page/print_struk', $data);
			}
		} catch (Exception $e) {
			
		}
	}
    function print_web(){
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->order_by('id', 'DESC')->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_pso_so')->result_array();
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_pso_so where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}
		$this->load->view('role/general/page/pembayaran_sales_order/print_page/print_web', $data);
	}
	function print_pdf()
	{
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->order_by('id', 'DESC')->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_pso_so')->result_array();
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_pso_so where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];

		$param	=	[
	          	'url'			=>	'role/general/page/pembayaran_sales_order/print_page/print_web',
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
			$pso		=	$this->db->limit(10)->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_pso_so')->result_array();
		}else{
			$pso		=	$this->db->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from v_pso_so where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}


        $param  =   [
            'filename'          =>      'pembayaran_sales_order',
        ];

        $path_exc = $this->my_where('setting_table', ['table'=>'pembayaran_sales_order','name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>'pembayaran_sales_order','name'=>'start_row_excel'])->row_array();        
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
        $sheet->setCellValue('B'.($no), 'No. PT');
        $sheet->setCellValue('C'.($no), 'No. SO');
        $sheet->setCellValue('D'.($no), 'Customer');
        $sheet->setCellValue('E'.($no), 'Total SO');
        $sheet->setCellValue('F'.($no), 'Total PT');

        $sheet->getStyle('A'.$no.':F'.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($pso as $key => $value) {
            # code...
	        $sheet->setCellValue('A'.($no), date_format(date_create($value['tanggal']), 'd-m-Y'));
	        $sheet->setCellValue('B'.($no), $value['kode']);
	        $sheet->setCellValue('c'.($no), $value['kode_so']);
	        $sheet->setCellValue('D'.($no), $value['nama_customer']);
	        $sheet->setCellValue('E'.($no), $value['total_so']);
	        $sheet->setCellValue('F'.($no), $value['total']);

            
            $sheet->getStyle('A'.$no.':F'.$no)->applyFromArray($styleArray);
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
			$so 		=	$this->my_where('sales_order', ['id'=>$field['so_id']])->row_array();
			$customer 	=	$this->my_where('master_data_customer', ['id'=>$so['customer_id']])->row_array();
            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	date_format(date_create($field['tanggal']), 'd-M-Y');
            $row[]		=	'<a href="Pembayaran_sales_order/nota/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	'<a href="Sales_order/nota/'.$so['id'].'" class="app-item"><b>'. (!empty($so['kode']) ? strtoupper($so['kode']) : '-') . '</b></a>';
			$row[]		=	$customer['nama'];
            $row[]		=	'Rp. '.number_format($field['total'], 0, '.','.');
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('transaction', $field['status'])['color'].'">'.$this->get_status('transaction', $field['status'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="Pembayaran_sales_order/nota/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							'.(($field['status']==1)?'<li><a href="Pembayaran_sales_order/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Edit</a></li>':'').'
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
		if ($this->my_update('pembayaran_sales_order', ['status_aktif'=>0], ['id'=>$_POST['id']])) {
			// keuangan
			$this->my_update('jurnal_umum', ['status_aktif'=>0], ['table_id'=>$_POST['id'], 'table'=>'pembayaran_sales_order']);
			
			echo json_encode([
					'status'	=> 200,
					'msg'		=> 'Berhasil menghapus produksi'
				]);
		}
	}
	function hapus_data_pembayaran(){
		try {
			$dt = $this->arr;
			$id = $_POST['id'];
			if ($this->db->delete('detail_pembayaran_sales_order', ['id'=>$id])) {
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
	function get_so_select(){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
      	 $this->db->where('status_aktif', 1);
	     $this->db->where("kode like '%".$searchTerm."%' ")->order_by('id','DESC')->limit(5);
	     $fetched_records = $this->db->get('sales_order');
	     $bahan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($bahan as $pb){
			
			$terbayar	=	$this->db->query('select sum(total) as jml from pembayaran_sales_order where so_id='.$pb['id'])->row_array();
			if(($pb['total'] - $terbayar['jml']) > 0)
			{
				$data[] = array("id"=>$pb['id'], "text"=>$pb['kode'].' ('.$pb['tanggal'].')');
			}
	     }

      	echo json_encode($data);
	}
	function get_content_so($id){
		
		$data['param'] 		= 	$this->arr;
		$data['so']	=	$this->my_where('sales_order', ['id'=>$id])->row_array();
		$data['pembayaran_sales_order']	=	$this->my_where('pembayaran_sales_order', ['status_aktif'=>1,'so_id'=>$id])->result_array();
		$data['terbayar']	=	$this->db->query('select sum(total) as jml from pembayaran_sales_order where status_aktif=1 and so_id='.$id)->row_array();
		$this->my_view([$data['param']['parents_link'].'/add_page/detail_so'],$data);
	}

	function get_sisa($id){
		
		$data['so']	=	$this->my_where('sales_order', ['id'=>$id])->row_array();
		$data['pembayaran_sales_order']	=	$this->my_where('pembayaran_sales_order', ['status_aktif'=>1,'so_id'=>$id])->result_array();
		$data['terbayar']	=	$this->db->query('select sum(total) as jml from pembayaran_sales_order where status_aktif=1 and so_id='.$id)->row_array();
		echo json_encode($data);
	}
}
