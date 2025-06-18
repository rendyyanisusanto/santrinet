<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class madin extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Madin',
			'table'				=>	'madin',
			'column'			=>	[ 'kode','nama', 'color','status_aktif'],
			'column_order'		=>	[ 'id','kode','nama', 'color','status_aktif'],
			'column_search'		=>	[ 'id','kode','nama', 'color','status_aktif'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/madin'
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
	function peserta_madin(){
		
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['asrama']		=	$this->db->query('select id, nama from asrama')->result_array();
		$data['madin']		=	$this->db->query('select id, nama from madin')->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/peserta_madin/index',$data['param']['parents_link'].'/peserta_madin/js' ],$data);

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
	function simpan_data()
	{
		try {
			
			$data = [
				'kode' => $_POST['kode'],
				'nama' => $_POST['nama'],
				'color' => $_POST['color'],
				'status_aktif' => $_POST['status_aktif']
			];
			if ($this->save_data('madin', $data)) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data madin berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data madin gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}
	
	function add_peserta_madin(){
		try {
			
			$data = [
				'santri_id'	=>	$_POST['santri_id'],
				'madin_id'	=>	$_POST['madin_id']
			];
			if ($this->save_data('peserta_madin', $data)) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data peserta madin berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data peserta madin gagal ditambahkan'
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
			if ($this->my_update('madin', $data, [$this->arr['id'] => $_POST['id']])) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data madin berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data madin gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
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
	function delete_peserta_madin(){
		try {
			$dt = $this->arr;
			if ($this->db->delete("peserta_madin", ["id"=>$_POST['id']])) {
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
	public function datatable()
	{
		$this->db->where('status_aktif', ($_POST['status_aktif'] ?? 1));
       	$_POST['frm']   =   $this->arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $row        =   array();
            // $row[]		=	'<a href="madin/edit_page/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	!empty($field['nama']) ? '<b style="color:'.$field['color'].'">'.strtoupper($field['nama']).'</b>' : '-';
            // $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('active', $field['status_aktif'])['color'].'">'.$this->get_status('active', $field['status_aktif'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="madin/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
            							<li><a  onclick="change_status('.$field['id'].','.$field['status_aktif'].');"><i class="icon-close2"></i> '.(($field['status_aktif'] == 1) ? "Nonaktifkan" : "Aktifkan" ).'</a></li>
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

	
	function get_table_peserta_madin(){
		
		$data['param'] 		= 	$this->arr;
		$search = $_POST['search'];
		$opt = $_POST['opt'];
		$data['santri']	=	$this->db->query('SELECT 
			s.id, s.nama, (select nama from asrama where asrama.id = s.asrama_id) as nama_asrama
		FROM 
			santri s
		LEFT JOIN 
			peserta_madin pm ON s.id = pm.santri_id
		WHERE 
			pm.santri_id IS NULL
			and 
			s.status_aktif = 1
			and 
			s.status_santri = "AKTIF"
		AND 
			s.nama LIKE "%' . $search . '%"
		'.((!empty($opt)) ? " AND s.asrama_id = ".$opt." " : "").'	
		LIMIT 20;')->result_array();

		$this->my_view([$data['param']['parents_link'].'/peserta_madin/table'], $data);
	}

	function get_peserta_madin(){
		$id = $_POST['id'];
		
		$data['param'] 		= 	$this->arr;
		$data['peserta_madin']	=	$this->db->query('select peserta_madin.id, nama, (select nama from madin where madin.id = madin_id) as madin from peserta_madin inner join santri on santri.id = santri_id where santri.status_aktif=1 and santri.status_santri="AKTIF" and madin_id='.$id)->result_array();
		$this->my_view([$data['param']['parents_link'].'/peserta_madin/table_madin'], $data);
	}

}
