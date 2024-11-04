<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// require 'vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class jadwal extends MY_Controller {
    public $arr = [
            'title'             =>  'Master Data Jadwal',
            'table'             =>  'jadwal',
            'column'            =>  [ 'kode','nama', 'color','status'],
            'column_order'      =>  [ 'id','kode','nama', 'color','status'],
            'column_search'     =>  [ 'id','kode','nama', 'color','status'],
            'order'             =>  ['id'   =>  'DESC'],
            'id'                =>  'id',
            'parents_link'      =>  'role/general/page/jadwal'
    ];

    public function get_data()
    {
        $data['param']      =   $this->arr;
        $data['account']    =   $this->get_user_account();
        $data['status_shift']   =   $this->my_where('status_shift', [])->result_array();
        $data['gudang']   =   $this->my_where('gudang', [])->result_array();
        $this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/modal',$data['param']['parents_link'].'/index_page/js'],$data);
    }
    function simpan_jadwal()
    {
        try {
            $data = [
                'status_shift_id'   =>  $_POST['status_shift_id'],
                'karyawan_id'       =>  $_POST['karyawan_id'],
                'tanggal'           =>  $_POST['tanggal'],
                'gudang_id'         =>  $_POST['gudang_id'],
                'actual_in'         =>  '',
                'actual_out'        =>  ''
            ];

            if (empty($_POST['jadwal_id'])) {
                if($this->save_data('presensi', $data)){
                    echo json_encode([
                        'status'    =>  200,
                        'msg'       =>  'Berhasil menyimpan data'
                    ]);
                }    // code...
            }else{
                if ($this->my_update('presensi', $data, ['id'=>$_POST['jadwal_id']])) {
                    echo json_encode([
                        'status'    =>  200,
                        'msg'       =>  'Berhasil mengubah data'
                    ]);
                }
            }
            
        } catch (\Throwable $th) {
            echo json_encode([
                'status'    =>  500,
                'msg'       =>  'Gagal menyimpan data'
            ]);
        }
    }
    function get_jadwal(){
        $bulan = (!empty($_POST['bulan'])) ? $_POST['bulan'] : date('m'); // Ganti dengan bulan yang diinginkan (misalnya 1 untuk Januari, 2 untuk Februari, dll.)
        $tahun = (!empty($_POST['tahun'])) ? $_POST['tahun'] : date('Y');; // Ganti dengan tahun yang diinginkan

        // Mendapatkan jumlah hari dalam bulan yang ditentukan
        $jumlahHari = cal_days_in_month(CAL_GREGORIAN, $bulan, $tahun);
        $data['jumlahHari'] =   $jumlahHari;
        $data['bulan']      =   $bulan;
        $data['tahun']      =   $tahun;
        $data['status_shift']   =   $this->my_where('status_shift', [])->result_array();
        $data['jadwal'] =   [];
        $karyawan   =   $this->my_where('karyawan', [])->result_array();
        foreach ($karyawan as $key => $value) {
            # code...
            $data['param']      =   $this->arr;
            $tanggalArr = [];
            for ($tanggal = 1; $tanggal <= $jumlahHari; $tanggal++) {
                $tanggalFormat = sprintf("%02d-%02d-%04d", $tanggal, $bulan, $tahun);
                $presensi       =  $this->my_where('v_presensi', [
                    'karyawan_id'   =>  $value['id'],
                    'tanggal'       =>  date_format(date_create($tanggalFormat), 'Y-m-d'),
                ]); 
                $tanggalArr[]  =   [
                    'fullDate'  =>  $tanggalFormat,
                    'tanggal'   =>  $tanggal,
                    'val'       =>  $presensi->row_array()
                ];
            }

            $data['jadwal'][]   =   [
                'karyawan'  =>  $value,
                'tanggal'   =>  $tanggalArr
            ];
        }
        $this->my_view([$data['param']['parents_link'].'/index_page/jadwal'],$data);
        // Melakukan loop untuk mendapatkan tanggal dari 1 hingga jumlah hari
    }

    function print(){
        $bulan = (!empty($_POST['bulan'])) ? $_POST['bulan'] : date('m'); // Ganti dengan bulan yang diinginkan (misalnya 1 untuk Januari, 2 untuk Februari, dll.)
        $tahun = (!empty($_POST['tahun'])) ? $_POST['tahun'] : date('Y');; // Ganti dengan tahun yang diinginkan

        // Mendapatkan jumlah hari dalam bulan yang ditentukan
        $jumlahHari = cal_days_in_month(CAL_GREGORIAN, $bulan, $tahun);
        $data['jumlahHari'] =   $jumlahHari;
        $data['bulan']      =   $bulan;
        $data['tahun']      =   $tahun;
        $data['status_shift']   =   $this->my_where('status_shift', [])->result_array();
        $data['jadwal'] =   [];
        $karyawan   =   $this->my_where('karyawan', [])->result_array();
        foreach ($karyawan as $key => $value) {
            # code...
            $data['param']      =   $this->arr;
            $tanggalArr = [];
            for ($tanggal = 1; $tanggal <= $jumlahHari; $tanggal++) {
                $tanggalFormat = sprintf("%02d-%02d-%04d", $tanggal, $bulan, $tahun);
                $presensi       =  $this->my_where('v_presensi', [
                    'karyawan_id'   =>  $value['id'],
                    'tanggal'       =>  date_format(date_create($tanggalFormat), 'Y-m-d'),
                ]); 
                $tanggalArr[]  =   [
                    'fullDate'  =>  $tanggalFormat,
                    'tanggal'   =>  $tanggal,
                    'val'       =>  $presensi->row_array()
                ];
            }

            $data['jadwal'][]   =   [
                'karyawan'  =>  $value,
                'tanggal'   =>  $tanggalArr
            ];
        }

        $this->load->view('role/general/page/jadwal/index_page/print', $data);
    }
    function print_pdf()
    {
        $data['param']  =   $this->arr;
        $data[$data['param']['table']]  =   [];

        $bulan = (!empty($_POST['bulan'])) ? $_POST['bulan'] : date('m'); // Ganti dengan bulan yang diinginkan (misalnya 1 untuk Januari, 2 untuk Februari, dll.)
        $tahun = (!empty($_POST['tahun'])) ? $_POST['tahun'] : date('Y');; // Ganti dengan tahun yang diinginkan

        // Mendapatkan jumlah hari dalam bulan yang ditentukan
        $jumlahHari = cal_days_in_month(CAL_GREGORIAN, $bulan, $tahun);
        $data['jumlahHari'] =   $jumlahHari;
        $data['bulan']      =   $bulan;
        $data['tahun']      =   $tahun;
        $data['status_shift']   =   $this->my_where('status_shift', [])->result_array();
        $data['jadwal'] =   [];
        $karyawan   =   $this->my_where('karyawan', [])->result_array();
        foreach ($karyawan as $key => $value) {
            # code...
            $data['param']      =   $this->arr;
            $tanggalArr = [];
            for ($tanggal = 1; $tanggal <= $jumlahHari; $tanggal++) {
                $tanggalFormat = sprintf("%02d-%02d-%04d", $tanggal, $bulan, $tahun);
                $presensi       =  $this->my_where('v_presensi', [
                    'karyawan_id'   =>  $value['id'],
                    'tanggal'       =>  date_format(date_create($tanggalFormat), 'Y-m-d'),
                ]); 
                $tanggalArr[]  =   [
                    'fullDate'  =>  $tanggalFormat,
                    'tanggal'   =>  $tanggal,
                    'val'       =>  $presensi->row_array()
                ];
            }

            $data['jadwal'][]   =   [
                'karyawan'  =>  $value,
                'tanggal'   =>  $tanggalArr
            ];
        }

        $param  =   [
            'filename'          =>      'jadwal '.$bulan.'/'.$tahun,
        ];

        $param  =   [
                'url'           =>  'role/general/page/jadwal/index_page/cetak_pdf',
                'customPaper'   =>  'A4',
                'data_value'    =>  $data,
                'name'          =>  md5(rand(0,9999999)),
                'pos'           => 'landscape'
        ];

        $this->my_pdf($param);
    }
    function print_excel(){
        $data['param']  =   $this->arr;
        $data[$data['param']['table']]  =   [];
        $bulan = (!empty($_POST['bulan'])) ? $_POST['bulan'] : date('m'); // Ganti dengan bulan yang diinginkan (misalnya 1 untuk Januari, 2 untuk Februari, dll.)
        $tahun = (!empty($_POST['tahun'])) ? $_POST['tahun'] : date('Y');; // Ganti dengan tahun yang diinginkan

        // Mendapatkan jumlah hari dalam bulan yang ditentukan
        $jumlahHari = cal_days_in_month(CAL_GREGORIAN, $bulan, $tahun);
        $data['jumlahHari'] =   $jumlahHari;
        $data['bulan']      =   $bulan;
        $data['tahun']      =   $tahun;
        $data['status_shift']   =   $this->my_where('status_shift', [])->result_array();
        $data['jadwal'] =   [];
        $karyawan   =   $this->my_where('karyawan', [])->result_array();
        

        $param  =   [
            'filename'          =>      $data['param']['title'],
            'data_obj'          =>      $data[$data['param']['table']],
            'header_table'      =>      $data['param']['column'],
            'print_field'       =>      $data['param']['column'],
        ];

        $path_exc = $this->my_where('setting_table', ['table'=>$data['param']['table'],'name'=>'template_excel'])->row_array();      
        $start_no = $this->my_where('setting_table', ['table'=>$data['param']['table'],'name'=>'start_row_excel'])->row_array();        
        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xlsx();
        $spreadsheet = $reader->load("inc/excel_template/".$path_exc['value']);
        $sheet = $spreadsheet->getActiveSheet();
        $no = $start_no['value'];
        $styleArray = array(
            'borders' => array(
                    'allBorders' => array(
                        'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                    ),
            ),
        );
        $sheet->setCellValue('A'.($no), 'Nama');
        $abj = 'B';
        for ($tanggal = 1; $tanggal <= $jumlahHari; $tanggal++) {
            
            $sheet->setCellValue($abj.($no), $tanggal);
            $abj++;
        }
        $sheet->getStyle('A'.$no.':'.$abj.$no)->applyFromArray($styleArray);
        $no+=1;
        foreach ($karyawan as $key => $value) {
            # code...
            $abj = 'A';
            $data['param']      =   $this->arr;
            $tanggalArr = [];
            $sheet->setCellValue($abj.($no), $value['nama']);
            $abj++;

            for ($tanggal = 2; $tanggal <= $jumlahHari; $tanggal++) {
                $tanggalFormat = sprintf("%02d-%02d-%04d", $tanggal, $bulan, $tahun);
                $presensi       =  $this->my_where('v_presensi', [
                    'karyawan_id'   =>  $value['id'],
                    'tanggal'       =>  date_format(date_create($tanggalFormat), 'Y-m-d'),
                ])->row_array(); 

                $sheet->setCellValue($abj.($no), (!empty($presensi)) ? $presensi['kode_shift'] : '-' );


                $abj++;
            }

            $data['jadwal'][]   =   [
                'karyawan'  =>  $value,
                'tanggal'   =>  $tanggalArr
            ];
            $sheet->getStyle('A'.$no.':'.$abj.$no)->applyFromArray($styleArray);
             $no ++;
        }


        ob_start();
        $writer = new Xlsx($spreadsheet);
        $fileName = $data['param']['table'].".xlsx";
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="'. urlencode($fileName).'"');
        $writer->save('php://output');

        $xlsData = ob_get_contents();
        ob_end_clean();
           $response =  array(
                  'status' => TRUE,
                  'file' => "data:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64,".base64_encode($xlsData)
              );
           echo json_encode($response);
    }
}