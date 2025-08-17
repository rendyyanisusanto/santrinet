<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class ijin_pengurus extends MY_Controller {
	public $arr = [
			'title'				=>	'Master Data ijin_pengurus',
			'table'				=>	'ijin_pengurus',
			'column'			=>	[ 'tanggal'],
			'column_order'		=>	[ 'id','tanggal'],
			'column_search'		=>	[ 'id','tanggal'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/ijin_pengurus'
	];
	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}

    public function proses_data() {
        
		$data['param'] 		= 	$this->arr;
        $tanggal = $this->input->post('tanggal');

        $this->db->select('
            ijin_pengurus.id,
            ijin_pengurus.santri_id,
            ijin_pengurus.keterangan,
            santri.nip,
            santri.nama,
            ijin_pengurus.waktu_keluar,
            ijin_pengurus.waktu_kembali,
            ijin_pengurus.status,
            ijin_pengurus.status_konfirmasi_keluar,
            ijin_pengurus.status_konfirmasi_kembali,
            ijin_pengurus.created_at
        ');
        $this->db->from('ijin_pengurus');
        $this->db->join('santri', 'santri.id = ijin_pengurus.santri_id', 'left');
        $this->db->where('DATE(ijin_pengurus.waktu_keluar)', $tanggal);
        $this->db->order_by('ijin_pengurus.id', 'DESC');

        $data['list'] = $this->db->get()->result_array();

        // Load view partial untuk AJAX
        $this->my_view([$data['param']['parents_link'].'/index_page/proses_data'],$data);
    }

    function ubah_status(){
        $id = $this->input->post('id');
        $ijin_pengurus = $this->db->get_where('ijin_pengurus', ['id' => $id])->row_array();
        $santri = $this->db->get_where('santri', ['id' => $ijin_pengurus['santri_id']])->row_array();
        $konfirmasi_keluar = $this->input->post('konfirmasi_keluar');
        $keterangan = $this->input->post('keterangan');
        $data = [
            'status_konfirmasi_keluar' => $konfirmasi_keluar,
            'keterangan' => $keterangan,
        ];
        $this->db->where('id', $id);
        $this->db->update('ijin_pengurus', $data);
        if ($this->db->affected_rows() == 0) {
            echo json_encode(['status' => 500, 'msg' => 'Tidak ada perubahan pada status']);
            return;
        }


        if ($konfirmasi_keluar == 'TERKONFIRMASI') {
            $settings = $this->db->get_where('settings', ['name' => 'wa_number_ijin_pengurus'])->row_array();
            $msg = "Ijin Keluar Pengurus : \n\n"
               . "\tNama  \t\t\t: " . str_pad($santri['nama'], 40) . "\n"
               . "\tTanggal/jam \t\t\t: " . str_pad($ijin_pengurus['waktu_keluar'], 40) . "\n"
               . "\tKeterangan \t\t: " . str_pad($keterangan, 40);

		    $this->bot_wa($settings['val'], $msg, 'ijin_pengurus', $id, 'admin');
        }
        // kirim notifikasi ke WhatsApp
        
			
        
        echo json_encode(['status' => 200, 'msg' => 'Status berhasil diubah']);
    }
}