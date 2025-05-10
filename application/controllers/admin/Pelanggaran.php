<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpWord\TemplateProcessor;
use Dompdf\Dompdf;


class pelanggaran extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Pelanggaran',
			'table'				=>	'pelanggaran',
			'column'			=>	[ 'kode','santri_id'],
			'column_order'		=>	[ 'id','kode','santri_id'],
			'column_search'		=>	[ 'id','kode','santri_id'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/pelanggaran'
	];

	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}

	function pengajuan(){
		$this->arr['title']	=	"Pengajuan Laporan Pelanggaran";
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/pengajuan_pelanggaran/index',$data['param']['parents_link'].'/pengajuan_pelanggaran/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['uuid']		=	generate_uuid();
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
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();

			if (!empty($data['data_edit'])) {
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting'],$data);
			}			
		}
	}
	public function change_pengajuan($id = ""){
		if (!empty($id)) {
			$data['param'] 		= 	$this->arr;
			$data['id']			=	$id;
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();
			$data['santri']		=	$this->db->query('select id, nama from santri where id = '.$data['data_edit']['santri_id'])->row_array();
			$data['tatib']		=	$this->db->query('select id, kode, nama from tatib where id = '.$data['data_edit']['tatib_id'])->row_array();
			$data['pelapor']		=	$this->db->query('select id, (select nama from santri where santri.id=pengurus.santri_id) as nama from pengurus where id = '.$data['data_edit']['pelapor_id'])->row_array();
			if (!empty($data['data_edit'])) {
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/change_pengajuan/index',$data['param']['parents_link'].'/change_pengajuan/js', 'role/global/modal_setting'],$data);
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
		$this->load->view('role/admin/page/pelanggaran/print_page/print_web', $data);
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
	          	'url'			=>	'role/admin/page/pelanggaran/print_page/cetak_pdf',
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
			$uuid = $_POST['uuid'];
			$cek = $this->my_where('pelanggaran', ['uuid'=>$uuid])->num_rows();
			if (!empty($uuid) && $cek == 0) {
				// code...
				$foto = $this->save_media([
					'path'	=>	"./inc/media/pelanggaran/",
					'filename' => 'foto',
				]);
				$data = [
					'santri_id'				=>	$_POST['santri_id'],
					'pelanggaran'			=>	$_POST['pelanggaran'],
					'tanggal'				=>	$_POST['tanggal'],
					'kode'					=>	$_POST['kode'],
					'uuid'					=>	$_POST['uuid'],
					'foto'					=>	(($_FILES['foto']) ? $foto['file_name'] : $_POST['foto_before']),
					'tatib_id'				=>	$_POST['tatib_id'],
					'status_aktif'			=>	$_POST['status_aktif'],
					'takzir'				=>	$_POST['takzir'],
					'status_takzir'				=>	$_POST['status_takzir'],
					'pengurus_id'				=>	$_POST['pengurus_id'],
					'pelapor_id'				=>	$_POST['pelapor_id'],
					'status_dokumen_pelanggaran'=>	$_POST['status_dokumen_pelanggaran'],
					'kronologi'					=>	$_POST['kronologi'],
					'status_pengajuan'		=>	'BUKAN PENGAJUAN'

				];
				if ($this->save_data('pelanggaran', $data)) {
					echo json_encode([
						'status'	=>	200,
						'msg'		=>	'Data pelanggaran berhasil disimpan',
						'foto'		=>	$foto
					]);
				}else{
					echo json_encode([
						'status'	=>	500,
						'msg'		=>	'Data pelanggaran gagal disimpan'
					]);
				}
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}
	function update_data_pengajuan()
	{
		
		try {
			
			$data = [
				'santri_id'				=>	$_POST['santri_id'],
				'pelanggaran'			=>	$_POST['pelanggaran'],
				'tanggal'				=>	$_POST['tanggal'],
				'kode'					=>	$_POST['kode'],
				'tatib_id'				=>	$_POST['tatib_id'],
				'status_aktif'			=>	$_POST['status_aktif'],
				'takzir'				=>	$_POST['takzir'],
				'status_takzir'				=>	$_POST['status_takzir'],
				'pengurus_id'				=>	$_POST['pengurus_id'],
				'pelapor_id'				=>	$_POST['pelapor_id'],
				'status_dokumen_pelanggaran'=>	$_POST['status_dokumen_pelanggaran'],
				'kronologi'					=>	$_POST['kronologi'],
				'status_pengajuan'		=>	'DITERIMA'

			];
			if ($this->my_update('pelanggaran', $data, [$this->arr['id'] => $_POST['id']])) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data pelanggaran berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data pelanggaran gagal ditambahkan'
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
			
			if ($this->my_update($dt['table'], ['status_aktif'=> (($_POST['status'] == 0) ? 1:0)], [$dt['id']=>$_POST['id']])) {
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
	function status_takzir(){
		try {
			$dt = $this->arr;
			
			if ($this->my_update($dt['table'], ['status_takzir'=> (($_POST['status'] == "BELUM") ? "SUDAH":"BELUM")], [$dt['id']=>$_POST['id']])) {
				echo json_encode([
					'status'	=>  200,
					'msg'		=>	'Status takzir berhasil diganti'
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
				        if (isset($sheetData[$i]['1'])) {
				        	$send [] = [
								'nama' 					=>  (!empty($nama)) ? strtoupper($nama) : '',
								'kode'					=>	(!empty($kode)) ? $kode : '',
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
					'color' => $value['color'],
					'status_aktif'	=>	1
				];
				try {
					$this->save_data('pelanggaran', $send);					
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
       	$_POST['frm']   =   $this->arr;
		   $this->db->where('pelanggaran.status_pengajuan','BUKAN PENGAJUAN');
		   $this->db->or_where('pelanggaran.status_pengajuan','DITERIMA');
		   $this->db->or_where('pelanggaran.status_pengajuan','');
		$list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];

        foreach ($list as $field) {
            $no++;
            $row        =   array();
            $santri 	= $this->db->query('select nama from santri where id = '.$field['santri_id'])->row_array();
            $pelapor 	= $this->db->query('select nama from pengurus where pengurus.id = '.$field['pelapor_id'])->row_array();
            $pengurus 	= $this->db->query('select nama from pengurus where pengurus.id = '.$field['pengurus_id'])->row_array();
            $kategori_tatib = $this->db->query('select nama, (select nama from kategori_tatib where kategori_tatib.id = kategori_tatib_id) as kategori_tatib from pelanggaran left join tatib on tatib.id=tatib_id where tatib.id='.$field['tatib_id'])->row_array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	date('d/m/Y', strtotime($field['tanggal']));
            $row[]		=	'<a href="pelanggaran/edit_page/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	$santri['nama'];
            $row[]		=	$kategori_tatib['nama'];
            $row[]		=	$kategori_tatib['kategori_tatib'];
            $row[]		=	$field['pelanggaran'];
            $row[]		=	$field['takzir'];
            $row[]		=	$field['status_takzir'];
            $row[]		=	str_replace('_',' ' ,$field['status_dokumen_pelanggaran']);
            $row[]		=	$pelapor['nama'];
            $row[]		=	$pengurus['nama'];
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="pelanggaran/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
            							<li><a  onclick="ubah_takzir('.$field['id'].', \''.$field['status_takzir'].'\');"><i class="icon-color-sampler"></i> Ubah Status Takzir</a></li>
            							<li><a  onclick="cetak_sp('.$field['id'].');"><i class="icon-file-text3"></i> Cetak SP</a></li>
            							<li><a  onclick="delete_item('.$field['id'].');"><i class="icon-trash"></i> Hapus</a></li>
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

	function get_santri_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("select id, nama from santri where status_aktif=1 and nama like '%".$searchTerm."%' order by id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['nama']);
	     }

      	echo json_encode($data);	

	}
	function get_tatib_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("select id,kode, nama, (select nama from kategori_tatib where kategori_tatib.id=kategori_tatib_id) as kategori_tatib from tatib where kode like '%".$searchTerm."%' or nama like '%".$searchTerm."%' order by id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['kode'].' - '.$user['nama'].' ('.$user['kategori_tatib'].')');
	     }

      	echo json_encode($data);	

	}

	function get_pelapor_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("
			SELECT 
			    pengurus.id AS pengurus_id,
				santri.nama,
			    pengurus.lembaga_pengurus_id
			FROM 
			    pengurus 
			Inner join 
				santri
			ON santri.id = santri_id	
			where santri.nama like '%".$searchTerm."%' 
			order by pengurus.id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['pengurus_id'], "text"=> $user['nama']);
	     }

      	echo json_encode($data);
	}
	function get_pengurus_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("
			SELECT 
				santri.nama,
			    pengurus.id AS pengurus_id,
			    lembaga_pengurus.nama AS nama_lembaga
			FROM 
			    pengurus
			JOIN 
			    lembaga_pengurus ON pengurus.lembaga_pengurus_id = lembaga_pengurus.id
			JOIN 
				santri ON santri.id = santri_id
			WHERE 
			    pengurus.lembaga_pengurus_id = 1 and santri.nama like '%".$searchTerm."%' order by pengurus.id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['pengurus_id'], "text"=> $user['nama']);
	     }

      	echo json_encode($data);
	}
	public function modal_sp()
	{

		$data['param'] 		= 	$this->arr;
		$id = $_POST['id'];

		$data['pelanggaran']	=	$this->db->query('select id, kode,pelanggaran, santri_id, (select nama from santri where santri_id = santri.id) as nama from pelanggaran where id='.$id)->row_array();
		// $data['histori']		=	$this->db->query('select id, kode, santri_id, (select nama from santri where santri_id = santri.id) as nama from pelanggaran where id='.$id)->row_array();

		$this->my_view([$data['param']['parents_link'].'/index_page/content_sp'],$data);
	}

	function simpan_sp(){
		if (!$this->input->is_ajax_request()) {
            show_404();
        }


        $data = [
        	'pelanggaran_id'	=>	$_POST['id'],
			'santri_id'			=>	$_POST['santri_id'],
			'kode'				=>	$_POST['kode'],
			'tanggal'			=>	$_POST['tanggal'],
			'jenis'				=>	$_POST['jenis']
        ];

        
        if ($this->save_data('surat_pernyataan', $data)) {
            // Jika simpan berhasil, lanjutkan ke cetak PDF dari Word
            $data['pelanggaran']	=	$this->db->query('select pelanggaran from pelanggaran where id='.$_POST['id'])->row_array();
            $data['santri']	=	$this->db->query('select nama, alamat from santri where id='.$_POST['santri_id'])->row_array();
            $cr = $this->cetak_pdf_sp($data);
            echo json_encode($cr);
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Gagal menyimpan data.']);
        }
    }

    private function cetak_pdf_sp($data) {
        // Menggunakan FCPATH untuk mendapatkan path template
	    $templateWordPath = FCPATH . 'inc\file_tmp\file_sp.docx';
	    $templateProcessor = new TemplateProcessor($templateWordPath);
	    $uuid = generate_uuid();
	    // Gantikan placeholder dengan data dari form POST
			$templateProcessor->setValue('nama', $data['santri']['nama']);
			$templateProcessor->setValue('kode', $data['kode']);
			$templateProcessor->setValue('tanggal', date('d/m/Y', strtotime($data['tanggal'])));
			$templateProcessor->setValue('alamat', $data['santri']['alamat']);

			$pelanggaran = explode(',', $data['pelanggaran']['pelanggaran']);
			for ($i=0; $i <5 ; $i++) { 
				if (isset($pelanggaran[$i])) {
					// code...
					$templateProcessor->setValue('pelanggaran'.$i.'', $pelanggaran[$i]);
				}else{
					$templateProcessor->setValue('pelanggaran'.$i.'', '');
				}
			}
			// foreach ($pelanggaran as $key => $value) {
				
			// 	$templateProcessor->setValue('pelanggaran'.$key.'', $value);
			// }

	    // Simpan file Word hasil edit ke sementara
	    $tempWordFile = FCPATH . '/inc/temp_doc/'.$uuid.'.docx'; // Gunakan FCPATH untuk path sementara
	    $templateProcessor->saveAs($tempWordFile);

	    // Proses konversi dan output PDF seperti biasa
	    $phpWord = \PhpOffice\PhpWord\IOFactory::load($tempWordFile);
	    $htmlWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'HTML');
	    ob_start();
	    $htmlWriter->save('php://output');
	    $htmlContent = ob_get_clean();


		return base_url('inc/temp_doc/'.$uuid.'.docx');
    }

	function get_pengajuan(){
		$data['pengajuan']	=	$this->db->query('SELECT 
				p.id, 
				s.nama AS nama_santri,
				pelapor_santri.nama AS nama_pelapor,
				p.kode, 
				p.tanggal, 
				p.status_pengajuan, 
				p.pelanggaran 
			FROM pelanggaran p
			-- join ke santri pelanggar
			LEFT JOIN santri s ON s.id = p.santri_id
			-- join ke pengurus (pelapor)
			LEFT JOIN pengurus peng ON peng.id = p.pelapor_id
			-- join ke santri dari pengurus (untuk nama pelapor)
			LEFT JOIN santri pelapor_santri ON pelapor_santri.id = peng.santri_id
			WHERE 
				p.status_pengajuan <> "BUKAN PENGAJUAN" AND 
				p.status_pengajuan <> "" 
			ORDER BY 
				CASE 
					WHEN p.status_pengajuan = "BELUM DIPROSES" THEN 1 
					WHEN p.status_pengajuan = "DITERIMA" THEN 2 
					WHEN p.status_pengajuan = "DITOLAK" THEN 3 
					ELSE 4 
				END,
				p.id DESC
			LIMIT 10;

')->result_array();
		
		$data['param'] 		= 	$this->arr;
		$this->my_view([ $data['param']['parents_link'].'/pengajuan_pelanggaran/table_pengajuan'],$data);
	}
}
