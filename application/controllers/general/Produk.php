<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


class produk extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Produk',
			'table'				=>	'produk',
			'column'			=>	[ 'kode','nama', 'min_qty','qty','kategori_barang_id', 'satuan_barang_id','harga_beli','gudang_id','status','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','nama', 'min_qty', 'qty','kategori_barang_id', 'satuan_barang_id','harga_beli','gudang_id','status','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','nama', 'min_qty', 'qty','kategori_barang_id', 'satuan_barang_id','harga_beli','gudang_id','status','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/produk'
	];
	public function template()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();

		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/template',$data['param']['parents_link'].'/index_page/modal_template',$data['param']['parents_link'].'/index_page/modal_bahan',$data['param']['parents_link'].'/index_page/js_template', 'role/global/modal_setting'],$data);
	}
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['gudang']		=	$this->my_where('gudang',[])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['gudang']		=	$this->my_where('gudang',[])->result_array();
		$data['satuan_barang']			=	$this->my_where('satuan_barang',[])->result_array();
		$data['kategori_barang']		=	$this->my_where('kategori_barang',[])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting', 'role/global/modal_gudang'],$data);
	}
	public function edit_page($id = ""){
		if (!empty($id)) {
			$data['param'] 		= 	$this->arr;
			$data['id']			=	$id;
			$data['gudang']		=	$this->my_where('gudang',[])->result_array();
			$data['satuan_barang']			=	$this->my_where('satuan_barang',[])->result_array();
			$data['kategori_barang']		=	$this->my_where('kategori_barang',[])->result_array();
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();

			if (!empty($data['data_edit'])) {
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting'],$data);
			}			
		}
	}

	function get_produk()
	{
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
	function proses($id='')
	{
		try {
			if($id !== '')
			{
				$data['param'] 		= 	$this->arr;
				$data['produk']		=	$this->my_where('produk', ['id'=>$id])->row_array();
				$data['template_produk']		=	$this->my_where('template_produk', ['produk_id'=>$id])->result_array();
				$this->my_view([$data['param']['parents_link'].'/index_page/detail'],$data);
			}
		} catch (Exception $e) {
			
		}
		
	}

	function proses_detail($id='')
	{
		try {
			if($id !== '')
			{
				$data['param'] 						= 	$this->arr;
				$data['template_produk']		=	$this->my_where('template_produk', ['id'=>$id])->row_array();
				$data['detail_template_produk']		=	$this->db->query('select *, (select nama from master_data_bahan where master_data_bahan.id = bahan_id) as nama_bahan, (select nama from satuan_beli where satuan_beli.id = satuan_id) as nama_satuan from detail_template_produk where template_produk_id = '.$id)->result_array();
				$this->my_view([$data['param']['parents_link'].'/index_page/detail_template'],$data);
			}
		} catch (Exception $e) {
			
		}
		
	}
	function save_template()
	{
		$data = [
			'kode' => $_POST['kode'],
			'nama' => $_POST['nama'],
			'produk_id' => $_POST['produk_id']
		];
		if ($this->save_data('template_produk', $data)) {
			echo json_encode([
				'status' => 200,
				'msg' => "Berhasil menambahkan template"
			]);
		}
	}

	function save_bahan()
	{
		$data = [
			'produk_id' => $_POST['produk_id'],
			'bahan_id' => $_POST['bahan_id'],
			'qty' => $_POST['qty'],
			'template_produk_id' => $_POST['template_produk_id'],
			'satuan_id' => $_POST['satuan_id']
		];
		if ($this->save_data('detail_template_produk', $data)) {
			echo json_encode([
				'status' => 200,
				'msg' => "Berhasil menambahkan template"
			]);
		}
	}

	
	function simpan_data()
	{
		try {
			$data = [
				'kode' => $_POST['kode'],
				'nama' => $_POST['nama'],
				'min_qty' => $_POST['min_qty'],
				'qty' => $_POST['qty'],
				'kategori_barang_id' => $_POST['kategori_barang_id'],
				'satuan_barang_id' => $_POST['satuan_barang_id'],
				'gudang_id' => $_POST['gudang_id'],
				'harga' => $_POST['harga'],
				'status' => $_POST['status'],
				'created_by' => $this->get_user_account()['id']
			];
			if ($this->save_data('produk', $data)) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data bahan berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data bahan gagal ditambahkan'
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
			
			if ($this->my_update($dt['table'], ['status'=> (($_POST['status'] == 0) ? 1:0)], [$dt['id']=>$_POST['id']])) {
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
	function update_data()
	{
		
		try {
			
			$data = [
				'kode' => $_POST['kode'],
				'nama' => $_POST['nama'],
				'min_qty' => $_POST['min_qty'],
				'qty' => $_POST['qty'],
				'kategori_barang_id' => $_POST['kategori_barang_id'],
				'satuan_barang_id' => $_POST['satuan_barang_id'],
				'gudang_id' => $_POST['gudang_id'],
				'harga' => $_POST['harga'],
				'status' => $_POST['status'],
				'updated_by' => $this->get_user_account()['id']
			];
			if ($this->my_update('produk', $data, [$this->arr['id'] => $_POST['id']])) {
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data bahan berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Data bahan gagal ditambahkan'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
					'status'	=>	500,
					'msg'		=>	$e
			]);
		}
	}


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


	function get_satuan_by_id($id){
		$searchTerm = $this->input->post('searchTerm');
      	 $this->db->select('*');
	     // $this->db->where();
	     // $this->db->where("nama like '%".$searchTerm."%' ")->limit(5);
	     $fetched_records = $this->db->query("SELECT konversi_satuan_bahan.id, konversi_satuan_bahan.bahan_id,
								konversi_satuan_bahan.satuan_id,
								konversi_satuan_bahan.nilai,
								master_data_bahan.nama,
								satuan_beli.nama
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

	function remove_detail($id){
		try {
			if($this->db->delete('detail_template_produk',['id'=>$id])){
				echo json_encode([
					'status' => 200,
					'msg' => "Data berhasil dihapus"
				]);
			}
		} catch (Exception $e) {
			
		}
	}
	function remove_template($id){
		try {
			if($this->db->delete('template_produk',['id'=>$id])){
				echo json_encode([
					'status' => 200,
					'msg' => "Data berhasil dihapus"
				]);
			}
		} catch (Exception $e) {
			
		}
	}
	public function datatable()
	{

		if (($_POST['kode'] !== '')) {
			$this->db->like('kode', $_POST['kode']);
		}else if($_POST['nama'] !== ''){
			$this->db->like('nama', $_POST['nama']);
		}else if($_POST['min_qty'] !== ''){
			$this->db->like('min_qty', $_POST['min_qty']);
		}else if($_POST['qty'] !== ''){
			$this->db->like('qty', $_POST['qty']);
		}else if($_POST['gudang_id'] !== ''){
			$this->db->where('gudang_id', $_POST['gudang_id']);
		}
       	$_POST['frm']   =   $this->arr;
        $list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];
        foreach ($list as $field) {
            $no++;
            $kategori_barang  = "";
            $satuan_barang = "";
            $gudang = "";
            if (!empty($field['kategori_barang_id'])) {
            	$kategori_barang = $this->my_where('kategori_barang', ['id' => $field['kategori_barang_id']])->row_array();
            	$kategori_barang = (isset($kategori_barang['nama'])) ? $kategori_barang['nama'] : "";
            }
            if (!empty($field['satuan_barang_id'])) {
            	$satuan_barang = $this->my_where('satuan_barang', ['id' => $field['satuan_barang_id']])->row_array();
            	$satuan_barang = (isset($satuan_barang['nama'])) ? $satuan_barang['nama'] : "";
            }
            if (!empty($field['gudang_id'])) {
            	$gudang = $this->my_where('gudang', ['id' => $field['gudang_id']])->row_array();
            	$gudang = (isset($gudang)) ? $gudang : "";
            }
            $row        =   array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	'<a href="produk/edit_page/'.$field['id'].'" class="app-item"><b>'. (!empty($field['kode']) ? strtoupper($field['kode']) : '-') . '</b></a>';
            $row[]		=	!empty($field['nama']) ? strtoupper($field['nama']) : '-';
            $row[]		=	!empty($field['min_qty']) ? $field['min_qty'] : '-';
            $row[]		=	($field['min_qty'] <= $field['qty']) ? '<b class="text-success">'.$field['qty'].'</b>' : '<b class="text-danger">'.$field['qty'].'</b>';
            $row[]		=	!empty($field['kategori_barang_id']) ? $kategori_barang : '-';
            $row[]		=	!empty($field['satuan_barang_id']) ? $satuan_barang : '-';
            $row[]		=	!empty($field['gudang_id']) ? '<b style="color:'.$gudang['color'].'">'.$gudang['nama'].'<b>' : '-';
            $row[]		=	'<span class="label label-block label-rounded label-'.$this->get_status('active', $field['status'])['color'].'">'.$this->get_status('active', $field['status'])['name'].'</span>' ;
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="Produk/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
            							<li><a  onclick="change_status('.$field['id'].','.$field['status'].');"><i class="icon-close2"></i> '.(($field['status'] == 1) ? "Nonaktifkan" : "Aktifkan" ).'</a></li>
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

	function get_gudang(){
		try {
			$data['param']	=	$this->arr;
			$data['gudang'] =	$this->my_where('gudang', ['status'=>1])->result_array();
			$this->my_view([$data['param']['parents_link'].'/add_page/gudang'],$data);
		} catch (Exception $e) {
			
		}
	}
}