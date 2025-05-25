<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpWord\TemplateProcessor;
use Dompdf\Dompdf;


class buku_tahfidz extends MY_Controller {
	public $arr = [
			'title'				=>	'Data Tahfidz',
			'table'				=>	'buku_tahfidz',
			'column'			=>	[ 'kode','santri_id'],
			'column_order'		=>	[ 'id','kode','santri_id'],
			'column_search'		=>	[ 'id','kode','santri_id'],
			'order'				=>	['id'	=>	'DESC'],
			'id'				=>	'id',
			'parents_link'		=>	'role/admin/page/buku_tahfidz'
	];

	public function get_data()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
	}
	public function add_page()
	{
		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
        $data['surat']      =   $this->db->query('SELECT id, nama FROM surat ORDER BY id ASC')->result_array();
		$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/add_page/index',$data['param']['parents_link'].'/add_page/js', 'role/global/modal_setting'],$data);
	}
	public function edit_page($id = ""){
		if (!empty($id)) {
			$data['param'] 		= 	$this->arr;
			$data['id']			=	$id;
			$data['data_edit']	=	$this->my_where($data['param']['table'], [
				$data['param']['id']	=>	$id
			])->row_array();
			$data['santri']	=	$this->db->query('select id, nama from santri where id = '.$data['data_edit']['santri_id'])->row_array();
			if (!empty($data['data_edit'])) {
				$this->my_view(['role/global/page_header',$data['param']['parents_link'].'/edit_page/index',$data['param']['parents_link'].'/edit_page/js', 'role/global/modal_setting'],$data);
			}			
		}
	}
    public function print_page($id)
    {
        $izin = $this->db->get_where('buku_tahfidz', ['id' => $id])->row_array();
        if (!$izin) show_404();
		$profil_website = $this->db->get_where('profil_website', [])->row_array();
        $santri = $this->db->get_where('santri', ['id' => $izin['santri_id']])->row_array();

        $data = [
            'izin' => $izin,
            'santri' => $santri,
			'profil_website' => $profil_website,
			
        ];

        $this->load->view('role/admin/page/buku_tahfidz/print_page/index', $data);
    }
    function simpan_data(){
        $data = [
            'santri_id'   => $this->input->post('santri_id'),
            'tanggal'     => $this->input->post('tanggal_izin'),
            'jenis'       => $this->input->post('jenis'),
            'surat_id'    => $this->input->post('surat_id'),
            'juz'         => $this->input->post('juz'),
            'lembar'      => $this->input->post('lembar'),
            'ayat_awal'   => $this->input->post('ayat_awal'),
            'ayat_akhir'  => $this->input->post('ayat_akhir'),
            'nilai'       => $this->input->post('nilai'),
            'catatan'     => $this->input->post('catatan')
        ];

        $this->db->insert('buku_tahfidz', $data);

        $juzBaru = (int) $data['juz'];
        $santriId = $data['santri_id'];

        // Cek apakah santri sudah punya perolehan
        if($this->input->post('jenis') == 'TAMBAHAN'){
            $cek = $this->db->get_where('perolehan_tahfidz', ['santri_id' => $santriId])->row();
    
            if ($cek) {
                // Jika juz baru lebih tinggi, update
                if ($juzBaru > (int)$cek->juz_terakhir) {
                    $this->db->where('santri_id', $santriId)->update('perolehan_tahfidz', [
                        'juz_terakhir' => $juzBaru,
                        'surat_id'  =>  $_POST['surat_id'],
                    ]);
                }
            } else {
                // Insert pertama kali
                $this->db->insert('perolehan_tahfidz', [
                    'santri_id' => $santriId,
                    'juz_terakhir' => $juzBaru,
                    'surat_id'  =>  $_POST['surat'],
                ]);
            }
        }
        echo json_encode([
            'status'    =>  200,
            'msg'       =>  'Data berhasil disimpan.',
            'post'    =>  $data
        ]);
    }

	function update_data(){
        $data = [
            'kode'              =>  $_POST['kode'],
            'santri_id'        =>  $_POST['santri_id'],
            'tanggal_izin'     =>  $_POST['tanggal_izin'],
            'tanggal_kembali'  =>  $_POST['tanggal_kembali'],
            'jenis_izin'       =>  $_POST['jenis_izin'],
            'alasan'           =>  $_POST['alasan'],
            'status_dokumen'   =>  ($_POST['jenis_izin'] == "SAKIT") ? 'DIAJUKAN_POSKESTREN' : 'DIAJUKAN_ASRAMA',
            'status_aktif'      =>  1
        ];
		$this->db->where('id', $_POST['id']);
        $this->db->update('buku_tahfidz', $data);

        echo json_encode([
            'status'    =>  200,
            'msg'       =>  'Data berhasil diubah.',
            'post'    =>  $data
        ]);
    }

	function delete_item($id)
	{
		if (!$this->input->is_ajax_request()) {
			show_404();
		}
		$this->db->where('id', $id);
		$this->db->update('buku_tahfidz', ['status_aktif' => 0]);
		echo json_encode([
			'status' => 200,
			'msg' => 'Data berhasil dihapus.'
		]);
	}
	public function get_pin(){

		$data['param'] 		= 	$this->arr;
		$data['account']	=	$this->get_user_account();
		$pin = $_POST['pin'];

		if ($pin == $data['account']['pin']) {
			echo json_encode(['status' => 200, 'ans'=>true, 'msg' => $data['account']['pin']]);
		}else{
			echo json_encode(['status' => 200, 'ans'=>false]);
		}
	}
	public function datatable()
	{
       	$_POST['frm']   =   $this->arr;
		$list           =   $this->mod_datatable->get_datatables();
        $data           =   array();
        $no             =   $_POST['start'];

        foreach ($list as $field) {
            $no++;
            $row        =   array();
            $santri 	= $this->db->query('select nama from santri where id = '.$field['santri_id'])->row_array();
            $surat 	= $this->db->query('select nama from surat where id = '.$field['surat_id'])->row_array();
            $row[]      =   '<input type="checkbox" onchange="bulk_checkbox('.$field['id'].')" name="get-check" value="'.$field['id'].'"></input>';
            $row[]		=	date('d/m/Y', strtotime($field['tanggal']));
            $row[]		=	$santri['nama'];
            $row[]		=	str_replace('_',' ' ,$field['jenis']);
            $row[]		=	$surat['nama'].' / '.$field['juz'];
            $row[]		=	$field['lembar'].'/'.$field['ayat_awal'].':'.$field['ayat_akhir'];
            $row[]		=	$field['nilai'];
            $row[]		=	$field['catatan'];
            $row[]		=	'<ul class="text-center icons-list">
            					<li class="dropdown">
            						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
            							<i class="icon-menu9"></i>
            						</a>
            						<ul class="dropdown-menu dropdown-menu-right">
            							<li><a href="buku_tahfidz/edit_page/'.$field['id'].'" class="app-item"><i class="icon-pencil"></i> Ubah</a></li>
            							<li><a  onclick="delete_item('.$field['id'].');"><i class="icon-trash"></i> Hapus</a></li>
            						</ul>
            					</li>
            				</ul>';

            $data[]     =   $row;
        }
        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->mod_datatable->count_all(),
            "recordsFiltered" => $this->mod_datatable->count_filtered(),
            "data" => $data,
        );

        echo json_encode($output);
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
	     $fetched_records = $this->db->query("select id,kode, nama, (select nama from kategori_tatib where kategori_tatib.id=kategori_tatib_id) as kategori_tatib from tatib where kategori_tatib_id=".$this->input->post("kategori_tatib_id")." and (kode like '%".$searchTerm."%' or nama like '%".$searchTerm."%') order by id DESC limit 30");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['id'], "text"=>$user['kode'].' - '.$user['nama'].' ('.$user['kategori_tatib'].')');
	     }

      	echo json_encode($data);	

	}

	function get_sanksi($id){
		$tatib = $this->db->query("select sanksi from tatib where id=".$id)->row_array();

		echo json_encode($tatib);
	}

	function get_pelapor_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("
			SELECT 
			    pengurus.id AS pengurus_id,
				santri.nama,
			    pengurus.lembaga_pengurus_id
			FROM 
			    pengurus 
			Inner join 
				santri
			ON santri.id = santri_id	
			where santri.nama like '%".$searchTerm."%' 
			order by pengurus.id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['pengurus_id'], "text"=> $user['nama']);
	     }

      	echo json_encode($data);
	}
	function get_pengurus_select(){
		$searchTerm = $this->input->post('searchTerm');
	     $fetched_records = $this->db->query("
			SELECT 
				santri.nama,
			    pengurus.id AS pengurus_id,
			    lembaga_pengurus.nama AS nama_lembaga
			FROM 
			    pengurus
			JOIN 
			    lembaga_pengurus ON pengurus.lembaga_pengurus_id = lembaga_pengurus.id
			JOIN 
				santri ON santri.id = santri_id
			WHERE 
			    pengurus.lembaga_pengurus_id = 1 and santri.nama like '%".$searchTerm."%' order by pengurus.id DESC limit 10");
	     $bahan = $fetched_records->result_array();

	     $data = array();
	     foreach($bahan as $user){
	        $data[] = array("id"=>$user['pengurus_id'], "text"=> $user['nama']);
	     }

      	echo json_encode($data);
	}
	public function modal_sp()
	{

		$data['param'] 		= 	$this->arr;
		$id = $_POST['id'];

		$data['buku_tahfidz']	=	$this->db->query('select id, kode,buku_tahfidz, santri_id, (select nama from santri where santri_id = santri.id) as nama from buku_tahfidz where id='.$id)->row_array();
		// $data['histori']		=	$this->db->query('select id, kode, santri_id, (select nama from santri where santri_id = santri.id) as nama from buku_tahfidz where id='.$id)->row_array();

		$this->my_view([$data['param']['parents_link'].'/index_page/content_sp'],$data);
	}

	function simpan_sp(){
		if (!$this->input->is_ajax_request()) {
            show_404();
        }


        $data = [
        	'buku_tahfidz_id'	=>	$_POST['id'],
			'santri_id'			=>	$_POST['santri_id'],
			'kode'				=>	$_POST['kode'],
			'tanggal'			=>	$_POST['tanggal'],
			'jenis'				=>	$_POST['jenis']
        ];

        
        if ($this->save_data('surat_pernyataan', $data)) {
            // Jika simpan berhasil, lanjutkan ke cetak PDF dari Word
            $data['buku_tahfidz']	=	$this->db->query('select buku_tahfidz from buku_tahfidz where id='.$_POST['id'])->row_array();
            $data['santri']	=	$this->db->query('select nama, alamat from santri where id='.$_POST['santri_id'])->row_array();
            $cr = $this->cetak_pdf_sp($data);
            echo json_encode($cr);
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Gagal menyimpan data.']);
        }
    }

    private function cetak_pdf_sp($data) {
        // Menggunakan FCPATH untuk mendapatkan path template
	    $templateWordPath = FCPATH . 'inc\file_tmp\file_sp.docx';
	    $templateProcessor = new TemplateProcessor($templateWordPath);
	    $uuid = generate_uuid();
	    // Gantikan placeholder dengan data dari form POST
			$templateProcessor->setValue('nama', $data['santri']['nama']);
			$templateProcessor->setValue('kode', $data['kode']);
			$templateProcessor->setValue('tanggal', date('d/m/Y', strtotime($data['tanggal'])));
			$templateProcessor->setValue('alamat', $data['santri']['alamat']);

			$buku_tahfidz = explode(',', $data['buku_tahfidz']['buku_tahfidz']);
			for ($i=0; $i <5 ; $i++) { 
				if (isset($buku_tahfidz[$i])) {
					// code...
					$templateProcessor->setValue('buku_tahfidz'.$i.'', $buku_tahfidz[$i]);
				}else{
					$templateProcessor->setValue('buku_tahfidz'.$i.'', '');
				}
			}
			// foreach ($buku_tahfidz as $key => $value) {
				
			// 	$templateProcessor->setValue('buku_tahfidz'.$key.'', $value);
			// }

	    // Simpan file Word hasil edit ke sementara
	    $tempWordFile = FCPATH . '/inc/temp_doc/'.$uuid.'.docx'; // Gunakan FCPATH untuk path sementara
	    $templateProcessor->saveAs($tempWordFile);

	    // Proses konversi dan output PDF seperti biasa
	    $phpWord = \PhpOffice\PhpWord\IOFactory::load($tempWordFile);
	    $htmlWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'HTML');
	    ob_start();
	    $htmlWriter->save('php://output');
	    $htmlContent = ob_get_clean();


		return base_url('inc/temp_doc/'.$uuid.'.docx');
    }

	function get_pengajuan(){
		$data['pengajuan']	=	$this->db->query('SELECT 
						p.id, 
						s.nama AS nama_santri,
						pelapor_santri.nama AS nama_pelapor,
						p.kode, 
						p.tanggal, 
						p.status_pengajuan, 
						p.buku_tahfidz 
					FROM pengajuan_buku_tahfidz p
					-- join ke santri pelanggar
					LEFT JOIN santri s ON s.id = p.santri_id
					-- join ke pengurus (pelapor)
					LEFT JOIN pengurus peng ON peng.id = p.pelapor_id
					-- join ke santri dari pengurus (untuk nama pelapor)
					LEFT JOIN santri pelapor_santri ON pelapor_santri.id = peng.santri_id
					WHERE 
						p.status_pengajuan <> "BUKAN PENGAJUAN" AND 
						p.status_pengajuan <> "" 
					ORDER BY 
						CASE 
							WHEN p.status_pengajuan = "BELUM DIPROSES" THEN 1 
							WHEN p.status_pengajuan = "DITERIMA" THEN 2 
							WHEN p.status_pengajuan = "DITOLAK" THEN 3 
							ELSE 4 
						END,
						p.id DESC
					LIMIT 10;

		')->result_array();
		
		$data['param'] 		= 	$this->arr;
		$this->my_view([ $data['param']['parents_link'].'/pengajuan_buku_tahfidz/table_pengajuan'],$data);
	}
}
