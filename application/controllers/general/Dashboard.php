<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller {
	public function get_data()
	{
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/general/page/dashboard/index_page/index','role/general/page/dashboard/index_page/js'],$data);
	}

	function get_stats(){
		if (!empty($_POST['type'])) {
			$data['total_transaksi']	=	$this->db->query('select * from sales_order where status=0')->num_rows();
			$data['transaksi_hari_ini'] = $this->db->where('status', 0)->where('DATE(tanggal) >', date_format(date_create($_POST['datestart']),"Y/m/d"))->where('DATE(tanggal) <', date_format(date_create($_POST['dateend']),"Y/m/d"))->get('sales_order')->num_rows();
		}else{
			$data['total_transaksi']	=	$this->db->query('select * from sales_order where status=0')->num_rows();
			$data['transaksi_hari_ini'] = $this->db->where('status', 0)->where('DATE(tanggal) =', date_format(date_create($mulai),"Y/m/d"))->get('v_lap_so')->num_rows();
		}
		$this->my_view(['role/general/page/dashboard/index_page/stats'],$data);
	}

	function get_graph(){
		$this->my_view(['role/general/page/dashboard/index_page/graph' ,'role/general/page/dashboard/index_page/js_graph'],$data);
	}

	function get_trans(){
		$this->my_view(['role/general/page/dashboard/index_page/trans' ,'role/general/page/dashboard/index_page/js_trans'],$data);
	}

	function get_stats_penjualan(){
		$data['tahun'] 	= 	[];
		$data['data']	=	[];
		$a;
		$detail = ', sum(total) as jml';	
		if ($_POST['dataDetail'] == 1) {
			$detail = ', sum(total) as jml';	
		}elseif ($_POST['dataDetail'] == 2) {
			$detail = ', count(*) as jml';
		}
		if (!empty($_POST['type'])) {
			if ($_POST['type'] == 1) {
				$start = new DateTime($_POST['datestart']);
				$end = new DateTime($_POST['dateend']);
				$interval = new DateInterval("P1D");
				$range = new DatePeriod($start, $interval, $end);
				foreach ($range as $d) { 
					$tanggal = $d->format("Y-m-d");
					$query = $this->db->query('select tanggal'.$detail.'
			     	from sales_order WHERE status=0 
			     	and DATE(tanggal) = date("'.$tanggal.'")');
					$data['data'][]	=	($query->num_rows() > 0) ? (int)$query->row_array()['jml'] : 0;
					$data['tahun'][] = $d->format("d/m");					 
				}
				$a=1;
			}elseif ($_POST['type'] == 2) {
				$start = new DateTime($_POST['datestart']);
				$end = new DateTime($_POST['dateend']);
				$interval = new DateInterval("P1M");
				$range = new DatePeriod($start, $interval, $end);
				foreach ($range as $d) { 
					
					$query = $this->db->query('select tanggal'.$detail.'
			     	from sales_order WHERE status=0 
			     	and MONTH(tanggal) = '.$d->format("m").' and YEAR(tanggal)= '.$d->format("Y"));
					$data['data'][]	=	($query->num_rows() > 0) ? (int)$query->row_array()['jml'] : 0;
					$data['tahun'][] = $d->format("m/Y");					 
				}
				$a=1;
			}elseif ($_POST['type'] == 3) {
				$start = new DateTime($_POST['datestart']);
				$end = new DateTime($_POST['dateend']);
				$interval = new DateInterval("P1Y");
				$range = new DatePeriod($start, $interval, $end);
				foreach ($range as $d) { 
					
					$query = $this->db->query('select tanggal'.$detail.'
			     	from sales_order WHERE status=0 
			     	and YEAR(tanggal)= '.$d->format("Y"));
					$data['data'][]	=	($query->num_rows() > 0) ? (int)$query->row_array()['jml'] : 0;
					$data['tahun'][] = $d->format("Y");					 
				}
				$a=1;
			}
		}else{
			$day = cal_days_in_month(CAL_GREGORIAN,10,2005);

			for ($i = 1; $i <= $day ; ++$i) {
				$tanggal = date('Y-m').'-'.$i;
				$query = $this->db->query('select tanggal'.$detail.'
			     	from sales_order WHERE status=0 
			     	and DATE(tanggal) = date("'.$tanggal.'")');

				// foreach ($query->result_array() as $value) {
				// 	$data['tahun'][]	=	$i;
				// 	$data['data'][]		=	(int)$value['jml'];
				// }

				$data['tahun'][] = $i;
				$data['data'][]	=	($query->num_rows() > 0) ? (int)$query->row_array()['jml'] : 0;
			}
			$a = 0;
		}

		echo json_encode($data);
	}

	function get_stats_produk(){

		if (!empty($_POST['type'])) {
			$tml = date_format(date_create($_POST['datestart']),"Y/m/d");
			$tsl = date_format(date_create($_POST['dateend']),"Y/m/d");
			$query = $this->db->query('select tanggal, sum(qty) as jml, produk_id, nama from v_dtso_so_produk where 
				status = 0 AND
				DATE(tanggal) >"'.$tml.'" AND
				DATE(tanggal) <"'.$tsl.'"  
				GROUP BY produk_id ORDER BY jml desc limit 6');
		}else{
			$query = $this->db->query('select sum(qty) as jml, produk_id, nama from v_dtso_so_produk where status = 0 GROUP BY produk_id ORDER BY jml desc limit 6');
		}


		

		$data['title'] 	= 	[];
		$data['data']	=	[];

		foreach ($query->result_array() as $value) {
			$data['title'][]	=	$value['nama'];
			$data['data'][]		=	[
				'value' => (int) $value['jml'], 
				'name' => $value['nama']
			];
		}

		echo json_encode($data);
	}


	function get_last_trans(){
		
		if (!empty($_POST['type'])) {
			$tml = date_format(date_create($_POST['datestart']),"Y/m/d");
			$tsl = date_format(date_create($_POST['dateend']),"Y/m/d");
			$query = $this->db->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from sales_order where
				status = 0 AND
				DATE(tanggal) >"'.$tml.'" AND
				DATE(tanggal) <"'.$tsl.'"
				 order by id DESC limit 5')->result_array();
		}else{
			$query = $this->db->query('select *, (select nama from master_data_customer where master_data_customer.id = customer_id) as nama_customer from sales_order where
				status = 0 order by id DESC limit 5')->result_array();
		}
		$data['sales_order'] = $query;

		$this->my_view(['role/general/page/dashboard/index_page/last_trans'],$data);
	}

	function get_top_spender(){
		if (!empty($_POST['type'])) {
			$tml = date_format(date_create($_POST['datestart']),"Y/m/d");
			$tsl = date_format(date_create($_POST['dateend']),"Y/m/d");
			$query = $this->db->query('SELECT  sum(total)  as jml_trn, customer_id, nama_customer, kode_customer FROM `v_lap_so` WHERE `status` = 0 AND 
				DATE(tanggal) >"'.$tml.'" AND
				DATE(tanggal) <"'.$tsl.'"
				GROUP BY customer_id ORDER BY jml_trn DESC limit 5')->result_array();

		}else{
			$query = $this->db->query('SELECT  sum(total)  as jml_trn, customer_id, nama_customer, kode_customer FROM `v_lap_so` WHERE `status` = 0 GROUP BY customer_id ORDER BY jml_trn DESC limit 5')->result_array();

		}
		

		$data['top_spender'] = $query;

		$this->my_view(['role/general/page/dashboard/index_page/top_spender'],$data);
	}

	function get_stok_limit(){
		$query = $this->db->query('select * from master_data_bahan where qty < min_qty order by qty limit 5')->result_array();


		$data['stok_limit'] = $query;

		$this->my_view(['role/general/page/dashboard/index_page/stok_limit'],$data);
	}

	function detail_top_spender($id = "")
	{
		$data = [];
		$data['customer']	=	$this->my_where('master_data_customer', ['id' => $id])->row_array();
		$this->my_view(['role/general/page/dashboard/index_page/detail_top_spender','role/general/page/dashboard/index_page/js_detail_top_spender'],$data);	
	}
	function get_so_top_spender($id='')
	{
		$data['so']	=	$this->my_where('v_lap_so', ['customer_id'=>$id])->result_array();

		$this->my_view(['role/general/page/dashboard/index_page/table_top_spender'],$data);
	}
	function all_top_spender()
	{
		$data['top_spender']	 = $this->db->query('SELECT  sum(total)  as jml_trn, customer_id, nama_customer, kode_customer FROM `v_lap_so` WHERE `status` = 0 
				GROUP BY customer_id ORDER BY jml_trn DESC limit 50')->result_array();

		$this->my_view(['role/general/page/dashboard/index_page/all_top_spender'],$data);
	}

	function all_stock_limit(){
		
		$query = $this->db->query('select * from master_data_bahan where qty < min_qty order by qty limit 50')->result_array();
		$data['stok_limit'] = $query;
		$this->my_view(['role/general/page/dashboard/index_page/all_stock_limit'],$data);
	}
	
}
