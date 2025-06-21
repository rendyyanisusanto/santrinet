<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Personal extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Santri',
			'table'				=>	'personal',
			'column'			=>	[ 'nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','nama_ayah','nama_ibu','no_hp_ayah','no_hp_ibu','status_aktif'],
			'column_order'		=>	[ 'id','nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','nama_ayah','nama_ibu','no_hp_ayah','no_hp_ibu','status_aktif'],
			'column_search'		=>	[ 'id','nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','nama_ayah','nama_ibu','no_hp_ayah','no_hp_ibu','status_aktif'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/personal'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal_change_status_santri',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	
	public function datatable()
	{
       	$this->arr['table'] = 'v_all_data';
		$_POST['frm']   =   $this->arr;

        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $row        =   array();
            $row[]      =   (!empty($field['foto'])) ? '<img src="'.$field['foto'].'" style="max-width: 50px">' : '<img src="'.base_url('inc/media/no_image.jpg').'" style="max-width: 50px">';
            $row[]		=	'<a href="santri/edit_page/'.$field['id'].'" class="app-item"><b>'. (!empty($field['nis']) ? strtoupper($field['nis']) : '-') . '</b></a>';
            $row[]		=	(!empty($field['nama'])) ? '<b style="color:black">'.strtoupper($field['nama']).'</b>' : '-';
            $row[]		=	(!empty($field['asatid'])) ? '<b class="icon-check text-success"></b>' : '<b class="icon-close2 text-danger"></b>';
            $row[]		=	(!empty($field['kafil'])) ? '<b class="icon-check text-success"></b>' : '<b class="icon-close2 text-danger"></b>';
            $row[]		=	($field['pengurus'] !== '-')  ? '<b style="color:black">'.strtoupper($field['pengurus']).'</b>': '<b class="icon-close2 text-danger"></b>';
            
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

}
