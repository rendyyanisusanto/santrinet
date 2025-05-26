<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class tahfidz extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data tahfidz',
			'table'				=>	'tahfidz',
			'column'			=>	[ 'kode','nama', 'color','status_aktif'],
			'column_order'		=>	[ 'id','kode','nama', 'color','status_aktif'],
			'column_search'		=>	[ 'id','kode','nama', 'color','status_aktif'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/tahfidz'
	];

	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}
	function peserta_tahfidz(){
		
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['asrama']		=	$this->db->query('select id, nama from asrama')->result_array();
		$data['tahfidz']		=	$this->db->query('select id, nama from tahfidz')->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/peserta_tahfidz/index',$data['param']['parents_link'].'/peserta_tahfidz/js' ],$data);

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
	function add_peserta_tahfidz(){
		try {
			
			$data = [
				'santri_id'	=>	$_POST['santri_id'],
				'tahfidz_id'	=>	$_POST['tahfidz_id']
			];
			if ($this->save_data('peserta_tahfidz', $data)) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data peserta tahfidz berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data peserta tahfidz gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}
	function delete_peserta_tahfidz(){
		try {
			$dt = $this->arr;
			if ($this->db->delete("peserta_tahfidz", ["id"=>$_POST['id']])) {
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
	function simpan_data()
	{
		try {
			
			$data = [
				'kode' => $_POST['kode'],
				'nama' => $_POST['nama'],
				'color' => $_POST['color'],
				'status_aktif' => $_POST['status_aktif']
			];
			if ($this->save_data('tahfidz', $data)) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data tahfidz berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data tahfidz gagal ditambahkan'
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
				'nama' => $_POST['nama'],
				'color' => $_POST['color'],
				'status_aktif' => $_POST['status_aktif'],
				// 'updated_by' => $this->get_user_account()['id']
			];
			if ($this->my_update('tahfidz', $data, [$this->arr['id'] => $_POST['id']])) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data tahfidz berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data tahfidz gagal ditambahkan'
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

	public function datatable()
	{
       	$_POST['frm']   =   $this->arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            // $row[]		=	'<a href="tahfidz/edit_page/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	!empty($field['nama']) ? '<b style="color:'.$field['color'].'">'.strtoupper($field['nama']).'</b>' : '-';
            // $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('active', $field['status_aktif'])['color'].'">'.$this->get_status('active', $field['status_aktif'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="tahfidz/look_page/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							<li><a href="tahfidz/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
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

	
	function get_table_peserta_tahfidz(){
		
		$data['param'] 		= 	$this->arr;
		$search = $_POST['search'];
		$opt = $_POST['opt'];
		$data['santri']	=	$this->db->query('SELECT 
			s.id, s.nama, (select nama from asrama where asrama.id = s.asrama_id) as nama_asrama
		FROM 
			santri s
		LEFT JOIN 
			peserta_tahfidz pm ON s.id = pm.santri_id
		WHERE 
			pm.santri_id IS NULL
		AND 
			s.nama LIKE "%' . $search . '%"
		'.((!empty($opt)) ? " AND s.asrama_id = ".$opt." " : "").'	
		LIMIT 20;')->result_array();

		$this->my_view([$data['param']['parents_link'].'/peserta_tahfidz/table'], $data);
	}

	function get_peserta_tahfidz(){
		$id = $_POST['id'];
		
		$data['param'] 		= 	$this->arr;
		$data['peserta_tahfidz']	=	$this->db->query('select id, (select nama from santri where santri.id = santri_id) as nama, (select nama from tahfidz where tahfidz.id = tahfidz_id) as tahfidz from peserta_tahfidz where tahfidz_id='.$id)->result_array();
		$this->my_view([$data['param']['parents_link'].'/peserta_tahfidz/table_tahfidz'], $data);
	}

}
