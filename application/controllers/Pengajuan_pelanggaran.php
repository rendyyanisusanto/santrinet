<?php
defined('BASEPATH') OR exit('No direct script access allowed');
header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE');
        header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With');
        header('Access-Control-Max-Age: 86400');
class Pengajuan_pelanggaran extends CI_Controller {
	public function __construct()
    {
        parent::__construct();
    }
	public function index()
	{
		$this->load->view('pengajuan_pelanggaran/css');
		$this->load->view('pengajuan_pelanggaran/index');
		$this->load->view('pengajuan_pelanggaran/js');
	}

	function get_santri_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("select id, nama from santri where status_aktif=1 and nama like '%".$searchTerm."%' order by id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['nama']);
	     }

      	echo json_encode($data);	

	}
	function get_tatib_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("select id,kode, nama, (select nama from kategori_tatib where kategori_tatib.id=kategori_tatib_id) as kategori_tatib from tatib where kode like '%".$searchTerm."%' or nama like '%".$searchTerm."%' order by id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['kode'].' - '.$user['nama'].' ('.$user['kategori_tatib'].')');
	     }

      	echo json_encode($data);	

	}

	function get_pelapor_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("
			SELECT 
			    pengurus.id AS pengurus_id,
			    pengurus.kode,
			    pengurus.nama,
			    pengurus.lembaga_pengurus_id
			FROM 
			    pengurus where nama like '%".$searchTerm."%' order by pengurus.id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['pengurus_id'], "text"=> $user['nama']);
	     }

      	echo json_encode($data);
	}
	private function _compress_image($file_path)
	{
		$config['image_library']  = 'gd2';
		$config['source_image']   = $file_path;
		$config['maintain_ratio'] = TRUE;
		$config['width']          = 1024; // Lebar maksimum
		$config['height']         = 1024; // Tinggi maksimum
		$config['quality']        = '80%'; // Kualitas gambar

		$this->load->library('image_lib', $config);

		if (!$this->image_lib->resize()) {
			// Jika ada error, tampilkan
			log_message('error', $this->image_lib->display_errors());
		}

		$this->image_lib->clear(); // Reset library
	}
	public function simpan_data()
	{
		try {
			// Cek apakah ada file yang diunggah
			$foto = null;
			if (!empty($_FILES['foto']['name'])) {
				// Konfigurasi upload file
				$config['upload_path']   = './inc/media/pelanggaran/';
				$config['allowed_types'] = 'jpg|jpeg|png';
				$config['max_size']      = 2048; // 2 MB
				$config['encrypt_name']  = TRUE; // Rename file menjadi unik
	
				$this->load->library('upload', $config);
	
				if ($this->upload->do_upload('foto')) {
					// Jika upload berhasil, simpan nama file
					$upload_data = $this->upload->data();
					$foto = $upload_data['file_name'];
	
					// Kompres gambar
					$this->_compress_image('./inc/media/pelanggaran/' . $foto);
				} else {
					// Jika upload gagal, kembalikan error
					echo json_encode([
						'status' => 500,
						'msg'    => $this->upload->display_errors('', ''),
					]);
					return;
				}
			}
	
			// Data yang akan disimpan
			$data = [
				'santri_id'        => $this->input->post('santri_id'),
				'pelanggaran'      => $this->input->post('pelanggaran'),
				'tanggal'          => $this->input->post('tanggal'),
				'kode'             => rand(),
				'foto'             => $foto, // Bisa null jika tidak ada file
				'tatib_id'         => $this->input->post('tatib_id'),
				'status_aktif'     => 1,
				'pelapor_id'       => $this->input->post('pelapor_id'),
				'kronologi'        => $this->input->post('kronologi'),
				'status_pengajuan' => 'BELUM DIPROSES',
			];
	
			// Simpan ke database
			if ($this->db->insert('pelanggaran', $data)) {
				echo json_encode([
					'status' => 200,
					'msg'    => 'Data pelanggaran berhasil disimpan',
				]);
			} else {
				echo json_encode([
					'status' => 500,
					'msg'    => 'Data pelanggaran gagal disimpan',
				]);
			}
		} catch (Exception $e) {
			echo json_encode([
				'status' => 500,
				'msg'    => $e->getMessage(),
			]);
		}
	}
}	