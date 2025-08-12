<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Presensi extends CI_Controller {
	
	public function ijin_pengurus()
	{
		
		$data=[];
		$this->load->view('presensi/ijin_pengurus/index', $data);
	}
    function get_presence(){
        $data = [];
        $data['presence'] = $this->db->query("
            SELECT 
                s.id AS santri_id,
                s.nama AS nama_pengurus,
                i.waktu_keluar AS ijin_keluar,
                i.status_konfirmasi_keluar AS status_konfirmasi_keluar,
                i.status_konfirmasi_kembali AS status_konfirmasi_kembali
            FROM pengurus p
            INNER JOIN santri s ON s.id = p.santri_id
            INNER JOIN ijin_pengurus i ON i.santri_id = s.id
            WHERE 
                DATE(i.created_at) = CURDATE()
                AND i.status = 'KELUAR'
                AND NOT EXISTS (
                    SELECT 1 FROM ijin_pengurus k
                    WHERE k.santri_id = s.id
                    AND k.status = 'KEMBALI'
                    AND DATE(k.created_at) = CURDATE()
                    AND k.waktu_kembali > i.waktu_keluar
                )
            ORDER BY i.waktu_keluar DESC
            LIMIT 10
        ")->result_array();

        $this->load->view('presensi/ijin_pengurus/table', $data);
    }


	function get_last_presence(){
		$data=[];
		$data['presence'] 	=	$this->db->query("SELECT 
            s.nama AS nama_pengurus,
            i.status,
            i.status_konfirmasi_keluar, 
            i.status_konfirmasi_kembali,
            IF(i.status = 'KELUAR', i.waktu_keluar, i.waktu_kembali) AS waktu
        FROM ijin_pengurus i
        JOIN santri s ON s.id = i.santri_id
        WHERE DATE(i.created_at) = CURDATE()
        ORDER BY waktu DESC
        LIMIT 5")->result_array();
		$this->load->view('presensi/ijin_pengurus/kelas', $data);
	}

    function simpan_absen(){
        $rfid = $this->input->post('rfid');

        // Ambil data santri dari kode RFID
        $santri = $this->db->get_where('santri', ['rfid' => $rfid])->row_array();
        if (!$santri) {
            echo json_encode(['msg' => 'Kartu tidak dikenal']);
            return;
        }

        $id_santri = $santri['id'];

        // Cek apakah dia adalah pengurus
        $pengurus = $this->db->get_where('pengurus', ['santri_id' => $id_santri])->row_array();
        if (!$pengurus) {
            echo json_encode(['msg' => $santri['nama'] . ' | Bukan Pengurus']);
            return;
        }

        // Cek apakah pengurus ini sedang keluar
        $ijin = $this->db->query("
            SELECT * FROM ijin_pengurus 
            WHERE santri_id = $id_santri 
            AND status = 'KELUAR' 
            AND waktu_kembali IS NULL
            ORDER BY waktu_keluar DESC
            LIMIT 1
        ")->row_array();

        if ($ijin) {
            // Jika sudah keluar, maka update sebagai kembali
            $this->db->where('id', $ijin['id'])->update('ijin_pengurus', [
                'waktu_kembali' => date('Y-m-d H:i:s'),
                'status' => 'KEMBALI'
            ]);
            echo json_encode(['msg' => $santri['nama'] . ' | Sudah KEMBALI']);
        } else {
            // Hitung pengurus yang sedang keluar
            $jumlah_keluar = $this->db->query("
                SELECT COUNT(*) AS total FROM ijin_pengurus 
                WHERE status = 'KELUAR' AND waktu_kembali IS NULL
            ")->row()->total;

            if ($jumlah_keluar >= 10) {
                echo json_encode(['status'=>'error','msg' => 'Maksimal 10 pengurus boleh keluar bersamaan']);
                return;
            }

            // Masukkan ijin keluar
            $this->db->insert('ijin_pengurus', [
                'santri_id' => $id_santri,
                'waktu_keluar' => date('Y-m-d H:i:s'),
                'status' => 'KELUAR'
            ]);
            echo json_encode(['msg' => $santri['nama'] . ' | Diijinkan KELUAR']);
        }
    }


	function get_status_pulang(){
		$data = $this->db->query('select `value` from setting_table where `table` = "status_pulang"')->row_array();

		echo ($data['value'] == 0) ? "<h4 style='font-weight:bold;' class='text-center text-danger'>Status Pulang : Belum Waktunya</h4>" : "<h4 style='font-weight:bold;' class='text-center text-success'>Status Pulang : Sudah Waktunya Pulang</h4>";
	}

	private function getAbsensiStatus($idsiswa_fk)
	{
	    // Ambil status terakhir berdasarkan RFID
	    return $this->db->select('status')
	                    ->from('presensi_rfid')
	                    ->where('idsiswa_fk', $idsiswa_fk)
	                    ->where('tanggal', date('Y-m-d') )
	                    ->order_by('waktu', 'DESC' )
	                    ->limit(1)
	                    ->get()
	                    ->row()
	                    ->status;
	}
	private function insertAbsensi($idsiswa_fk, $status, $time)
	{
	    // Masukkan data absensi baru
	    $this->db->insert('presensi_rfid', [
	        'idsiswa_fk' => $idsiswa_fk,
	        'status' => $status,
	        'tanggal' => date('Y-m-d'),
	        'waktu' => $time
	    ]);
	}
}
