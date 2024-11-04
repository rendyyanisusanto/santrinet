<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Frontpage extends CI_Controller {
	public function __construct()
    {
        parent::__construct();
        $this->load->model('SMMP_Model','mod');
        $this->load->model('SMMP_Datatable','mod_datatable');
    }
	public function index()
	{
		$this->load->view('welcome_message');
	}

	function bahan($value='')
	{
		$this->load->view('frontpage/bahan');	
	}
	public function datatable_bahan()
	{
		$arr = [
			'title'				=>	'Master Data Bahan',
			'table'				=>	'master_data_bahan',
			'column'			=>	[ 'kode','nama', 'min_qty','qty','satuan_pakai_id', 'satuan_beli_id','gudang_id','status','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','nama', 'min_qty', 'qty','satuan_pakai_id', 'satuan_beli_id','gudang_id','status','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','nama', 'min_qty', 'qty','satuan_pakai_id', 'satuan_beli_id','gudang_id','status','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id'
		];

		
			if ($_POST['param'] == "in") {
				$this->db->where('qty > ', 'min_qty');
			}
			if ($_POST['param'] == "out") {
				$this->db->where('qty <= ', 'min_qty');
			}
		

       	$_POST['frm']   =   $arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $satuan = $this->db->query('select *,(select nama from satuan_beli where satuan_beli.id = satuan_id) as nama_satuan from konversi_satuan_bahan where bahan_id='.$field['id'].' and konversi_satuan_bahan.default=1');
            $gudang = "";
            if (!empty($field['gudang_id'])) {
            	$gudang = $this->db->get_where('gudang', ['id' => $field['gudang_id']])->row_array();
            	
            }
            $row        =   array();
            $row[]      =   $no;
            $row[]		=	'<a href="master_data_bahan/edit_page/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	!empty($field['nama']) ? strtoupper($field['nama']) : '-';
            $row[]		=	!empty($field['min_qty']) ? $field['min_qty'] : '-';
            $row[]		=	!empty($field['qty']) ? $field['qty'] : '-';
			$row[]		=	($satuan->num_rows() > 0) ? $satuan->row_array()['nama_satuan'] : '-';
			
            $row[]		=	!empty($field['gudang_id']) ? '<b style="color:'.$gudang['color'].'">'.$gudang['nama'].'<b>' : '-';

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
	function get_count_bahan(){
		$data = [
			'all'		=>	$this->db->get_where('master_data_bahan', ['status'=>1])->num_rows(),
			'in_stock'	=>	$this->db->query('SELECT count(*) as count FROM `master_data_bahan` where qty > min_qty and status=1')->row_array(),
			'out_of_stock'	=>	$this->db->query('SELECT count(*) as count FROM `master_data_bahan` where qty < min_qty and status=1')->row_array(),
		];

		echo json_encode($data) ;
	}
}
