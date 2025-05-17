<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class presensi_harian extends MY_Controller {
	public $arr = [
			'title'				=>	'Presensi Harian',
			'table'				=>	'presensi_harian',
			'column'			=>	[ 'nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','status_aktif'],
			'column_order'		=>	[ 'id','nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','status_aktif'],
			'column_search'		=>	[ 'id','nis','nama', 'jenis_kelamin','tempat_lahir','tanggal_lahir','status_aktif'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/presensi_harian'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$data['kamar']		=	$this->db->query('select id, nama from kamar where status_aktif = 1')->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}

	function proses_data_kamar(){	
		$data['param'] = $this->arr;
		$id = $_POST['id'];
		if($id == ""){
			$kamar = $this->db->query('select id, nama from kamar')->result_array();
			$jadwal = $this->db->query('select id, waktu_presensi from jadwal_presensi')->result_array();
			$data['jadwal_presensi'] = $jadwal;
			foreach ($kamar as $key => $value) {
				$status_presensi = [];
				foreach ($jadwal as $key => $value_jadwal) {
					$status_presensi[$value_jadwal['id']]['jadwal'] = $value_jadwal;
					$status_presensi[$value_jadwal['id']]['data'] = $this->db->query('SELECT 
							ks.kamar_id,
							COUNT(s.id) AS total_santri,
							SUM(CASE WHEN ph.status_kehadiran = "HADIR" or ph.status_kehadiran = "SAKIT" or ph.status_kehadiran = "IJIN" or ph.status_kehadiran = "ALPHA" THEN 1 ELSE 0 END) AS sudah_absen,
							SUM(CASE WHEN ph.status_kehadiran = "HADIR" THEN 1 ELSE 0 END) AS hadir,
							SUM(CASE WHEN ph.status_kehadiran = "SAKIT" THEN 1 ELSE 0 END) AS sakit,
							SUM(CASE WHEN ph.status_kehadiran = "IJIN" THEN 1 ELSE 0 END) AS ijin,
							SUM(CASE WHEN ph.status_kehadiran = "ALPHA" THEN 1 ELSE 0 END) AS alpha,
							COUNT(s.id) - SUM(CASE WHEN ph.status_kehadiran = "HADIR" THEN 1 ELSE 0 END) AS belum_absen
						FROM 
							kamar_santri ks
						JOIN 
							santri s ON ks.santri_id = s.id
						LEFT JOIN 
							presensi_santri ph ON s.id = ph.santri_id AND ph.tanggal = CURDATE() AND ph.jadwal_presensi_id='.$value_jadwal['id'].'
						WHERE ks.kamar_id = '.$value['id'])->row_array();
				}
				$data['jadwal_kamar'][] = [
					'status_presensi' => $status_presensi,
					'tanggal' => date('d-m-Y'),
					'kamar' => $value
				];
			}
			$this->my_view([$data['param']['parents_link'].'/index_page/table_data_kamar_init'], $data);
		}else{
			$data['kamar'] = $this->db->query('select id, nama from kamar where id='.$id)->row_array();
			$jadwal = $this->db->query('select id, waktu_presensi from jadwal_presensi')->result_array();
			$start_date = date('Y-m-d', strtotime('-7 days')); // Tanggal 7 hari lalu
			$end_date = date('Y-m-d'); // Tanggal hari ini
			$data['jadwal_presensi'] = $jadwal;
			$data['jadwal_kamar'] = [];
			
			// Loop tanggal 1 minggu terakhir
			$dates = [];
			$current_date = $start_date;
		
			while (strtotime($current_date) <= strtotime($end_date)) {
				$dates[] = $current_date;
				$current_date = date('Y-m-d', strtotime($current_date . ' +1 day'));
			}
		
			// Urutkan tanggal secara descending (hari ini paling awal)
			$dates = array_reverse($dates);
		
			// Foreach tanggal
			foreach ($dates as $date) {
				$status_presensi = [];
				foreach ($jadwal as $key => $value) {
					$status_presensi[$value['id']]['data'] = $value;
					$status_presensi[$value['id']]['total'] = $this->db->query('select id from presensi_santri where tanggal="'.date('Y-m-d', strtotime($date)).'" and jadwal_presensi_id='.$value['id'])->num_rows();
				}
				$data['jadwal_kamar'][] = [
					'status_presensi' => $status_presensi,
					'tanggal' => date('d-m-Y', strtotime($date)),
				];
			}
			$this->my_view([$data['param']['parents_link'].'/index_page/table_data_kamar'], $data);
		}
	}
	

	function proses_absen($tanggal, $kamar, $jadwal_id){
		
		$data['param'] 		= 	$this->arr;
		$santri = $this->db->query('select id, santri_id,(select nama from santri where santri.id = santri_id) as nama from kamar_santri where kamar_id = '.$kamar)->result_array();
		$data['tanggal']	=	date('Y-m-d', strtotime($tanggal));
		$data['kamar']		=	$this->db->query('select id, nama from kamar where id='.$kamar)->row_array();
		$data['jadwal']		=	$this->db->query('select id, waktu_presensi from jadwal_presensi where id='.$jadwal_id)->row_array();
		$data['proses'] = [];
		foreach ($santri as $key => $value) {
			$cek = $this->db->query('select status_kehadiran from presensi_santri where tanggal="'.$data['tanggal'].'" and santri_id='.$value['id'].' and jadwal_presensi_id='.$jadwal_id);
			$data['proses'][]	=	[
				'santri'	=>	$value,
				'kehadiran' => ($cek->num_rows() > 0) ? $cek->row_array()['status_kehadiran'] : ''
			];
		}

		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js'],$data);
	}

	function simpan_data(){

		try {
			if (isset($_POST['tanggal'])) {
				foreach ($_POST['presensi'] as $key => $value) {
					$data = [
						'tanggal'			=>	$_POST['tanggal'],
						'santri_id'			=>	$value['santri_id'],
						'status_kehadiran'	=>	$value['status_kehadiran'],
						'jadwal_presensi_id'=>	$_POST['jadwal_id']
					];

					$cek = $this->my_where('presensi_santri', [
						'tanggal'			=>	$_POST['tanggal'],
						'santri_id'			=>	$value['santri_id'],
						'jadwal_presensi_id'=>	$_POST['jadwal_id']
					]);

					if ($cek->num_rows() > 0) {
						$this->my_update('presensi_santri', $data, ['id'=>$cek->row_array()['id']]);
					}else{
						$this->save_data('presensi_santri', $data);
					}

					
				}
				echo json_encode([
					'status'	=>	200,
					'msg'		=>	'Data berhasil ditambahkan'
				]);
			}else{
				echo json_encode([
					'status'	=>	500,
					'msg'		=>	'Tidak ada data yang di post'
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
				'status'	=>	500,
				'msg'		=>	$e
			]);
		}
	}
}
