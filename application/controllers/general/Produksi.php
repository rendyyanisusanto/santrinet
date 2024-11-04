<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


class produksi extends MY_Controller {
	public $arr = [
			'title'				=>	'Produksi',
			'table'				=>	'produksi',
			'column'			=>	[ 'kode','tanggal', 'keterangan','status','status_produksi','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','tanggal', 'keterangan', 'status','status_produksi','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','tanggal', 'keterangan', 'status','status_produksi','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/produksi'
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
		$data['customer']	=	$this->my_where('master_data_customer', [])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/modal_produk',$data['param']['parents_link'].'/add_page/modal_template',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}
	function edit_page($id)
	{
		try {
			if ($id !=='') {
				$data['param'] 				= 	$this->arr;
				$data['account']			=	$this->get_user_account();
				$data['data_edit']['produksi']	=	$this->my_where('produksi', ['id'=>$id])->row_array();
				// $data['produk']		=	$this->db->query('select *, (select nama from produk where produk.id = detail_produksi_produk.produk_id) as nama from detail_produksi_produk where produksi_id='.$id)->result_array();
				$data['customer']			=	$this->my_where('master_data_customer', [])->result_array();
				
				$produk		=	$this->db->query('select *, (select nama from produk where produk.id = detail_produksi_produk.produk_id) as nama from detail_produksi_produk where produksi_id='.$id)->result_array();
				// $data['detail_bahan_produksi']	=	$this->db->query("select *, (select nama from master_data_bahan where master_data_bahan.id=bahan_id) as nama, (select kode from master_data_bahan where master_data_bahan.id=bahan_id) as kode, (select nama from satuan_beli where satuan_beli.id=satuan_id) as satuan from detail_bahan_produksi where produksi_id=".$id)->result_array();
				$data['produk']	=	[];
				foreach ($produk as $key => $value) {
					$data['produk'][$key]['produk']	=	$value;
					$data['produk'][$key]['bahan'] = $this->db->query("select *, 
						(select nama from master_data_bahan where master_data_bahan.id=bahan_id) as nama_bahan, 
						(select qty from master_data_bahan where master_data_bahan.id=bahan_id) as qty_bahan, 
						(select nama from satuan_beli where satuan_beli.id = satuan_id) as nama_satuan
						from detail_bahan_produksi where produksi_id=".$id." and produk_id=".$value['produk_id'])->result_array();
					// echo "select *, (select nama from master_data_bahan where master_data_bahan.id=bahan_id) as nama_bahan from detail_bahan_produksi where produksi_id=".$id." and produk_id=".$value['produk_id'];
				}

				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/modal_produk',$data['param']['parents_link'].'/edit_page/modal_template',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting'],$data);
			}
		} catch (Exception $e) {
			
		}
	}
	public function convert_so($id)
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['produksi']	=	$this->my_where('produksi', ['id'=>$id])->row_array();
		$data['so']			=	$this->my_where('sales_order', ['id'=>$data['produksi']['so_id']])->row_array();
		$data['customer']	=	$this->my_where('master_data_customer', ['id'=>$data['so']['customer_id']])->row_array();
		$data['produk']		=	$this->db->query('select *, (select nama from produk where produk.id = detail_produksi_produk.produk_id) as nama from detail_produksi_produk where produksi_id='.$id)->result_array();
		// $data['detail_bahan_produksi']	=	$this->db->query("select *, (select nama from master_data_bahan where master_data_bahan.id=bahan_id) as nama, (select kode from master_data_bahan where master_data_bahan.id=bahan_id) as kode, (select nama from satuan_beli where satuan_beli.id=satuan_id) as satuan from detail_bahan_produksi where produksi_id=".$id)->result_array();

		// foreach ($produk as $key => $value) {
		// 	$data['produk'][$key]['produk']	=	$value;
		// 	$bahan = $this->db->query("select *, (select nama from master_data_bahan where master_data_bahan.id=bahan_id) as nama_bahan from detail_bahan_produksi where produksi_id=".$id." and produk_id=".$value['id'])->result_array();
		// 	$data['produk'][$key]['bahan'] = $bahan;
		// }
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/convert_so',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}
	function get_template($id='', $qty='')
	{
		$data['param'] 		= 	$this->arr;
		$data['template']	=	$this->my_where('template_produk', ['produk_id'=>$id])->result_array();
		$data['produk_id']	=	$id;
		$data['qty']		=	$qty;
		$this->my_view([$data['param']['parents_link'].'/add_page/detail_template'], $data);
	}
	function nota($id = ""){
		try {
			if($id !== ""){
				
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['produksi']	=	$this->my_where("produksi", ['id'=>$id])->row_array();
				$data['detail_produksi_produk']	=	$this->db->query("select *, (select nama from produk where produk.id=produk_id) as nama_produk, (select kode from produk where produk.id=produk_id) as kode from detail_produksi_produk where produksi_id=".$id)->result_array();
				$data['detail_bahan_produksi']	=	$this->db->query("select *, (select nama from master_data_bahan where master_data_bahan.id=bahan_id) as nama, (select kode from master_data_bahan where master_data_bahan.id=bahan_id) as kode, (select nama from satuan_beli where satuan_beli.id=satuan_id) as satuan from detail_bahan_produksi where produksi_id=".$id)->result_array();
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/nota'],$data);
			}
		} catch (\Throwable $th) {
			//throw $th;
		}
	}
	function print_inv($id = ""){
		try {
			if($id !== ""){
				
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['produksi']	=	$this->my_where("produksi", ['id'=>$id])->row_array();
				$data['detail_produksi_produk']	=	$this->db->query("select *, (select nama from produk where produk.id=produk_id) as nama_produk, (select kode from produk where produk.id=produk_id) as kode from detail_produksi_produk where produksi_id=".$id)->result_array();
				$data['detail_bahan_produksi']	=	$this->db->query("select *, (select nama from master_data_bahan where master_data_bahan.id=bahan_id) as nama, (select kode from master_data_bahan where master_data_bahan.id=bahan_id) as kode, (select nama from satuan_beli where satuan_beli.id=satuan_id) as satuan from detail_bahan_produksi where produksi_id=".$id)->result_array();

				$data['notaheader']		=	$this->get_setting_table('produksi', 'template_nota_header');
				$data['notafooter']		=	$this->get_setting_table('produksi', 'template_nota_footer');

				
				$data['slice']	=	[];
				$data['slice_detail']	=	[];
				$n = 0;
				$i = 0;
				foreach ($data['detail_produksi_produk'] as $key => $value) {
					if ($i<=10) {
						$data['slice'][$n]['detail_produksi_produk'][] = $value;
					}else{
						$n++;
						$i=0;
					}
					$i++;
				}


				$n = 0;
				$i = 0;
				foreach ($data['detail_bahan_produksi'] as $key => $value) {
					if ($i<10) {
						$data['slice_detail'][$n]['detail_bahan_produksi'][] = $value;
					}else{
						$n++;
						$i=0;
					}
					$i++;
				}

				$this->load->view($data['param']['parents_link'].'/index_page/print', $data);
			}
		} catch (\Throwable $th) {
			//throw $th;
		}
	}
	function print_struk($id){
		try {
			if($id !== ""){
				$data['param'] 		= 	$this->arr;
				$data['account']	=	$this->get_user_account();
				$data['produksi']	=	$this->my_where("produksi", ['id'=>$id])->row_array();
				$data['customer']		=	$this->my_where('master_data_customer',['id'=>$data['sales_order']['customer_id']])->row_array();
				$data['detail_produksi_produk']	=	$this->db->query("select *, (select nama from produk where produk.id=produk_id) as nama_produk, (select kode from produk where produk.id=produk_id) as kode from detail_produksi_produk where produksi_id=".$id)->result_array();
				$data['detail_bahan_produksi']	=	$this->db->query("select *, (select nama from master_data_bahan where master_data_bahan.id=bahan_id) as nama, (select kode from master_data_bahan where master_data_bahan.id=bahan_id) as kode, (select nama from satuan_beli where satuan_beli.id=satuan_id) as satuan from detail_bahan_produksi where produksi_id=".$id)->result_array();
				
				$data['struk']		=	$this->get_setting_table('produksi', 'template_struk_header');
				$data['strukfooter']		=	$this->get_setting_table('produksi', 'template_struk_footer');
				$this->load->view($data['param']['parents_link'].'/index_page/print_struk', $data);
			}
		} catch (Exception $e) {
			
		}
	}
	function simpan_data(){
		try {
			$data = [
				'kode'		=>	$_POST['kode'],
				'tanggal'	=>	$_POST['tanggal'],
				'keterangan'	=>	$_POST['keterangan'],
				'status'	=>	(($_POST['status_produksi'] == 1) ? 0 : 1),
				'status_produksi'	=>	0,
				'status_aktif' => 1,
				'customer_id'	=>	$_POST['customer_id'],
				'created_by' => $this->get_user_account()['id']
			];
			if($this->save_data('produksi', $data)){
				// get last produk
				$produksi = $this->my_where('produksi', [
					'kode'		=>	$_POST['kode'],
					'tanggal'	=>	$_POST['tanggal'],
				])->row_array();
				// add detail produk
				foreach ($_POST['produk'] as $key => $value) {
					$data_produk = [
						'produk_id'		=>	$value['id'],
						'produksi_id'	=>	$produksi['id'],
						'qty'			=>	$value['qty']
					];
					$this->save_data('detail_produksi_produk', $data_produk);
				}
				
				// add bahan
				foreach ($_POST['bahan'] as $key => $value) {
					$data_bahan = [
						'produk_id'		=>	$value['produk_id'],
						'produksi_id'	=>	$produksi['id'],
						'bahan_id'		=>	$value['bahan_id'],
						'satuan_id'		=>	$value['satuan_id'],
						'qty'			=>	$value['qty']
					];

					$this->save_data('detail_bahan_produksi', $data_bahan);
				}


				if(($_POST['status_produksi'] == 1)){
					// count bahan produksi
					$produksi=$this->my_where('produksi', [
						'id'	=>	$_POST['produksi_id']
					])->row_array();
					
					$bahan = $this->my_where('detail_bahan_produksi', [
						'produksi_id'	=>	$_POST['produksi_id']
					])->result_array();
					
					$count = 0;
					foreach ($bahan as $key => $value) {
						$cq = $this->db->query('select * from master_data_bahan')->row_array();
	
						$count = $value['qty'] * $cq['harga_satuan'];
					}

					$produk_produksi = $this->my_where('detail_produksi_produk', ['produksi_id'=>$_POST['produksi_id']])->result_array();
					
					foreach ($produk_produksi as $value) {
						$this->db->where('id', $value['produk_id']);
						$this->db->set('qty', 'qty+'.$value['qty'], FALSE);
						$this->db->update('produk'); 
					}
	
	
					// insert keuangan
	
					// debit persediaan produk
					$keuangan = [
						'ref'			=>	$produksi['kode'],
						'akun_id'		=>	40,
						'debit'			=>	$count,
						'kredit'		=>	0,
						'keterangan'	=>	'Produksi dengan kode '.$produksi['kode'].', Tanggal '.date_format(date_create($produksi['tanggal'],'d-m-Y')),
						'table'			=>	'produksi',
						'table_id'		=>	$_POST['produksi_id']
					];
	
					$keuangan_kredit = [
						'ref'			=>	$produksi['kode'],
						'akun_id'		=>	5,
						'debit'			=>	0,
						'kredit'		=>	$count,
						'keterangan'	=>	'Produksi dengan kode '.$produksi['kode'].', Tanggal '.date_format(date_create($produksi['tanggal'],'d-m-Y')),
						'table'			=>	'produksi',
						'table_id'		=>	$_POST['produksi_id']
					];
	
					$this->save_data('jurnal_umum', $keuangan);
					$this->save_data('jurnal_umum', $keuangan_kredit);
					
				}
				echo json_encode([
					'status'	=> 200,
					'msg'		=> 'Berhasil menambahkan produksi'
				]);
			}else{
				echo json_encode([
					'status'	=> 500,
					'msg'		=> 'Gagal menambahkan produksi'
				]);
			}
		} catch (\Throwable $th) {
			echo json_encode([
				'status'	=> 500,
				'msg'		=> $th
			]);
		}
	}
	function update_data(){
		try {
			$data = [
				'kode'			=>	$_POST['kode'],
				'tanggal'		=>	$_POST['tanggal'],
				'keterangan'	=>	$_POST['keterangan'],
				'status'		=>	(($_POST['status_produksi'] == 1) ? 0 : $_POST['status']),
				'status_produksi'	=>	$_POST['status_produksi'],
				'customer_id'	=>	$_POST['customer_id'],
				'updated_by' 	=> $this->get_user_account()['id']
			];
			if($this->my_update('produksi', $data, ['id'=>$_POST['id']])){

				// add detail produk
				foreach ($_POST['produk'] as $key => $value) {
					if (!isset($value['id_detail'])) {
						$data_produk = [
							'produk_id'		=>	$value['id'],
							'produksi_id'	=>	$_POST['id'],
							'qty'			=>	$value['qty']
						];
						$this->save_data('detail_produksi_produk', $data_produk);
					}
				}
				
				// edit bahan
				foreach ($_POST['bahan'] as $key => $value) {
					
					if (isset($value['id'])) {
						$this->my_update('detail_bahan_produksi', ['qty'=>$value['qty']], ['id'=>$value['id']]);
					}else{
						$data_bahan = [
							'produk_id'		=>	$value['produk_id'],
							'produksi_id'	=>	$_POST['id'],
							'bahan_id'		=>	$value['bahan_id'],
							'satuan_id'		=>	$value['satuan_id'],
							'qty'			=>	$value['qty']
						];
						$this->save_data('detail_bahan_produksi', $data_bahan);
					}
				}

				if(($_POST['status_produksi'] == 1)){
					// count bahan produksi
					$produksi=$this->my_where('produksi', [
						'id'	=>	$_POST['id']
					])->row_array();
					
					$bahan = $this->my_where('detail_bahan_produksi', [
						'produksi_id'	=>	$_POST['id']
					])->result_array();
					
					$count = 0;
					foreach ($bahan as $key => $value) {
						$cq = $this->db->query('select * from master_data_bahan')->row_array();
	
						$count += $value['qty'] * $cq['harga_satuan'];
					}
					
					// update produk
					$produk_produksi = $this->my_where('detail_produksi_produk', ['produksi_id'=>$_POST['id']])->result_array();
					
					foreach ($produk_produksi as $value) {
						$this->db->where('id', $value['produk_id']);
						$this->db->set('qty', 'qty+'.$value['qty'], FALSE);
						$this->db->update('produk'); 
					}
					// insert keuangan
	
					// debit persediaan produk
					$keuangan = [
						'ref'			=>	$produksi['kode'],
						'akun_id'		=>	40,
						'debit'			=>	$count,
						'kredit'		=>	0,
						'keterangan'	=>	'Produksi dengan kode '.$produksi['kode'].', Tanggal '.date_format(date_create($produksi['tanggal'],'d-m-Y')),
						'table'			=>	'produksi',
						'table_id'		=>	$_POST['id']
					];
	
					$keuangan_kredit = [
						'ref'			=>	$produksi['kode'],
						'akun_id'		=>	5,
						'debit'			=>	0,
						'kredit'		=>	$count,
						'keterangan'	=>	'Produksi dengan kode '.$produksi['kode'].', Tanggal '.date_format(date_create($produksi['tanggal'],'d-m-Y')),
						'table'			=>	'produksi',
						'table_id'		=>	$_POST['id']
					];

					$cek_jurnal_umum_debit = $this->my_where('jurnal_umum', [
						'akun_id'		=>	40,
						'table'			=>	'produksi',
						'table_id'		=>	$_POST['id']
					]);

					$cek_jurnal_umum_kredit = $this->my_where('jurnal_umum', [
						'akun_id'		=>	5,
						'debit'			=>	0,
						'table_id'		=>	$_POST['id']
					]);
					if ($cek_jurnal_umum_debit->num_rows() > 0) {
						$this->my_update('jurnal_umum', $keuangan, ['id_jurnal_umum'=>$cek_jurnal_umum_debit->row_array()['id_jurnal_umum']]);
					}else{
						$this->save_data('jurnal_umum', $keuangan);	
					}


					if ($cek_jurnal_umum_kredit->num_rows() > 0) {
						$this->my_update('jurnal_umum', $keuangan_kredit, ['id_jurnal_umum'=>$cek_jurnal_umum_kredit->row_array()['id_jurnal_umum']]);
					}else{
						$this->save_data('jurnal_umum', $keuangan_kredit);	
					}
					
				}
				echo json_encode([
					'status'	=> 200,
					'msg'		=> 'Berhasil menambahkan produksi'
				]);
			}else{
				echo json_encode([
					'status'	=> 500,
					'msg'		=> 'Gagal menambahkan produksi'
				]);
			}
		} catch (Exception $e) {
			
		}
	}
	function simpan_data_convert(){
		try {
			foreach ($_POST['bahan'] as $key => $value) {
				$data_bahan = [
					'produk_id'		=>	$value['produk_id'],
					'produksi_id'	=>	$_POST['produksi_id'],
					'bahan_id'		=>	$value['bahan_id'],
					'satuan_id'		=>	$value['satuan_id'],
					'qty'			=>	$value['qty']
				];

				$this->save_data('detail_bahan_produksi', $data_bahan);
			}

			$this->my_update('produksi', ['status_produksi'=>$_POST['status_produksi'],'status'=>(($_POST['status_produksi'] == 1) ? 0 : $_POST['status'])], ['id'=>$_POST['produksi_id']]);
			if(($_POST['status_produksi'] == 1)){
				// count bahan produksi
				$produksi=$this->my_where('produksi', [
					'id'	=>	$_POST['produksi_id']
				])->row_array();
				
				$bahan = $this->my_where('detail_bahan_produksi', [
					'produksi_id'	=>	$_POST['produksi_id']
				])->result_array();
				
				$count = 0;
				foreach ($bahan as $key => $value) {
					$cq = $this->db->query('select * from master_data_bahan')->row_array();

					$count = $value['qty'] * $cq['harga_satuan'];
				}


				// insert keuangan

				// debit persediaan produk
				$keuangan = [
					'ref'			=>	$produksi['kode'],
					'akun_id'		=>	40,
					'debit'			=>	$count,
					'kredit'		=>	0,
					'keterangan'	=>	'Produksi dengan kode '.$produksi['kode'].', Tanggal '.date_format(date_create($produksi['tanggal'],'d-m-Y')),
					'table'			=>	'produksi',
					'table_id'		=>	$_POST['produksi_id']
				];

				$keuangan_kredit = [
					'ref'			=>	$produksi['kode'],
					'akun_id'		=>	5,
					'debit'			=>	0,
					'kredit'		=>	$count,
					'keterangan'	=>	'Produksi dengan kode '.$produksi['kode'].', Tanggal '.date_format(date_create($produksi['tanggal'],'d-m-Y')),
					'table'			=>	'produksi',
					'table_id'		=>	$_POST['produksi_id']
				];

				$this->save_data('jurnal_umum', $keuangan);
				$this->save_data('jurnal_umum', $keuangan_kredit);
				
			}
			echo json_encode([
					'status'	=> 200,
					'msg'		=> 'Berhasil menambahkan produksi'
			]);
		} catch (Exception $e) {
			
		}
	}
	function add_data_template(){
		try {
			$data['param'] 		= 	$this->arr;
			$data['rand']		=	rand(0,99999);
			$data['detail_template_produk']		=	$this->db->query('select *, (select nama from master_data_bahan where master_data_bahan.id = bahan_id) as nama_bahan, (select nama from satuan_beli where satuan_beli.id = satuan_id) as nama_satuan, (select qty from master_data_bahan where master_data_bahan.id=bahan_id) as qty_bahan from detail_template_produk where template_produk_id = '.$_POST['template_id'])->result_array();
			$data['produk_id']	=	$_POST['produk_id'];
			$data['qty']		=	$_POST['qty'];
			$this->my_view([$data['param']['parents_link'].'/add_page/add_bahan_template'],$data);
		} catch (Exception $e) {
			
		}
	}
    function tbl_produk(){
		try {
			$id = $_POST['produk_id'];
			$data['param'] 		= 	$this->arr;
			$data['produk']		=	$this->my_where('produk', ['id'=>$id])->row_array();
			$data['template_produk']		=	$this->my_where('template_produk', ['produk_id'=>$id])->num_rows();
            $data['post']       =   $_POST;   
			$data['rand']		=	rand(0,99999);
			$this->my_view([$data['param']['parents_link'].'/add_page/tbl_produk'],$data);
			
		} catch (Exception $e) {
			
		}
	}
    function get_produk_select(){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
	     $this->db->where("nama like '%".$searchTerm."%' ");
	     $this->db->or_where("kode like '%".$searchTerm."%' ")->limit(5);
	     $fetched_records = $this->db->get('produk');
	     $bahan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['nama'].' ('.$user['kode'].')');
	     }

