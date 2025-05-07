<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Laporan_rekam_medis extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data Rekam Medis',
			'table'				=>	'rekam_medis',
			'column'			=>	[ 'kode','santri_id', 'status_rekam_medis_id','tanggal','foto','uuid','status_aktif'],
			'column_order'		=>	[ 'id','kode','santri_id', 'status_rekam_medis_id','tanggal','foto','uuid','status_aktif'],
			'column_search'		=>	[ 'id','kode','santri_id', 'status_rekam_medis_id','tanggal','foto','uuid','status_aktif'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/general/page/laporan_rekam_medis'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/rm/index',$data['param']['parents_link'].'/rm/js'],$data);

	}

	public function get_index() {
	    $data['param'] = $this->arr;
	    $data['account'] = $this->get_user_account();
	    $result = $this->db->query('SELECT 
	                                    tanggal_periode.tanggal, 
	                                    srm.nama AS status_rekam_medis, 
	                                    COUNT(rm.id) AS jumlah
	                                FROM 
	                                    (SELECT CURDATE() - INTERVAL seq DAY AS tanggal
	                                     FROM (SELECT 0 AS seq UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6) AS days) AS tanggal_periode
	                                CROSS JOIN 
	                                    status_rekam_medis srm
	                                LEFT JOIN 
	                                    rekam_medis rm ON rm.tanggal = tanggal_periode.tanggal AND rm.status_rekam_medis_id = srm.id
	                                WHERE 
	                                    tanggal_periode.tanggal >= CURDATE() - INTERVAL 7 DAY
	                                GROUP BY 
	                                    tanggal_periode.tanggal, srm.nama
	                                ORDER BY 
	                                    tanggal_periode.tanggal DESC, srm.nama;')->result_array();
	    
	    // Mengelompokkan hasil query berdasarkan tanggal dan menghitung total per tanggal
	    $stats = [];
	    foreach ($result as $row) {
	        $tanggal = $row['tanggal'];
	        if (!isset($stats[$tanggal])) {
	            $stats[$tanggal] = [
	                'total' => 0,
	                'records' => []
	            ];
	        }
	        $stats[$tanggal]['records'][] = [
	            'status_rekam_medis' => $row['status_rekam_medis'],
	            'jumlah' => $row['jumlah']
	        ];
	        $stats[$tanggal]['total'] += $row['jumlah']; // Tambahkan jumlah ke total per tanggal
	    }
	    $data['stats'] = $stats;
	    

	    $chart = [];
	    foreach ($result as $row) {
	        $tanggal = date('d/m/Y', strtotime($row['tanggal']));
	        $status = $row['status_rekam_medis'];
	        
	        if (!isset($chart[$tanggal])) {
	            $chart[$tanggal] = [];
	        }
	        
	        $chart[$tanggal][$status] = $row['jumlah'];
	    }
	    
	    // Data dikonversi ke JSON agar bisa diproses oleh ECharts di view
	    $data['chart'] = json_encode($chart);


	    $this->my_view([$data['param']['parents_link'] . '/rm/table', $data['param']['parents_link'] . '/rm/js_rm'], $data);
	}

	function rm_daily(){

	}

	function detail_rm_tanggal(){
	    $data['param'] = $this->arr;
		$tanggal = $_POST['tanggal'];
		$data['tanggal']= $tanggal;
		$data['res']	=	$this->db->query('select tanggal,kode,diagnosis,(select nama from santri where santri_id=santri.id) as nama, (select color from status_rekam_medis where status_rekam_medis_id=status_rekam_medis.id) as color_rm, (select nama from status_rekam_medis where status_rekam_medis_id=status_rekam_medis.id) as nama_rm from rekam_medis where tanggal = "'.$tanggal.'"')->result_array();
	    $this->my_view([$data['param']['parents_link'] . '/rm/detail_rm_tanggal'], $data);
	}
}

?>