<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class alumni extends MY_Controller {
	public $arr = [
			'title'				=>	'Alumni',
			'table'				=>	'alumni',
			'column'			=>	[ 'nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','nama_ayah','nama_ibu','no_hp_ayah','no_hp_ibu','status_aktif'],
			'column_order'		=>	[ 'id','nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','nama_ayah','nama_ibu','no_hp_ayah','no_hp_ibu','status_aktif'],
			'column_search'		=>	[ 'id','nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','nama_ayah','nama_ibu','no_hp_ayah','no_hp_ibu','status_aktif'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/alumni'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal_change_status_santri',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
        $data['tahun_lulus']    =    range(date('Y') - 10, date('Y'));
        
		$data['asrama']		=	$this->db->query('select id, nama from asrama')->result_array();
		$data['kamar']		=	$this->db->query('select id, nama from kamar where status_aktif=1')->result_array();

		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js'],$data);
	}
    function add_lulusan(){
		try {
			
			$data = [
				'santri_id'	=>	$_POST['santri_id'],
				'tahun_lulus'	=>	$_POST['tahun_lulus'],
				'status_aktif'	=>	1
			];
			if ($this->save_data('alumni', $data)) {
                $this->my_update('santri', ['status_santri'=>'ALUMNI'], ['id'=>$_POST['santri_id']]);
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data alumni berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data alumni gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}

    function delete_alumni(){
        try {
			
			if ($this->db->delete('alumni', ['santri_id'=>$_POST['id']])) {
                $this->my_update('santri', ['status_santri'=>'AKTIF'], ['id'=>$_POST['id']]);
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data alumni berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data alumni gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
    }
	
	public function datatable()
	{
       	$this->arr['table'] = 'v_alumni';
		$_POST['frm']   =   $this->arr;

        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $row        =   array();
            
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]      =   (!empty($field['foto'])) ? '<center><img src="'.base_url('inc/media/santri/'.$field['foto']).'" style="width: 30px;height:40px;"></center>' : '<center><img src="'.base_url('inc/media/no_image.jpg').'" style="width: 40px;height:40px;"></center>';
            $row[]		=	'<a href="santri/edit_page/'.$field['id'].'" class="app-item"><b>'. (!empty($field['nis']) ? strtoupper($field['nis']) : '-') . '</b></a>';
            $row[]		=	!empty($field['nama']) ? '<b style="color:black">'.strtoupper($field['nama']).'</b>' : '-';
            $row[]		=	!empty($field['tahun_lulus']) ? '<b style="color:black">'.strtoupper($field['tahun_lulus']).'</b>' : '-';
            $row[]		=	!empty($field['nama_angkatan']) ? '<b style="color:black">'.strtoupper($field['nama_angkatan']).'</b>' : '-';
            $row[]		=	'<a onclick="change_status_santri('.$field['id'].','."'".$field['status_santri']."'".')"><span class="label label-block label-rounded label-'.(($field['status_santri'] == "AKTIF") ? "success" : "info").'">'.$field['status_santri'].'</span></a>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="santri/look_page/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat</a></li>
            							<li><a href="santri/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
            							<li><a  onclick="change_status_santri('.$field['id'].','."'".$field['status_santri']."'".')"><i class="icon-user"></i> Jadikan Alumni</a></li>
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

    
	function get_table_kamar_santri(){
		
		$data['param'] 		= 	$this->arr;
		$search = $_POST['search'];
		$opt = $_POST['opt'];
		$data['santri']	=	$this->db->query('SELECT 
			s.id, s.nama, (select nama from asrama where asrama.id = s.asrama_id) as nama_asrama
		FROM 
			santri s
		LEFT JOIN 
			alumni ks ON s.id = ks.santri_id
		WHERE 
			ks.santri_id IS NULL
		AND 
			s.nama LIKE "%' . $search . '%"
		'.((!empty($opt)) ? " AND s.asrama_id = ".$opt." " : "").'	
		LIMIT 20;')->result_array();

		$this->my_view([$data['param']['parents_link'].'/add_page/table'], $data);
	}

	function get_table_lulusan(){
		$tahun_lulus = $_POST['tahun_lulus'];
		
		$data['param'] 		= 	$this->arr;
		$data['alumni']	=	$this->db->query('select * from v_alumni where tahun_lulus='.$tahun_lulus)->result_array();
		$this->my_view([$data['param']['parents_link'].'/add_page/table_alumni'], $data);
	}

}
