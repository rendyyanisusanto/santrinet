<?php
defined('BASEPATH') OR exit('No direct script access allowed');
		use PhpOffice\PhpSpreadsheet\Spreadsheet;
		use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Laporan extends MY_Controller {

    public $arr = [
        'title'				=>	'Laporan',
        'parents_link'		=>	'role/general/page/laporan'
    ];

	/*
		CHANGE PAGE
	*/
    
	public function penjualan()
	{
		$data['param'] 		= 	$this->arr;
        $data['param']['title'] =   'Laporan Penjualan/Sales Order';
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/laporan_penjualan/index',$data['param']['parents_link'].'/laporan_penjualan/js'],$data);
	}
	public function pembelian()
	{
		$data['param'] 		= 	$this->arr;
        $data['param']['title'] =   'Laporan Pembelian/Purchase Order';
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/laporan_pembelian/index',$data['param']['parents_link'].'/laporan_pembelian/js'],$data);
	}
	public function kartu_stok()
	{
		$data['param'] 		= 	$this->arr;
        $data['param']['title'] =   'Kartu Stok';
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/kartu_stok/index',$data['param']['parents_link'].'/kartu_stok/js'],$data);
	}
	public function mutasi_stok()
	{
		$data['param'] 		= 	$this->arr;
        $data['param']['title'] =   'Mutasi Stok';
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/mutasi_stok/index',$data['param']['parents_link'].'/mutasi_stok/js'],$data);
	}
	public function neraca()
	{
		$data['param'] 		= 	$this->arr;
        $data['param']['title'] =   'Laporan Neraca';
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/neraca/index',$data['param']['parents_link'].'/neraca/js'],$data);
	}
	public function laba_rugi()
	{
		$data['param'] 		= 	$this->arr;
        $data['param']['title'] =   'Laporan Laba Rugi';
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/laba_rugi/index',$data['param']['parents_link'].'/laba_rugi/js'],$data);
	}
	public function buku_besar()
	{
		$data['param'] 		= 	$this->arr;
        $data['param']['title'] =   'Laporan Buku Besar';
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/buku_besar/index',$data['param']['parents_link'].'/buku_besar/js'],$data);
	}
	public function customer()
	{
		$data['param'] 		= 	$this->arr;
        $data['param']['title'] =   'Statistik Customer';
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/customer/index',$data['param']['parents_link'].'/customer/js'],$data);
	}
	public function find_customer($id){
		$data['param'] 		= 	$this->arr;
		$data['customer']	=	$this->my_where('master_data_customer', ['id'=>$id])->row_array();
		$data['sales_order']	=	$this->my_where('v_lap_so', ['customer_id'=>$id])->result_array();
		$data['statistik']	=	$this->db->query('SELECT *, sum(qty) as total_beli, (select nama from produk where produk_id = produk.id) as nama_produk FROM `v_so_dtso` where customer_id = '.$id.' GROUP BY produk_id ORDER BY total_beli DESC')->result_array();
        $this->my_view([$data['param']['parents_link'].'/customer/table'],$data);
	}
	public function find_penjualan()
	{
        
		$data['param'] 		= 	$this->arr;
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_lap_so')->result_array();

		$this->my_view([$data['param']['parents_link'].'/laporan_penjualan/table_penjualan'],$data);
	}

    
	public function find_pembelian()
	{
        
		$data['param'] 		= 	$this->arr;
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];

		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_lap_po')->result_array();

		$this->my_view([$data['param']['parents_link'].'/laporan_pembelian/table_pembelian'],$data);
	}

	public function find_kartu_stok()
	{
        
		$data['param'] 		= 	$this->arr;
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$bahan = $_POST['bahan'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['bahan']	=	$this->my_where('master_data_bahan', ['id'=>$bahan])->row_array();
		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get_where('v_histori_stok_bahan', ['bahan_id'=>$bahan])->result_array();

		$this->my_view([$data['param']['parents_link'].'/kartu_stok/table'],$data);
	}

	public function find_mutasi_stok()
	{
        
		$data['param'] 		= 	$this->arr;
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_histori_stok_bahan')->result_array();

		$this->my_view([$data['param']['parents_link'].'/mutasi_stok/table'],$data);
	}

	// neraca
	function find_neraca()
	{
		$data['param'] 		= 	$this->arr;
		$coa = $this->db->get('coa')->result_array();
		$akun = [];
		foreach ($coa as $key => $value) {
			$akun [] = [
				'id'=>	$value['id'],
				'coa'	=>	$value['name'],
				'induk'	=>	$this->induk_akun($value)
			];
		}
		$data['akun']	=	$akun;

		$data['mulai'] = $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		
		$this->my_view([$data['param']['parents_link'].'/neraca/table'],$data);
	}
	function induk_akun($data){
		$send = [];
		$induk = $this->my_where('induk_akun', ['coa_id'=>$data['id']])->result_array();
		foreach ($induk as $key => $value) {
			$send[] = [
				'nama'		=>	$value['nama'],
				'no_akun'	=>	$value['no_akun'],
				'akun'		=>	$this->akun_get($value)
			];
		}
		return $send;
	}

	function akun_get($data){
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$akun = $this->my_where('akun', ['indukakun_id'=>$data['id']])->result_array();
		$send = [];
		$akun_kosong		=	(isset($_POST['akun_kosong']))?1:0;
		foreach ($akun as $key => $value) {
			$select = ($value['saldo_normal'] == 'D') ? 'sum(debit)-sum(kredit) as cash' : 'sum(kredit)-sum(debit) as cash';
			
			$cek = $this->db->select($select)->where('akun_id', $value['id'])->where('DATE(create_at) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(create_at) <=', date_format(date_create($sampai),"Y/m/d"))->get('jurnal_umum');
			$jurnal = $cek->row_array(); 

			$cash = (!empty($jurnal['cash']))?$jurnal['cash']:0;
			if ($cash == 0 && $akun_kosong == 0) {continue;}
			$send[] = [
				'no_ref'	=>	$value['no_ref'],
				'nama'		=>	$value['nama'],
				'saldo_normal'	=>	$value['saldo_normal'],
				'cash'		=>	$cash
			];
		}
		return $send;
	}
	// end neraca

	// laba_rugi
	
	function find_laba_rugi()
	{
		
		$data['param'] 		= 	$this->arr;
		$coa = $this->db->where('id', 4)->or_where('id', 5)->get('coa')->result_array();
		$akun = [];
		foreach ($coa as $key => $value) {
			$akun [] = [
				'id'=>	$value['id'],
				'coa'	=>	$value['name'],
				'induk'	=>	$this->induk_akun_lr($value)
			];
		}


		$data['mulai'] = $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['akun']	=	$akun;
		
		$this->my_view([$data['param']['parents_link'].'/laba_rugi/table'],$data);
	}
	function induk_akun_lr($data){
		$send = [];
		$induk = $this->my_where('induk_akun', ['coa_id'=>$data['id']])->result_array();
		foreach ($induk as $key => $value) {
			$send[] = [
				'nama'		=>	$value['nama'],
				'no_akun'	=>	$value['no_akun'],
				'akun'		=>	$this->akun_get_lr($value)
			];
		}
		return $send;
	}

	function akun_get_lr($data){
		
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$akun = $this->my_where('akun', ['indukakun_id'=>$data['id']])->result_array();
		$send = [];
		$akun_kosong		=	(isset($_POST['akun_kosong']))?1:0;
		foreach ($akun as $key => $value) {
			
			$cek = $this->db->select('sum(debit)-sum(kredit) as cash')->where('akun_id', $value['id'])->where('DATE(create_at) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(create_at) <=', date_format(date_create($sampai),"Y/m/d"))->get('jurnal_umum');
			$jurnal = $cek->row_array(); 

			$cash = (!empty($jurnal['cash']))?abs($jurnal['cash']):0;
			if ($cash == 0 && $akun_kosong == 0) {continue;}
			$send[] = [
				'no_ref'	=>	$value['no_ref'],
				'nama'		=>	$value['nama'],
				'cash'		=>	$cash
			];
		}
		return $send;
	}
	
	// end laba_rugi

	function get_bahan_select(){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
	     $this->db->where("nama like '%".$searchTerm."%' ");
	     $this->db->or_where("kode like '%".$searchTerm."%' ")->limit(5);
	     $this->db->order_by('id', 'DESC');
	     $fetched_records = $this->db->get('master_data_bahan');
	     $bahan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['nama'].' ('.$user['kode'].')');
	     }

      	echo json_encode($data);
	
	}


	// buku besar
	
	function find_buku_besar()
	{
		$data['param'] 		= 	$this->arr;
		$akun = $this->db->get('akun')->result_array();
		$akun_set = [];
		$tampilkan_semua	=	1;
		$akun_kosong		=	(isset($_POST['akun_kosong']))?1:0;
		foreach ($akun as $key => $value) {
			if ($tampilkan_semua == 0 && !in_array($value['id'], $_POST['akun_id'])) {continue;}
			$cek = $this->cek_jurnal_umum($value);
			if ($cek==0 && $akun_kosong == 0) {continue;}
				
				$akun_set [] = [
						'no_ref'		=>	$value['no_ref'],
						'nama'			=>	$value['nama'],
						'saldo_normal'	=>	$value['saldo_normal'],
						'jurnal_umum'	=>	$this->jurnal_umum($value)
				];
			
			
			
		}
		$data['akun']				=	$akun_set;
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		// echo json_encode($data);
		$this->my_view([$data['param']['parents_link'].'/buku_besar/table'],$data);
	}
	function jurnal_umum($data){
		
		$mulai 		= 	$_POST['mulai'];
		$sampai 	= 	$_POST['sampai'];
		$send		=	[];

		$jurnal_umum	=	$this->db->where('akun_id', $data['id'])->where('DATE(create_at) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(create_at) <=', date_format(date_create($sampai),"Y/m/d"))->get('jurnal_umum')->result_array();
		return $jurnal_umum;
	}
	function cek_jurnal_umum($data){
		
		$mulai 		= 	$_POST['mulai'];
		$sampai 	= 	$_POST['sampai'];
		$tampilkan_semua	=	(isset($_POST['semua_akun']))?1:0;

		$send		=	[];

		$jurnal_umum	=	$this->db->where('akun_id', $data['id' ])->where('DATE(create_at) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(create_at) <=', date_format(date_create($sampai),"Y/m/d"))->get('jurnal_umum')->num_rows();
		return $jurnal_umum;
	}
	// end buku besar
	// customer
	function get_customer_select(){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
	     $this->db->where("nama like '%".$searchTerm."%' ")->order_by('id','DESC')->limit(5);
	     $fetched_records = $this->db->get('master_data_customer');
	     $cust = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($cust as $customer){
	        $data[] = array("id"=>$customer['id'], "text"=>$customer['nama'].' ('.$customer['no_hp'].')');
	     }

      	echo json_encode($data);
	}
	// end customer
