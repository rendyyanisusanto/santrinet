<?php
defined('BASEPATH') OR exit('No direct script access allowed');
		use PhpOffice\PhpSpreadsheet\Spreadsheet;
		use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class jurnal_umum extends MY_Controller {

    public $arr = [
        'title'				=>	'Jurnal Umum',
        'table'				=>	'jurnal_umum',
        'column'			=>	[ 'ref','keterangan','akun_id'],
        'column_order'		=>	[ 'id','ref','keterangan','akun_id'],
        'column_search'		=>	[ 'id','ref','keterangan','akun_id'],
        'order'				=>	['id'	=>	'DESC'],
        'id'				=>	'id',
        'parents_link'		=>	'role/general/page/jurnal_umum'
    ];

	/*
		CHANGE PAGE
	*/
    
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	

	public function add_page()
	{
		$this->display_view('add_page');
	}

	public function find()
	{
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];

		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];

		$find = $this->db->where('DATE(create_at) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(create_at) <=', date_format(date_create($sampai),"Y/m/d"))->where('status_aktif', 1)->get('jurnal_umum')->result_array();

		$send = [];
		foreach ($find as $key => $value) {
			$query 	= $this->my_where('jurnal_umum', ['ref' => $value['ref']]);
			$akun 	= $this->my_where('akun',['id'=>$value['akun_id']])->row_array();	
			$send [] = [
				'count' => 	$query->num_rows(),
				'akun' 	=>	$akun,
				'data'	=>	$value	
			];
		}
		$data['find'] = $send;
		$this->my_view(['role/general/page/jurnal_umum/index_page/table_jurnal'],$data);
	}
	function print(){
		$data['param'] 		= 	$this->arr;
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		
		$find = $this->db->where('DATE(create_at) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(create_at) <=', date_format(date_create($sampai),"Y/m/d"))->get('jurnal_umum')->result_array();

		$send = [];
		foreach ($find as $key => $value) {
			$query 	= $this->my_where('jurnal_umum', ['ref' => $value['ref']]);
			$akun 	= $this->my_where('akun',['id'=>$value['akun_id']])->row_array();	
			$send [] = [
				'count' => 	$query->num_rows(),
				'akun' 	=>	$akun,
				'data'	=>	$value	
			];
		}
		$data['find'] = $send;
        $this->load->view('role/general/page/jurnal_umum/index_page/print', $data);
	}
	function print_pdf()
    {
        $data['param']  =   $this->arr;
        $data[$data['param']['table']]  =   [];
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		
		$find = $this->db->where('DATE(create_at) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(create_at) <=', date_format(date_create($sampai),"Y/m/d"))->get('jurnal_umum')->result_array();

		$send = [];
		foreach ($find as $key => $value) {
			$query 	= $this->my_where('jurnal_umum', ['ref' => $value['ref']]);
			$akun 	= $this->my_where('akun',['id'=>$value['akun_id']])->row_array();	
			$send [] = [
				'count' => 	$query->num_rows(),
				'akun' 	=>	$akun,
				'data'	=>	$value	
			];
		}
		
		$data['find'] = $send;
        $param  =   [
            'filename'          =>      'Jurnal Harian '.$mulai.'/'.$sampai,
        ];

        $param  =   [
                'url'           =>  'role/general/page/jurnal_umum/index_page/cetak_pdf',
                'customPaper'   =>  'A4',
                'data_value'    =>  $data,
                'name'          =>  md5(rand(0,9999999)),
                'pos'           => 'landscape'
        ];

        $this->my_pdf($param);
    }
}