      	echo json_encode($data);
	
	}
	function get_bahan_select(){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
	     $this->db->where("nama like '%".$searchTerm."%' ");
	     $this->db->or_where("kode like '%".$searchTerm."%' ")->limit(5);
	     $fetched_records = $this->db->get('master_data_bahan');
	     $bahan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['nama'].' ('.$user['kode'].')');
	     }

      	echo json_encode($data);
	
	}
    function tab_content($id = 1){
		$url = [
			'add_produk',
			'add_produk',
			'add_new_produk',
			'add_satuan'
		];

		$data['param'] 		= 	$this->arr;
		if ($id == 2) {
			$data['satuan']	=	$this->my_where('satuan_barang', ['status'=>1])->result_array();
			$data['kategori']	=	$this->my_where('kategori_barang', ['status'=>1])->result_array();
			$data['gudang']	=	$this->my_where('gudang', ['status'=>1])->result_array();
		}
		$this->my_view([$data['param']['parents_link'].'/add_page/'.$url[$id], $data['param']['parents_link'].'/add_page/js_'.$url[$id]],$data);
	}
	function add_bahan_tbl(){
		
		$data['param'] 		= 	$this->arr;
		$data['rand']		=	rand(0,99999);
		$data['produk_id']	=	$_POST['produk_id'];
		$this->my_view([$data['param']['parents_link'].'/add_page/add_bahan', $data['param']['parents_link'].'/add_page/js_bahan'],$data);
	}
	function get_satuan_by_id($id){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
	     // $this->db->where();
	     // $this->db->where("nama like '%".$searchTerm."%' ")->limit(5);
	     $fetched_records = $this->db->query("SELECT konversi_satuan_bahan.id, konversi_satuan_bahan.bahan_id,
								konversi_satuan_bahan.satuan_id,
								konversi_satuan_bahan.nilai,
								master_data_bahan.nama,
								satuan_beli.nama,
								satuan_beli.id as satuan_id
								FROM
								konversi_satuan_bahan
								INNER JOIN master_data_bahan ON master_data_bahan.id = konversi_satuan_bahan.bahan_id
								INNER JOIN satuan_beli ON satuan_beli.id = konversi_satuan_bahan.satuan_id
								where bahan_id=".$id." and 
								satuan_beli.nama like '%".$searchTerm."%' order by konversi_satuan_bahan.default DESC"  

								);

	     $bahan = $fetched_records->result_array();

	     // Initialize Array with fetched data
	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['satuan_id'], "text"=>$user['nama']);
	     }

      	echo json_encode($data);	
	}
	function hapus_data_bahan(){
		$id = $_POST['id'];

		if ($this->db->delete('detail_bahan_produksi', ['id'=>$id])) {
			echo json_encode([
					'status'	=> 200,
					'msg'		=> 'Berhasil menghapus bahan produksi'
				]);
		}else{
			echo json_encode([
					'status'	=> 500,
					'msg'		=> 'gagal menghapus bahan produksi'
				]);
		}
	}
	function hapus_data_produk(){
		$id = $_POST['id'];
		$produk_id = $_POST['produk_id'];
		if ($this->db->delete('detail_produksi_produk', ['produk_id'=>$produk_id, 'produksi_id'=>$id])) {
			$this->db->delete('detail_bahan_produksi', ['produk_id'=>$produk_id, 'produksi_id'=>$id]);
			echo json_encode([
					'status'	=> 200,
					'msg'		=> 'Berhasil menghapus bahan produksi'
				]);
		}else{
			echo json_encode([
					'status'	=> 500,
					'msg'		=> 'gagal menghapus bahan produksi'
				]);
		}
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
	function cek_stok_bahan(){
		$id = $_POST['id'];
		$bahan = $this->my_where('master_data_bahan', ['id'=>$id])->row_array();

		echo json_encode($bahan);
	}
	function cancel_item(){
		if ($this->my_update('produksi', ['status_aktif'=>0], ['id'=>$_POST['id']])) {
			// keuangan
			$this->my_update('jurnal_umum', ['status_aktif'=>0], ['table_id'=>$_POST['id'], 'table'=>'produksi']);
			// kembalikan stok
			$detail_bahan_produksi = $this->my_where('detail_bahan_produksi', ['produksi_id'=>$_POST['id']])->result_array();

			foreach ($detail_bahan_produksi as $value) {
				$this->db->query('update master_data_bahan set qty = qty+'.$value['qty'].' where id='.$value['bahan_id']);
			}

			echo json_encode([
					'status'	=> 200,
					'msg'		=> 'Berhasil menghapus produksi'
				]);
		}
	}
	function print_web(){
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->order_by('id', 'DESC')->query('select *, 
				(select sum(qty) from detail_produksi_produk where produksi_id=produksi.id) as jml_produk, 
				(select sum(qty) from detail_bahan_produksi where produksi_id=produksi.id) as jml_bahan,
				(select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer,
				(select kode from sales_order where sales_order.id = so_id) as kode_so ,
				(select nama_customer from v_lap_so where v_lap_so.id = so_id) as nama_customer_so
				from produksi')->result_array();
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select *, 
				(select sum(qty) from detail_produksi_produk where produksi_id=produksi.id) as jml_produk, 
				(select sum(qty) from detail_bahan_produksi where produksi_id=produksi.id) as jml_bahan,
				(select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer,
				(select kode from sales_order where sales_order.id = so_id) as kode_so ,
				(select nama_customer from v_lap_so where v_lap_so.id = so_id) as nama_customer_so
				from produksi where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}
		$this->load->view('role/general/page/produksi/print_page/print_web', $data);
	}
	function print_pdf()
	{
		$data['param']	=	$this->arr;
		$data[$data['param']['table']]	=	[];

		if ($_POST['cetak'] == 'last_data') {
			$data[$data['param']['table']]		=	$this->db->limit(10)->order_by('id', 'DESC')->query('select *, 
				(select sum(qty) from detail_produksi_produk where produksi_id=produksi.id) as jml_produk, 
				(select sum(qty) from detail_bahan_produksi where produksi_id=produksi.id) as jml_bahan,
				(select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer,
				(select kode from sales_order where sales_order.id = so_id) as kode_so ,
				(select nama_customer from v_lap_so where v_lap_so.id = so_id) as nama_customer_so
				from produksi')->result_array();
		}else{
			$data[$data['param']['table']]		=	$this->db->query('select *, 
				(select sum(qty) from detail_produksi_produk where produksi_id=produksi.id) as jml_produk, 
				(select sum(qty) from detail_bahan_produksi where produksi_id=produksi.id) as jml_bahan,
				(select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer,
				(select kode from sales_order where sales_order.id = so_id) as kode_so ,
				(select nama_customer from v_lap_so where v_lap_so.id = so_id) as nama_customer_so
				from produksi where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

	    $param  =   [
	        'filename'			=>		$data['param']['title'],
	        'data_obj'			=>		$data[$data['param']['table']],
	        'header_table'		=>		$data['param']['column'],
	        'print_field'		=>		$data['param']['column'],
	    ];

		$param	=	[
	          	'url'			=>	'role/general/page/produksi/print_page/print_web',
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
			$produksi		=	$this->db->query('select *, 
				(select sum(qty) from detail_produksi_produk where produksi_id=produksi.id) as jml_produk, 
				(select sum(qty) from detail_bahan_produksi where produksi_id=produksi.id) as jml_bahan,
				(select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer,
				(select kode from sales_order where sales_order.id = so_id) as kode_so ,
				(select nama_customer from v_lap_so where v_lap_so.id = so_id) as nama_customer_so
				from produksi')->result_array();
		}else{
			$produksi		=	$this->db->query('select *, 
				(select sum(qty) from detail_produksi_produk where produksi_id=produksi.id) as jml_produk, 
				(select sum(qty) from detail_bahan_produksi where produksi_id=produksi.id) as jml_bahan,
				(select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer,
				(select kode from sales_order where sales_order.id = so_id) as kode_so ,
				(select nama_customer from v_lap_so where v_lap_so.id = so_id) as nama_customer_so
				from produksi where id IN('.(implode(',', $_POST['data_get'])).')')->result_array();	
		}

        $param  =   [
            'filename'          =>      'produksi',
        ];

        $path_exc = $this->my_where('setting_table', ['table'=>'produksi','name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>'produksi','name'=>'start_row_excel'])->row_array();        
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
        $sheet->setCellValue('C'.($no), 'Status Produksi');
        $sheet->setCellValue('D'.($no), 'Jumlah Produksi');
        $sheet->setCellValue('E'.($no), 'Jumlah Bahan');
        $sheet->setCellValue('F'.($no), 'SO');
        $sheet->setCellValue('G'.($no), 'Customer');

        $sheet->getStyle('A'.$no.':G'.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($produksi as $key => $value) {
        	$status_produksi = '';
        	if($value['status_produksi'] == 0){
				$status_produksi		=	 'Pending';
			}else if($value['status_produksi'] == 1){
				$status_produksi		=	 'Selesai';
			}else if($value['status_produksi'] == 2){
				$status_produksi		=	 'Proses Produksi';
			}else if($value['status_produksi'] == 3){
				$status_produksi		=	 'Batal';
			}
            # code...
	        $sheet->setCellValue('A'.($no), date_format(date_create($value['tanggal']), 'd-m-Y'));
	        $sheet->setCellValue('B'.($no), $value['kode']);
	        $sheet->setCellValue('c'.($no), $status_produksi);
	        $sheet->setCellValue('D'.($no), $value['jml_produk']);
	        $sheet->setCellValue('E'.($no), $value['jml_bahan']);
	        $sheet->setCellValue('F'.($no), (!empty($value['kode_so'])) ? $value['kode_so'] : 'Produksi Mandiri' );
	        $sheet->setCellValue('G'.($no), (!empty($value['nama_customer'])) ? $value['nama_customer'] : $value['nama_customer_so']);

            
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

	public function datatable()
	{
       	$_POST['frm']   =   $this->arr;

		if (!empty($_POST['mulai'])) {
			$this->db->where('DATE(tanggal) >=', date_format(date_create($_POST['mulai']),"Y/m/d"));
		}else if(!empty($_POST['sampai'])){
			$this->db->where('DATE(tanggal) <=', date_format(date_create($_POST['sampai']),"Y/m/d"));
		}
		$this->db->where('status_aktif', '1');
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $row        =   array();
			$jumlah_produk = $this->db->query('select sum(qty) as jml from detail_produksi_produk where produksi_id = '. $field['id'])->row_array();
			$jumlah_bahan = $this->db->query('select sum(qty) as jml from detail_bahan_produksi where produksi_id = '. $field['id'])->row_array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	date_format(date_create($field['tanggal']), 'd-M-Y');
            $row[]		=	'<a href="produksi/nota/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	$field['keterangan'];
			$row[]		=	$jumlah_produk['jml'];
			$row[]		=	($jumlah_bahan['jml']) ? $jumlah_bahan['jml'] :0;
			if($field['status_produksi'] == 0){
				$row[]		=	 '<a class="app-item" href="Produksi/convert_so/'.$field['id'].'"><span class="label label-block label-rounded label-default">Pending</span></a>';
			}else if($field['status_produksi'] == 1){
				$row[]		=	'<span class="label label-block label-rounded label-success">Selesai</span>';
			}else if($field['status_produksi'] == 2){
				$row[]		=	'<span class="label label-block label-rounded label-primary">Proses Produksi</span>';
			}else if($field['status_produksi'] == 3){
				$row[]		=	'<span class="label label-block label-rounded label-danger">Batal diproduksi</span>';
			}
           
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('transaction', $field['status'])['color'].'">'.$this->get_status('transaction', $field['status'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="produksi/nota/'.$field['id'].'" class="app-item"><i class="icon-eye"></i> Lihat Surat Produksi</a></li>
            							'.(($field['status']==1  && !empty($field['so_id']))?'<li><a href="Produksi/convert_so/'.$field['id'].'" class="app-item"><i class="icon-file-text"></i> Convert SO</a></li>':'').'
            							'.(($field['status']==1 && empty($field['so_id']))?'<li><a href="Produksi/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Edit</a></li>':'').'

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

}