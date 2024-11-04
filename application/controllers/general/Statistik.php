<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class statistik extends MY_Controller {
	public function penjualan()
	{
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/general/page/statistik/penjualan/index','role/general/page/statistik/penjualan/js'],$data);
	}

	function find_penjualan(){
		$jenis_laporan = $_POST['jenis_laporan'];
		$query = $this->db->query('select year(tanggal) as tahun,month(tanggal) as bulan, count(*) as jml
	     						 from sales_order WHERE status=0 
	     						 AND year(tanggal) = '.date_format(date_create($_POST['tahun']), "Y").'
		     					 group by year(tanggal),month(tanggal)
	    						 order by year(tanggal),month(tanggal) DESC');
		$data['tahun'] 	= 	[];
		$data['data']	=	[];

		foreach ($query->result_array() as $value) {
			$data['tahun'][]	=	$value['bulan'].'/'.$value['tahun'];
			$data['data'][]		=	(int)$value['jml'];
		}

		$this->my_view(['role/general/page/statistik/penjualan/find_penjualan','role/general/page/statistik/penjualan/js_find_penjualan'],$data);
	}
	
}
