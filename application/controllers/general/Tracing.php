<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


class Tracing extends MY_Controller {
	public $arr = [
			'title'				=>	'Tracing',
			'table'				=>	'tracing',
			'column'			=>	[ 'kode','tanggal', 'keterangan','status','status_tracing','created_at','created_by','updated_at','updated_by'],
			'column_order'		=>	[ 'id','kode','tanggal', 'keterangan', 'status','status_tracing','created_at','created_by','updated_at','updated_by'],
			'column_search'		=>	[ 'id','kode','tanggal', 'keterangan', 'status','status_tracing','created_at','created_by','updated_at','updated_by'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/tracing'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}
}