<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Coa extends MY_Controller {
	public $arr = [
			'title'				=>	'COA',
			'table'				=>	'coa',
			'column'			=>	[ 'name'],
			'column_order'		=>	[ 'id','name'],
			'column_search'		=>	[ 'id','name'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/coa'
	];
	
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['induk_akun'] =	$this->my_where('induk_akun', [])->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	function get_akun($id = "")
	{
		$data['akun']	=	$this->my_where('akun', ['indukakun_id'=>$_POST['id']])->result_array();
		$data['detail_akun']	=	$this->my_where('induk_akun', ['id'=>$_POST['id']])->row_array();
		$this->my_view(['role/general/page/coa/index_page/proses_akun'],$data);
	}
	function simpan_data()
	{
		if (isset($_POST)) {
			$data = [
				'no_ref'			=>	$_POST['no_ref'],
				'nama'				=>	$_POST['nama'],
				'indukakun_id'	=>	$_POST['indukakun_id'],
				'saldo_normal'		=>	$_POST['saldo_normal'],
				'is_edit'			=> 	1
			];
			if ($this->save_data('akun', $data)) {
				
			}
		}
	}

	function update_data()
	{
		if (isset($_POST)) {
			$data = [
				'no_ref'			=>	$_POST['no_ref'],
				'nama'				=>	$_POST['nama'],
				'saldo_normal'		=>	$_POST['saldo_normal'],
			];
			if ($this->my_update('akun', $data, ['id'=>$_POST['id']])) {
				
			}
		}
	}

	function hapus_akun()
	{
		if(isset($_POST['id'])){
			$this->db->delete('akun', ['id'=>$_POST['id']]);
		}
	}

	function cetak(){
		$data['akun'] =	$this->my_where('akun', [])->result_array();
	    $this->load->view('role/general/page/coa/index_page/cetak', $data);
	}
}