// print Mutasi stok

	function print_mutasi_stok(){
		$data['param'] 		= 	$this->arr;
		
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_histori_stok_bahan')->result_array();

		// $this->my_view([$data['param']['parents_link'].'/laporan_penjualan/table_penjualan'],$data);

        $this->load->view('role/general/page/laporan/mutasi_stok/print', $data);
	}
	function print_pdf_mutasi_stok()
    {
        $data['param']  =   $this->arr;
        $mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_histori_stok_bahan')->result_array();

        $param  =   [
            'filename'          =>      'Mutasi Stok '.$mulai.'/'.$sampai,
        ];

        $param  =   [
                'url'           =>  'role/general/page/laporan/mutasi_stok/print',
                'customPaper'   =>  'A4',
                'data_value'    =>  $data,
                'name'          =>  md5(rand(0,9999999)),
                'pos'           => 'landscape'
        ];

        $this->my_pdf($param);
    }
    function print_excel_mutasi_stok(){

        $data['param']  =   $this->arr;
       $mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$find = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_histori_stok_bahan')->result_array();

        $param  =   [
            'filename'          =>      'mutasi_stok',
        ];

        $path_exc = $this->my_where('setting_table', ['table'=>'mutasi_stok','name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>'mutasi_stok','name'=>'start_row_excel'])->row_array();        
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
        $sheet->setCellValue('B'.($no), 'Kode');
        $sheet->setCellValue('C'.($no), 'bahan');
        $sheet->setCellValue('D'.($no), 'Keterangan');
        $sheet->setCellValue('E'.($no), 'Masuk');
        $sheet->setCellValue('F'.($no), 'Keluar');

        $sheet->getStyle('A'.$no.':F'.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($find as $key => $value) {
            # code...
	        $sheet->setCellValue('A'.($no), date_format(date_create($value['tanggal']), 'd-m-Y'));
	        $sheet->setCellValue('B'.($no), $value['kode']);
	        $sheet->setCellValue('C'.($no), $value['nama']);
	        $sheet->setCellValue('D'.($no), $value['keterangan']);
	        $sheet->setCellValue('E'.($no), $value['masuk']);
	        $sheet->setCellValue('F'.($no), $value['keluar']);
            
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
	// print kartu stok

	function print_kartu_stok(){
		$data['param'] 		= 	$this->arr;
		
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$bahan = $_POST['bahan'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['bahan']	=	$this->my_where('master_data_bahan', ['id'=>$bahan])->row_array();
		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get_where('v_histori_stok_bahan', ['bahan_id'=>$bahan])->result_array();

		// $this->my_view([$data['param']['parents_link'].'/laporan_penjualan/table_penjualan'],$data);

        $this->load->view('role/general/page/laporan/kartu_stok/print', $data);
	}
	function print_pdf_kartu_stok()
    {
        $data['param']  =   $this->arr;
        $mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$bahan = $_POST['bahan'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['bahan']	=	$this->my_where('master_data_bahan', ['id'=>$bahan])->row_array();
		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get_where('v_histori_stok_bahan', ['bahan_id'=>$bahan])->result_array();

        $param  =   [
            'filename'          =>      'Kartu Stok '.$data['bahan']['nama'].' '.$mulai.'/'.$sampai,
        ];

        $param  =   [
                'url'           =>  'role/general/page/laporan/kartu_stok/print',
                'customPaper'   =>  'A4',
                'data_value'    =>  $data,
                'name'          =>  md5(rand(0,9999999)),
                'pos'           => 'landscape'
        ];

        $this->my_pdf($param);
    }
    function print_excel_kartu_stok(){

        $data['param']  =   $this->arr;
        $mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$bahan = $_POST['bahan'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['bahan']	=	$this->my_where('master_data_bahan', ['id'=>$bahan])->row_array();
		$find = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get_where('v_histori_stok_bahan', ['bahan_id'=>$bahan])->result_array();
        $param  =   [
            'filename'          =>      'kartu_stok',
        ];

        $path_exc = $this->my_where('setting_table', ['table'=>'kartu_stok','name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>'kartu_stok','name'=>'start_row_excel'])->row_array();        
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
        $sheet->setCellValue('B'.($no), 'Kode');
        $sheet->setCellValue('C'.($no), 'Keterangan');
        $sheet->setCellValue('D'.($no), 'Masuk');
        $sheet->setCellValue('E'.($no), 'Keluar');

        $sheet->getStyle('A'.$no.':E'.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($find as $key => $value) {
            # code...
	        $sheet->setCellValue('A'.($no), date_format(date_create($value['tanggal']), 'd-m-Y'));
	        $sheet->setCellValue('B'.($no), $value['kode']);
	        $sheet->setCellValue('C'.($no), $value['keterangan']);
	        $sheet->setCellValue('D'.($no), $value['masuk']);
	        $sheet->setCellValue('E'.($no), $value['keluar']);
            
            $sheet->getStyle('A'.$no.':E'.$no)->applyFromArray($styleArray);
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

	// Print Penjualan
	function print_penjualan(){
		$data['param'] 		= 	$this->arr;
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_lap_so')->result_array();

		// $this->my_view([$data['param']['parents_link'].'/laporan_penjualan/table_penjualan'],$data);

        $this->load->view('role/general/page/laporan/laporan_penjualan/print', $data);
	}
	function print_pdf_penjualan()
    {
        $data['param']  =   $this->arr;
        $data[$data['param']['table']]  =   [];
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_lap_so')->result_array();

        $param  =   [
            'filename'          =>      'Laporan Penjualan '.$mulai.'/'.$sampai,
        ];

        $param  =   [
                'url'           =>  'role/general/page/laporan/laporan_penjualan/cetak_pdf',
                'customPaper'   =>  'A4',
                'data_value'    =>  $data,
                'name'          =>  md5(rand(0,9999999)),
                'pos'           => 'landscape'
        ];

        $this->my_pdf($param);
    }
    function print_excel_penjualan(){

        $data['param']  =   $this->arr;
        $mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$find = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_lap_so')->result_array();


        $param  =   [
            'filename'          =>      'laporan_penjualan',
        ];

        $path_exc = $this->my_where('setting_table', ['table'=>'laporan_penjualan','name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>'laporan_penjualan','name'=>'start_row_excel'])->row_array();        
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
        $sheet->setCellValue('B'.($no), 'Kode');
        $sheet->setCellValue('C'.($no), 'Customer');
        $sheet->setCellValue('D'.($no), 'Subtotal');
        $sheet->setCellValue('E'.($no), 'Diskon');
        $sheet->setCellValue('F'.($no), 'PPN');
        $sheet->setCellValue('G'.($no), 'Total');
        $sheet->setCellValue('H'.($no), 'Terbayar');
        $sheet->setCellValue('I'.($no), 'Sisa');

        $sheet->getStyle('A'.$no.':I'.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($find as $key => $value) {
            # code...
	        $sheet->setCellValue('A'.($no), date_format(date_create($value['tanggal']), 'd-m-Y'));
	        $sheet->setCellValue('B'.($no), $value['kode']);
	        $sheet->setCellValue('C'.($no), $value['nama_customer']);
	        $sheet->setCellValue('D'.($no), 'Rp. '.number_format($value['subtotal'] ,0,'.','.'));
	        $sheet->setCellValue('E'.($no), 'Rp. '.number_format($value['diskon'],0,'.','.'));
	        $sheet->setCellValue('F'.($no), 'Rp. '.number_format($value['total_ppn'],0,'.','.'));
	        $sheet->setCellValue('G'.($no), 'Rp. '.number_format($value['total'],0,'.','.'));
	        $sheet->setCellValue('H'.($no), 'Rp. '.number_format($value['terbayar'],0,'.','.'));
	        $sheet->setCellValue('I'.($no), 'Rp. '.number_format(($value['total']-$value['terbayar']),0,'.','.'));
            
            $sheet->getStyle('A'.$no.':I'.$no)->applyFromArray($styleArray);
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

    // Print Pembelian

    function print_pembelian(){
		$data['param'] 		= 	$this->arr;
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		
		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_lap_po')->result_array();

		// $this->my_view([$data['param']['parents_link'].'/laporan_penjualan/table_penjualan'],$data);

        $this->load->view('role/general/page/laporan/laporan_pembelian/print', $data);
	}
	function print_pdf_pembelian()
    {
        $data['param']  =   $this->arr;
        $data[$data['param']['table']]  =   [];
		$mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		
		$data['find'] = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_lap_po')->result_array();

        $param  =   [
            'filename'          =>      'Laporan Pembelian '.$mulai.'/'.$sampai,
        ];

        $param  =   [
                'url'           =>  'role/general/page/laporan/laporan_pembelian/cetak_pdf',
                'customPaper'   =>  'A4',
                'data_value'    =>  $data,
                'name'          =>  md5(rand(0,9999999)),
                'pos'           => 'landscape'
        ];

        $this->my_pdf($param);
    }
    function print_excel_pembelian(){

        $data['param']  =   $this->arr;
        $mulai = $_POST['mulai'];
		$sampai = $_POST['sampai'];
		$data['mulai']= $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$find = $this->db->where('DATE(tanggal) >=', date_format(date_create($mulai),"Y/m/d"))->where('DATE(tanggal) <=', date_format(date_create($sampai),"Y/m/d"))->get('v_lap_po')->result_array();


        $param  =   [
            'filename'          =>      'laporan_pembelian',
        ];

        $path_exc = $this->my_where('setting_table', ['table'=>'laporan_pembelian','name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>'laporan_pembelian','name'=>'start_row_excel'])->row_array();        
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
        $sheet->setCellValue('B'.($no), 'Kode');
        $sheet->setCellValue('C'.($no), 'Suplier');
        $sheet->setCellValue('D'.($no), 'Subtotal');
        $sheet->setCellValue('E'.($no), 'Diskon');
        $sheet->setCellValue('F'.($no), 'PPN');
        $sheet->setCellValue('G'.($no), 'Total');



	                                
        $sheet->getStyle('A'.$no.':G'.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($find as $key => $value) {
            # code...
	        $sheet->setCellValue('A'.($no), date_format(date_create($value['tanggal']), 'd-m-Y'));
	        $sheet->setCellValue('B'.($no), $value['kode']);
	        $sheet->setCellValue('C'.($no), $value['nama_suplier']);
	        $sheet->setCellValue('D'.($no), 'Rp. '.number_format($value['subtotal'] ,0,'.','.'));
	        $sheet->setCellValue('E'.($no), 'Rp. '.number_format($value['diskon'],0,'.','.'));
	        $sheet->setCellValue('F'.($no), 'Rp. '.number_format($value['total_ppn'],0,'.','.'));
	        $sheet->setCellValue('G'.($no), 'Rp. '.number_format($value['total'],0,'.','.'));
            
            $sheet->getStyle('A'.$no.':G'.$no)->applyFromArray($styleArray);
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
    
    // neraca
    function print_neraca(){
		$data['param'] 		= 	$this->arr;
		$data['param'] 		= 	$this->arr;
		$coa = $this->db->get('coa')->result_array();
		$akun = [];
		foreach ($coa as $key => $value) {
			$akun [] = [
				'id'=>	$value['id'],
				'coa'	=>	$value['name'],
				'induk'	=>	$this->induk_akun($value)
			];
		}
		$data['akun']	=	$akun;

		$data['mulai'] = $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		// $this->my_view([$data['param']['parents_link'].'/laporan_penjualan/table_penjualan'],$data);

        $this->load->view('role/general/page/laporan/neraca/print', $data);
	}
	function print_pdf_neraca()
    {
        $data['param']  =   $this->arr;
        $data[$data['param']['table']]  =   [];
		$coa = $this->db->get('coa')->result_array();
		$akun = [];
		foreach ($coa as $key => $value) {
			$akun [] = [
				'id'=>	$value['id'],
				'coa'	=>	$value['name'],
				'induk'	=>	$this->induk_akun($value)
			];
		}
		$data['akun']	=	$akun;

		$data['mulai'] = $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];

        $param  =   [
            'filename'          =>      'Laporan Neraca '.$mulai.'/'.$sampai,
        ];

        $param  =   [
                'url'           =>  'role/general/page/laporan/neraca/cetak_pdf',
                'customPaper'   =>  'A4',
                'data_value'    =>  $data,
                'name'          =>  md5(rand(0,9999999)),
                'pos'           => 'portrait'
        ];

        $this->my_pdf($param);
    }
    // laba Rugi
    function print_labarugi(){
		$data['param'] 		= 	$this->arr;
		$coa = $this->db->where('id', 4)->or_where('id', 5)->get('coa')->result_array();
		$akun = [];
		foreach ($coa as $key => $value) {
			$akun [] = [
				'id'=>	$value['id'],
				'coa'	=>	$value['name'],
				'induk'	=>	$this->induk_akun_lr($value)
			];
		}


		$data['mulai'] = $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		$data['akun']	=	$akun;
		
		// $this->my_view([$data['param']['parents_link'].'/laporan_penjualan/table_penjualan'],$data);

        $this->load->view('role/general/page/laporan/laba_rugi/print', $data);
	}
	function print_pdf_labarugi()
    {
        $data['param'] 		= 	$this->arr;
		$coa = $this->db->where('id', 4)->or_where('id', 5)->get('coa')->result_array();
		$akun = [];
		foreach ($coa as $key => $value) {
			$akun [] = [
				'id'=>	$value['id'],
				'coa'	=>	$value['name'],
				'induk'	=>	$this->induk_akun_lr($value)
			];
		}
		$data['akun']	=	$akun;
		

		$data['mulai'] = $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
        $param  =   [
            'filename'          =>      'Laporan Laba Rugi '.$mulai.'/'.$sampai,
        ];

        $param  =   [
                'url'           =>  'role/general/page/laporan/laba_rugi/cetak_pdf',
                'customPaper'   =>  'A4',
                'data_value'    =>  $data,
                'name'          =>  md5(rand(0,9999999)),
                'pos'           => 'portrait'
        ];

        $this->my_pdf($param);
    }
    // laba Rugi
    function print_bukubesar(){
		$data['param'] 		= 	$this->arr;
		$akun = $this->db->get('akun')->result_array();
		$akun_set = [];
		$tampilkan_semua	=	1;
		$akun_kosong		=	(isset($_POST['akun_kosong']))?1:0;
		foreach ($akun as $key => $value) {
			if ($tampilkan_semua == 0 && !in_array($value['id'], $_POST['akun_id'])) {continue;}
			$cek = $this->cek_jurnal_umum($value);
			if ($cek==0 && $akun_kosong == 0) {continue;}
				
				$akun_set [] = [
						'no_ref'		=>	$value['no_ref'],
						'nama'			=>	$value['nama'],
						'saldo_normal'	=>	$value['saldo_normal'],
						'jurnal_umum'	=>	$this->jurnal_umum($value)
				];
			
			
			
		}
		$data['akun']	=	$akun_set;
		$data['mulai'] = $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
		
		// $this->my_view([$data['param']['parents_link'].'/laporan_penjualan/table_penjualan'],$data);

        $this->load->view('role/general/page/laporan/buku_besar/print', $data);
	}
	function print_pdf_bukubesar()
    {
        $data['param'] 		= 	$this->arr;
		$akun = $this->db->get('akun')->result_array();
		$akun_set = [];
		$tampilkan_semua	=	1;
		$akun_kosong		=	(isset($_POST['akun_kosong']))?1:0;
		foreach ($akun as $key => $value) {
			if ($tampilkan_semua == 0 && !in_array($value['id'], $_POST['akun_id'])) {continue;}
			$cek = $this->cek_jurnal_umum($value);
			if ($cek==0 && $akun_kosong == 0) {continue;}
				
				$akun_set [] = [
						'no_ref'		=>	$value['no_ref'],
						'nama'			=>	$value['nama'],
						'saldo_normal'	=>	$value['saldo_normal'],
						'jurnal_umum'	=>	$this->jurnal_umum($value)
				];
			
			
			
		}
		$data['akun']	=	$akun_set;
		$data['mulai'] = $_POST['mulai'];
		$data['sampai'] = $_POST['sampai'];
        $param  =   [
            'filename'          =>      'Laporan Laba Rugi '.$mulai.'/'.$sampai,
        ];

        $param  =   [
                'url'           =>  'role/general/page/laporan/buku_besar/cetak_pdf',
                'customPaper'   =>  'A4',
                'data_value'    =>  $data,
                'name'          =>  md5(rand(0,9999999)),
                'pos'           => 'portrait'
        ];

        $this->my_pdf($param);
    }
}