<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class ijin_pengurus extends MY_Controller {
	public $arr = [
		'title'				=>	'Master Data Ijin Pengurus',
		'table'				=>	'ijin_pengurus',
		'column'			=>	['tanggal', 'nama', 'nip', 'keterangan', 'status'],
		'column_order'		=>	['id','tanggal','nama','nip','status'],
		'column_search'		=>	['nama','nip','keterangan','status'],
		'order'				=>	['id' => 'DESC'],
		'id'				=>	'id',
		'parents_link'		=>	'role/admin/page/ijin_pengurus'
	];

	public function get_data()
	{
		$data['param'] = $this->arr;
		$data['account'] = $this->get_user_account();
		$data['santri_list'] = $this->db->select('id, nama, nip')->get('santri')->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}

	public function proses_data() {
		$data['param'] = $this->arr;
		
		// Get filter parameters
		$tanggal_dari = $this->input->post('tanggal_dari');
		$tanggal_sampai = $this->input->post('tanggal_sampai');
		$status = $this->input->post('status');
		$status_konfirmasi = $this->input->post('status_konfirmasi');
		$santri_id = $this->input->post('santri_id');
		$search = $this->input->post('search');

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

		// Apply filters
		if ($tanggal_dari && $tanggal_sampai) {
			$this->db->where('DATE(ijin_pengurus.waktu_keluar) >=', $tanggal_dari);
			$this->db->where('DATE(ijin_pengurus.waktu_keluar) <=', $tanggal_sampai);
		} elseif ($tanggal_dari) {
			$this->db->where('DATE(ijin_pengurus.waktu_keluar)', $tanggal_dari);
		}

		if ($status && $status != 'SEMUA') {
			$this->db->where('ijin_pengurus.status', $status);
		}

		if ($status_konfirmasi && $status_konfirmasi != 'SEMUA') {
			$this->db->where('ijin_pengurus.status_konfirmasi_keluar', $status_konfirmasi);
		}

		if ($santri_id && $santri_id != '') {
			$this->db->where('ijin_pengurus.santri_id', $santri_id);
		}

		if ($search && $search != '') {
			$this->db->group_start();
			$this->db->like('santri.nama', $search);
			$this->db->or_like('santri.nip', $search);
			$this->db->or_like('ijin_pengurus.keterangan', $search);
			$this->db->group_end();
		}

		$this->db->order_by('ijin_pengurus.id', 'DESC');

		$data['list'] = $this->db->get()->result_array();
		$data['total'] = count($data['list']);

		$this->my_view([$data['param']['parents_link'].'/index_page/proses_data'],$data);
	}

	public function tambah_data() {
		$santri_id = $this->input->post('santri_id');
		$keterangan = $this->input->post('keterangan');
		$waktu_keluar = $this->input->post('waktu_keluar');
		$waktu_kembali = $this->input->post('waktu_kembali');

		// Validasi input
		if (!$santri_id || !$keterangan || !$waktu_keluar) {
			echo json_encode(['status' => 500, 'msg' => 'Data tidak lengkap. Santri, keterangan, dan waktu keluar wajib diisi.']);
			return;
		}

		// Cek apakah santri masih dalam status keluar
		$existing = $this->db->get_where('ijin_pengurus', [
			'santri_id' => $santri_id,
			'status' => 'KELUAR'
		])->row_array();

		if ($existing) {
			echo json_encode(['status' => 500, 'msg' => 'Santri ini masih dalam status keluar. Tidak bisa mengajukan ijin baru.']);
			return;
		}

		$data = [
			'santri_id' => $santri_id,
			'keterangan' => $keterangan,
			'waktu_keluar' => $waktu_keluar,
			'waktu_kembali' => $waktu_kembali,
			'status' => empty($waktu_kembali) ? 'KELUAR' : 'KEMBALI',
			'status_konfirmasi_keluar' => 'BELUM DIKONFIRMASI',
			'status_konfirmasi_kembali' => 'BELUM DIKONFIRMASI',
			'created_at' => date('Y-m-d H:i:s')
		];

		$this->db->insert('ijin_pengurus', $data);

		if ($this->db->affected_rows() > 0) {
			echo json_encode(['status' => 200, 'msg' => 'Data ijin pengurus berhasil ditambahkan']);
		} else {
			echo json_encode(['status' => 500, 'msg' => 'Gagal menambahkan data ijin pengurus']);
		}
	}

	public function edit_data() {
		$id = $this->input->post('id');
		$santri_id = $this->input->post('santri_id');
		$keterangan = $this->input->post('keterangan');
		$waktu_keluar = $this->input->post('waktu_keluar');
		$waktu_kembali = $this->input->post('waktu_kembali');

		// Validasi input
		if (!$id || !$santri_id || !$keterangan || !$waktu_keluar) {
			echo json_encode(['status' => 500, 'msg' => 'Data tidak lengkap']);
			return;
		}

		// Cek apakah data exists
		$existing = $this->db->get_where('ijin_pengurus', ['id' => $id])->row_array();
		if (!$existing) {
			echo json_encode(['status' => 500, 'msg' => 'Data tidak ditemukan']);
			return;
		}

		$data = [
			'santri_id' => $santri_id,
			'keterangan' => $keterangan,
			'waktu_keluar' => $waktu_keluar,
			'waktu_kembali' => $waktu_kembali,
			'status' => empty($waktu_kembali) ? 'KELUAR' : 'KEMBALI'
		];

		$this->db->where('id', $id);
		$this->db->update('ijin_pengurus', $data);

		if ($this->db->affected_rows() > 0) {
			echo json_encode(['status' => 200, 'msg' => 'Data berhasil diperbarui']);
		} else {
			echo json_encode(['status' => 500, 'msg' => 'Tidak ada perubahan data atau gagal memperbarui']);
		}
	}

	public function hapus_data() {
		$id = $this->input->post('id');

		if (!$id) {
			echo json_encode(['status' => 500, 'msg' => 'ID tidak valid']);
			return;
		}

		// Cek apakah data exists
		$existing = $this->db->get_where('ijin_pengurus', ['id' => $id])->row_array();
		if (!$existing) {
			echo json_encode(['status' => 500, 'msg' => 'Data tidak ditemukan']);
			return;
		}

		$this->db->where('id', $id);
		$this->db->delete('ijin_pengurus');

		if ($this->db->affected_rows() > 0) {
			echo json_encode(['status' => 200, 'msg' => 'Data berhasil dihapus']);
		} else {
			echo json_encode(['status' => 500, 'msg' => 'Gagal menghapus data']);
		}
	}

	public function get_detail() {
		$id = $this->input->post('id');
		
		if (!$id) {
			echo json_encode(['status' => 500, 'msg' => 'ID tidak valid']);
			return;
		}

		$this->db->select('
			ijin_pengurus.*,
			santri.nama as nama_santri,
			santri.nip
		');
		$this->db->from('ijin_pengurus');
		$this->db->join('santri', 'santri.id = ijin_pengurus.santri_id', 'left');
		$this->db->where('ijin_pengurus.id', $id);

		$data = $this->db->get()->row_array();

		if ($data) {
			echo json_encode(['status' => 200, 'data' => $data]);
		} else {
			echo json_encode(['status' => 500, 'msg' => 'Data tidak ditemukan']);
		}
	}

	public function export_excel() {
		// Get filter parameters
		$tanggal_dari = $this->input->get('tanggal_dari');
		$tanggal_sampai = $this->input->get('tanggal_sampai');
		$status = $this->input->get('status');
		$status_konfirmasi = $this->input->get('status_konfirmasi');

		$this->db->select('
			ijin_pengurus.id,
			santri.nip,
			santri.nama,
			ijin_pengurus.keterangan,
			ijin_pengurus.waktu_keluar,
			ijin_pengurus.waktu_kembali,
			ijin_pengurus.status,
			ijin_pengurus.status_konfirmasi_keluar,
			ijin_pengurus.created_at
		');
		$this->db->from('ijin_pengurus');
		$this->db->join('santri', 'santri.id = ijin_pengurus.santri_id', 'left');

		// Apply same filters as proses_data
		if ($tanggal_dari && $tanggal_sampai) {
			$this->db->where('DATE(ijin_pengurus.waktu_keluar) >=', $tanggal_dari);
			$this->db->where('DATE(ijin_pengurus.waktu_keluar) <=', $tanggal_sampai);
		} elseif ($tanggal_dari) {
			$this->db->where('DATE(ijin_pengurus.waktu_keluar)', $tanggal_dari);
		}

		if ($status && $status != 'SEMUA') {
			$this->db->where('ijin_pengurus.status', $status);
		}

		if ($status_konfirmasi && $status_konfirmasi != 'SEMUA') {
			$this->db->where('ijin_pengurus.status_konfirmasi_keluar', $status_konfirmasi);
		}

		$this->db->order_by('ijin_pengurus.id', 'DESC');
		$data = $this->db->get()->result_array();

		$spreadsheet = new Spreadsheet();
		$sheet = $spreadsheet->getActiveSheet();

		// Header
		$sheet->setCellValue('A1', 'No');
		$sheet->setCellValue('B1', 'NIP');
		$sheet->setCellValue('C1', 'Nama');
		$sheet->setCellValue('D1', 'Keterangan');
		$sheet->setCellValue('E1', 'Waktu Keluar');
		$sheet->setCellValue('F1', 'Waktu Kembali');
		$sheet->setCellValue('G1', 'Status');
		$sheet->setCellValue('H1', 'Status Konfirmasi');
		$sheet->setCellValue('I1', 'Tanggal Dibuat');

		// Data
		$row = 2;
		foreach ($data as $i => $item) {
			$sheet->setCellValue('A' . $row, $i + 1);
			$sheet->setCellValue('B' . $row, $item['nip']);
			$sheet->setCellValue('C' . $row, $item['nama']);
			$sheet->setCellValue('D' . $row, $item['keterangan']);
			$sheet->setCellValue('E' . $row, $item['waktu_keluar']);
			$sheet->setCellValue('F' . $row, $item['waktu_kembali'] ?: 'Belum Kembali');
			$sheet->setCellValue('G' . $row, $item['status']);
			$sheet->setCellValue('H' . $row, $item['status_konfirmasi_keluar']);
			$sheet->setCellValue('I' . $row, $item['created_at']);
			$row++;
		}

		$writer = new Xlsx($spreadsheet);
		$filename = 'ijin_pengurus_' . date('Y-m-d_H-i-s') . '.xlsx';

		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename="' . $filename . '"');
		header('Cache-Control: max-age=0');

		$writer->save('php://output');
	}

	public function ubah_status(){
		$id = $this->input->post('id');
		$ijin_pengurus = $this->db->get_where('ijin_pengurus', ['id' => $id])->row_array();
		
		if (!$ijin_pengurus) {
			echo json_encode(['status' => 500, 'msg' => 'Data tidak ditemukan']);
			return;
		}

		$santri = $this->db->get_where('santri', ['id' => $ijin_pengurus['santri_id']])->row_array();
		$konfirmasi_keluar = $this->input->post('konfirmasi_keluar');
		$keterangan_admin = $this->input->post('keterangan_admin');
		
		$data = [
			'status_konfirmasi_keluar' => $konfirmasi_keluar,
			'keterangan' => $keterangan_admin
		];
		
		$this->db->where('id', $id);
		$this->db->update('ijin_pengurus', $data);
		
		if ($this->db->affected_rows() == 0) {
			echo json_encode(['status' => 500, 'msg' => 'Tidak ada perubahan pada status']);
			return;
		}

		if ($konfirmasi_keluar == 'TERKONFIRMASI') {
			// Ambil semua penerima WA yang aktif untuk fitur ijin_pengurus
			$recipients = $this->db->get_where('wa_recipients', [
				'fitur' => 'ijin_pengurus', 
				'is_active' => 1
			])->result_array();
			
			if (count($recipients) > 0) {
				$msg = "*IJIN KELUAR PENGURUS TERKONFIRMASI*\n\n"
				. "📋 *Detail Ijin:*\n"
				. "• Nama: " . $santri['nama'] . "\n"
				. "• NIP: " . $santri['nip'] . "\n"
				. "• Tanggal/Waktu: " . date('d-m-Y H:i:s', strtotime($ijin_pengurus['waktu_keluar'])) . "\n"
				. "• Keterangan: " . $ijin_pengurus['keterangan'] . "\n"
				. ($keterangan_admin ? "• Catatan Admin: " . $keterangan_admin . "\n" : "")
				. "\n📅 Dikirim pada: " . date('d-m-Y H:i:s');

				// Kirim WA ke semua penerima yang aktif
				foreach ($recipients as $recipient) {
					$this->bot_wa($recipient['nomor_wa'], $msg, 'ijin_pengurus', $id, 'admin');
				}
			}
		}
		
		echo json_encode(['status' => 200, 'msg' => 'Status berhasil diubah']);
	}

	// WhatsApp Recipients Management
	public function get_wa_recipients() {
		$fitur = $this->input->post('fitur');
		
		$this->db->select('id, nama, nomor_wa, is_active, created_at');
		$this->db->from('wa_recipients');
		$this->db->where('fitur', $fitur);
		$this->db->order_by('created_at', 'DESC');
		
		$result = $this->db->get()->result_array();
		
		echo json_encode([
			'status' => 200,
			'data' => $result
		]);
	}

	public function tambah_wa_recipient() {
		$nama = trim($this->input->post('nama'));
		$nomor_wa = trim($this->input->post('nomor_wa'));
		$fitur = $this->input->post('fitur');
		
		if (!$nama || !$nomor_wa || !$fitur) {
			echo json_encode(['status' => 500, 'msg' => 'Data tidak lengkap']);
			return;
		}
		
		// Validasi format nomor WA
		if (!preg_match('/^62\d{9,13}$/', $nomor_wa)) {
			echo json_encode(['status' => 500, 'msg' => 'Format nomor WhatsApp tidak valid. Gunakan format: 62xxxxxxxxx']);
			return;
		}
		
		// Cek apakah nomor sudah ada untuk fitur yang sama
		$existing = $this->db->get_where('wa_recipients', [
			'nomor_wa' => $nomor_wa,
			'fitur' => $fitur
		])->row_array();
		
		if ($existing) {
			echo json_encode(['status' => 500, 'msg' => 'Nomor WhatsApp sudah terdaftar untuk fitur ini']);
			return;
		}
		
		$data = [
			'nama' => $nama,
			'nomor_wa' => $nomor_wa,
			'fitur' => $fitur,
			'is_active' => 1,
			'created_at' => date('Y-m-d H:i:s')
		];
		
		$this->db->insert('wa_recipients', $data);
		
		if ($this->db->affected_rows() > 0) {
			echo json_encode(['status' => 200, 'msg' => 'Penerima WA berhasil ditambahkan']);
		} else {
			echo json_encode(['status' => 500, 'msg' => 'Gagal menambahkan penerima WA']);
		}
	}

	public function toggle_wa_recipient() {
		$id = $this->input->post('id');
		$status = $this->input->post('status');
		
		if (!$id || !isset($status)) {
			echo json_encode(['status' => 500, 'msg' => 'Data tidak lengkap']);
			return;
		}
		
		$data = [
			'is_active' => $status,
		];
		
		$this->db->where('id', $id);
		$this->db->update('wa_recipients', $data);
		
		if ($this->db->affected_rows() > 0) {
			$statusText = $status == 1 ? 'diaktifkan' : 'dinonaktifkan';
			echo json_encode(['status' => 200, 'msg' => 'Penerima WA berhasil ' . $statusText]);
		} else {
			echo json_encode(['status' => 500, 'msg' => 'Gagal mengubah status penerima WA']);
		}
	}

	public function edit_wa_recipient() {
		$id = $this->input->post('id');
		$nama = trim($this->input->post('nama'));
		$nomor_wa = trim($this->input->post('nomor_wa'));
		
		if (!$id || !$nama || !$nomor_wa) {
			echo json_encode(['status' => 500, 'msg' => 'Data tidak lengkap']);
			return;
		}
		
		// Validasi format nomor WA
		if (!preg_match('/^62\d{9,13}$/', $nomor_wa)) {
			echo json_encode(['status' => 500, 'msg' => 'Format nomor WhatsApp tidak valid']);
			return;
		}
		
		// Cek apakah nomor sudah dipakai oleh record lain pada fitur yang sama
		$current_data = $this->db->get_where('wa_recipients', ['id' => $id])->row_array();
		if (!$current_data) {
			echo json_encode(['status' => 500, 'msg' => 'Data tidak ditemukan']);
			return;
		}
		
		$existing = $this->db->where('nomor_wa', $nomor_wa)
							->where('fitur', $current_data['fitur'])
							->where('id !=', $id)
							->get('wa_recipients')
							->row_array();
		
		if ($existing) {
			echo json_encode(['status' => 500, 'msg' => 'Nomor WhatsApp sudah digunakan oleh penerima lain']);
			return;
		}
		
		$data = [
			'nama' => $nama,
			'nomor_wa' => $nomor_wa,
			'updated_at' => date('Y-m-d H:i:s')
		];
		
		$this->db->where('id', $id);
		$this->db->update('wa_recipients', $data);
		
		if ($this->db->affected_rows() > 0) {
			echo json_encode(['status' => 200, 'msg' => 'Data penerima WA berhasil diperbarui']);
		} else {
			echo json_encode(['status' => 500, 'msg' => 'Tidak ada perubahan data atau gagal memperbarui']);
		}
	}

	public function hapus_wa_recipient() {
		$id = $this->input->post('id');
		
		if (!$id) {
			echo json_encode(['status' => 500, 'msg' => 'ID tidak valid']);
			return;
		}
		
		$this->db->where('id', $id);
		$this->db->delete('wa_recipients');
		
		if ($this->db->affected_rows() > 0) {
			echo json_encode(['status' => 200, 'msg' => 'Penerima WA berhasil dihapus']);
		} else {
			echo json_encode(['status' => 500, 'msg' => 'Gagal menghapus penerima WA']);
		}
	}

	// Deprecated method - kept for backward compatibility
	public function setting_wa() {
		$data['wa_number'] = $this->db->get_where('settings', ['name' => 'wa_number_ijin_pengurus'])->row_array();  
		echo json_encode($data);
	}

	public function simpan_nomor_wa() {
		$nomor = $this->input->post('nomor');
		if (!$nomor) {
			echo json_encode(['status' => 500, 'msg' => 'Nomor WhatsApp tidak boleh kosong']);
			return;
		}
		$this->my_update('settings', ['val' => $nomor], ['name' => 'wa_number_ijin_pengurus']);
		if ($this->db->affected_rows() > 0) {
			echo json_encode(['status' => 200, 'msg' => 'Nomor WhatsApp berhasil disimpan']);
		} else {
			echo json_encode(['status' => 500, 'msg' => 'Gagal menyimpan nomor WhatsApp']);
		}
	}
}