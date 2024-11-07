<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class rekam_medis extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Rekam Medis',
			'table'				=>	'rekam_medis',
			'column'			=>	[ 'kode','santri_id', 'status_rekam_medis_id','tanggal','foto','uuid','status_aktif'],
			'column_order'		=>	[ 'id','kode','santri_id', 'status_rekam_medis_id','tanggal','foto','uuid','status_aktif'],
			'column_search'		=>	[ 'id','kode','santri_id', 'status_rekam_medis_id','tanggal','foto','uuid','status_aktif'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/rekam_medis'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['status_rekam_medis']	=	$this->db->query("select id, nama, color from status_rekam_medis")->result_array();
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
		$this->load->view('role/admin/page/rekam_medis/print_page/print_web', $data);
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
	          	'url'			=>	'role/admin/page/rekam_medis/print_page/cetak_pdf',
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
			$foto = $this->save_media([
				'path'	=>	"./inc/media/rekam_medis/",
				'filename' => 'foto',
			]);
			$uuid = generate_uuid();
			$data = [
				'santri_id'				=>	$_POST['santri_id'],
				'status_rekam_medis_id'	=>	$_POST['status_rekam_medis_id'],
				'tanggal'				=>	$_POST['tanggal'],
				'kode'					=>	$_POST['kode'],
				'uuid'					=>	$uuid,
				'foto'					=>	((isset($foto)) ? $foto['file_name'] : ''),
				'status_aktif'			=>	$_POST['status_aktif'],
				'perawat_id'			=>	$_POST['perawat_id'],
				'diagnosis'				=>	$_POST['diagnosis'],
				'catatan'				=>	$_POST['catatan'],

			];
			if ($this->save_data('rekam_medis', $data)) {

				$rm = $this->my_where('rekam_medis', ['uuid'=>$uuid])->row_array();

				foreach ($_POST['obat_id'] as $key => $value) {
					$this->save_data('obat_rm', [
						'rekam_medis_id' =>	$rm['id'],
						'obat_id'	=>	$value
					]);
				}
				foreach ($_POST['keluhan_id'] as $key => $value) {
					$this->save_data('keluhan_rm', [
						'rekam_medis_id' =>	$rm['id'],
						'keluhan_id'	=>	$value
					]);
				}
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data rekam_medis berhasil ditambahkan',
					'foto'		=>	$foto
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data rekam_medis gagal ditambahkan'
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
			
			// $data = [
			// 	'nama' 	=> $_POST['nama'],
			// 	'nis'	=>	$_POST['nis'],
			// 	'jenis_kelamin'		=>	$_POST['jenis_kelamin'],
			// 	'tempat_lahir'		=>	$_POST['tempat_lahir'],
			// 	'tanggal_lahir'		=>	$_POST['tanggal_lahir'],
			// 	'nama_ayah'			=>	$_POST['nama_ayah'],
			// 	'nama_ibu'			=>	$_POST['nama_ibu'],
			// 	'no_hp_ayah'		=>	$_POST['no_hp_ayah'],
			// 	'no_hp_ibu'			=>	$_POST['no_hp_ibu'],
			// 	'status_aktif' 		=> $_POST['status_aktif']
			// ];
			// if ($this->my_update('rekam_medis', $data, [$this->arr['id'] => $_POST['id']])) {
			// 	echo json_encode([
			// 		'status'	=>	200,
			// 		'msg'		=>	'Data rekam_medis berhasil ditambahkan'
			// 	]);
			// }else{
			// 	echo json_encode([
			// 		'status'	=>	500,
			// 		'msg'		=>	'Data rekam_medis gagal ditambahkan'
			// 	]);
			// }
			echo json_encode($_POST);
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
					$this->save_data('rekam_medis', $send);					
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
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $row        =   array();

            $santri = $this->db->query('select nama from santri where id='.$field['santri_id'])->row_array();;
            $obat = $this->db->query("SELECT  GROUP_CONCAT(o.nama SEPARATOR ', ') AS daftar_obat
            									FROM 
            									    rekam_medis rm
            									JOIN 
            									    obat_rm orm ON orm.rekam_medis_id = rm.id
            									JOIN 
            									    obat o ON o.id = orm.obat_id
            									WHERE 
            									    rm.id = ".$field['id']."
            									GROUP BY 
            									    rm.id;")->row_array()['daftar_obat'];
            $keluhan = $this->db->query("SELECT  GROUP_CONCAT(o.nama SEPARATOR ', ') AS daftar_keluhan
            									FROM 
            									    rekam_medis rm
            									JOIN 
            									    keluhan_rm orm ON orm.rekam_medis_id = rm.id
            									JOIN 
            									    keluhan o ON o.id = orm.keluhan_id
            									WHERE 
            									    rm.id = ".$field['id']."
            									GROUP BY 
            									    rm.id;")->row_array()['daftar_keluhan'];

            $status_rekam_medis = $this->db->query('select nama, color from status_rekam_medis where id='.$field['status_rekam_medis_id'])->row_array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	'<a href="rekam_medis/edit_page/'.$field['id'].'" class="app-item"><b>'. $field['tanggal'] . '</b></a>';
            $row[]		=	!empty($santri['nama']) ? '<b style="color:black">'.strtoupper($santri['nama']).'</b>' : '-';
            $row[]		=	$keluhan;
            $row[]		=	$obat;
            $row[]		=	'<b style="color : '.$status_rekam_medis['color'].'">'.$status_rekam_medis['nama'].'</b>' ;
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('active', $field['status_aktif'])['color'].'">'.$this->get_status('active', $field['status_aktif'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="rekam_medis/look_page/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							<li><a href="rekam_medis/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
            							<li><a  onclick="change_status('.$field['id'].','.$field['status_aktif'].');"><i class="icon-close2"></i> '.(($field['status_aktif'] == 1) ? "Nonaktifkan" : "Aktifkan" ).'</a></li>
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
	function get_obat_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("select id, nama from obat where kode like '%".$searchTerm."%' or nama like '%".$searchTerm."%' order by id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['nama']);
	     }

      	echo json_encode($data);	

	}

	function get_keluhan_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("select id, nama from keluhan where kode like '%".$searchTerm."%' or nama like '%".$searchTerm."%' order by id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['nama']);
	     }

      	echo json_encode($data);	

	}
	function get_perawat_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("select id, nama from perawat where kode like '%".$searchTerm."%' or nama like '%".$searchTerm."%' order by id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['nama']);
	     }

      	echo json_encode($data);	

	}

	function simpan_data_obat()
	{
		try {
			$data = [
 				'kode'	=> $_POST['kode'],
 				'nama'	=>	$_POST['nama']
			];
			if ($this->save_data('obat', $data)) {
				echo json_encode([
					'status'	=>  200,
					'msg'		=>	'Data berhasil simpan'
				]);
			}
		} catch (Exception $e) {
			
		}
	}


	function simpan_data_keluhan()
	{
		try {
			$data = [
 				'nama'	=>	$_POST['nama']
			];
			if ($this->save_data('keluhan', $data)) {
				echo json_encode([
					'status'	=>  200,
					'msg'		=>	'Data berhasil simpan'
				]);
			}
		} catch (Exception $e) {
			
		}
	}
}
