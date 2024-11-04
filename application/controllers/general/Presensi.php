<?php
defined('BASEPATH') OR exit('No direct script access allowed');
        use PhpOffice\PhpSpreadsheet\Spreadsheet;
        use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
        use GuzzleHttp\Client;

class Presensi extends MY_Controller {

    public $arr = [
        'title'             =>  'Presensi',
        'parents_link'      =>  'role/general/page/presensi'
    ];
    /*
        CHANGE PAGE
    */
    
    public function get_data()
    {
        $data['param']      =   $this->arr;
        $data['param']['title'] =   'Presensi';
        $data['account']    =   $this->get_user_account();
        $data['karyawan']   =   $this->my_where('karyawan', [])->result_array();
        $this->my_view(['role/global/page_header',$data['param']['parents_link'].'/index_page/index',$data['param']['parents_link'].'/index_page/js'],$data);
    }
    function presensi_hari_ini(){
        $data['param']      =   $this->arr;
        $data['account']    =   $this->get_user_account();
        $jadwal =   $this->my_where('presensi',['tanggal'=>date('Y-m-d')])->result_array();
        $data['presensi']   =   [];

        foreach ($jadwal as $key => $value) {
            $data['presensi'][]   =   [
                'jadwal'    =>  $value,
                'karyawan'  =>  $this->my_where('karyawan', ['id'=>$value['karyawan_id']])->row_array(),
                'status_shift'  =>  $this->my_where('status_shift', ['id'=>$value['status_shift_id']])->row_array(),
                'actual_in' =>  $this->my_where('check_log', ['karyawan_id'=>$value['karyawan_id'], 'status_absen_id'=>0, 'tanggal'=>date('Y-m-d')])->row_array(),
                'actual_out' =>  $this->my_where('check_log', ['karyawan_id'=>$value['karyawan_id'], 'status_absen_id'=>1, 'tanggal'=>date('Y-m-d')])->row_array()
            ];
        }
        $this->my_view([$data['param']['parents_link'].'/index_page/presensi_hari_ini'],$data);
    }

    function get_presence_daily(){
        $data['param']      =   $this->arr;
        $data['account']    =   $this->get_user_account();
        $jadwal =   $this->my_where('presensi',['tanggal'=>$_POST['tanggal']])->result_array();
        $data['post']       =   $_POST;
        $data['presensi']   =   [];

        foreach ($jadwal as $key => $value) {
            $data['presensi'][]   =   [
                'jadwal'    =>  $value,
                'karyawan'  =>  $this->my_where('karyawan', ['id'=>$value['karyawan_id']])->row_array(),
                'status_shift'  =>  $this->my_where('status_shift', ['id'=>$value['status_shift_id']])->row_array(),
                'actual_in' =>  $this->my_where('check_log', ['karyawan_id'=>$value['karyawan_id'], 'status_absen_id'=>0, 'tanggal'=>$_POST['tanggal']])->row_array(),
                'actual_out' =>  $this->my_where('check_log', ['karyawan_id'=>$value['karyawan_id'], 'status_absen_id'=>1, 'tanggal'=>$_POST['tanggal']])->row_array()
            ];
        }
        $this->my_view([$data['param']['parents_link'].'/index_page/presensi_harian'],$data);
    }
    function get_presence_karyawan(){
        $data['param']      =   $this->arr;
        $data['account']    =   $this->get_user_account();
        $jadwal =   $this->my_where('presensi',[
            'MONTH(tanggal)'=>$_POST['bulan'],
            'YEAR(tanggal)'=>$_POST['tahun'],
            'karyawan_id'=>$_POST['karyawan_id'],
        ])->result_array();
        $data['post']       =   $_POST;
        $data['presensi']   =   [];

        foreach ($jadwal as $key => $value) {
            $data['presensi'][]   =   [
                'jadwal'    =>  $value,
                'karyawan'  =>  $this->my_where('karyawan', ['id'=>$value['karyawan_id']])->row_array(),
                'status_shift'  =>  $this->my_where('status_shift', ['id'=>$value['status_shift_id']])->row_array(),
                'actual_in' =>  $this->my_where('check_log', ['karyawan_id'=>$value['karyawan_id'], 'status_absen_id'=>0, 'tanggal'=>$value['tanggal']])->row_array(),
                'actual_out' =>  $this->my_where('check_log', ['karyawan_id'=>$value['karyawan_id'], 'status_absen_id'=>1, 'tanggal'=>$value['tanggal']])->row_array()
            ];
        }
        $this->my_view([$data['param']['parents_link'].'/index_page/presensi_karyawan'],$data);
    }

    function get_data_fingerprint(){

        $data['param']      =   $this->arr;
        $_client =  new Client([
            'base_uri' => $this->get_setting_table("other", "api_fingerprint")['value']
        ]);
        $response = $_client->request('GET', 'users', []);
 
        $data['fingerprint'] = json_decode($response->getBody()->getContents(), true);

        $this->my_view([$data['param']['parents_link'].'/index_page/fingerprint'],$data);
    }
    function content_fingerprint(){
        $data['param']      =   $this->arr;
        $_client =  new Client([
            'base_uri' => $this->get_setting_table("other", "api_fingerprint")['value']
        ]);
        $response = $_client->request('GET', 'users', []);
 
        $res = json_decode($response->getBody()->getContents(), true);
        $post = [];
        foreach ($res['data']['karyawan'] as $value) {
            $post =   [
                'uid'       => $value['uid'],
                'tanggal'   =>  date_format(date_create($value['time']), 'Y-m-d'),
                'jam'       =>  date_format(date_create($value['time']), 'H:i:s'),
                'timestamp' =>  $value['time'],
                'state'     => $value['status_val'],
            ];
            $this->update_fingerprint($post);
        }
    }
    function update_fingerprint($post){
        try {
            $cek_user = $this->db->get_where('karyawan', ['uid_fingerprint'=>$post['uid']]);
            if($cek_user->num_rows() > 0)
            {
                $user = $cek_user->row_array()['id'];
                $cek_jadwal = $this->db->get_where('presensi', ['tanggal'=>$post['tanggal'], 'karyawan_id'=>$user]);

                if($cek_jadwal->num_rows() > 0){
                    
                    $cek_presensi = $this->db->get_where('check_log', [
                        'uid_finger'        =>  $post['uid'],
                        'status_absen_id'   =>  $post['state'],
                        'tanggal'           =>  $post['tanggal'],
                    ]);
                    if($cek_presensi->num_rows() == 0){
                        $data = [
                            'karyawan_id'       =>  $cek_user->row_array()['id'],
                            'uid_finger'        =>  $post['uid'],
                            'status_absen_id'   =>  $post['state'],
                            'tanggal'           =>  $post['tanggal'],
                            'jam'               =>  $post['jam'], 
                            'timestamp'         =>  $post['timestamp'],
                        ];
            
                        if ($this->db->insert('check_log', $data)) {
                            return [
                                    'status' => 200,
                                    'message' =>  "Berhasil menambahkan absen",
                            ]; 
                        }else{
                            return [
                                    'status' => 400,
                                    'message' => "gagal menambahkan absen",
                            ]; 
                        }
                    }else{
                        return [
                            'status' => 400,
                            'message' => "Data sudah ditambahkan",
                        ]; 
                    }
                }else{
                    return [
                            'status' => 400,
                            'message' => "Jadwal tidak ditemukan",
                    ]; 
                }
                
            }else{
                return [
                    'status' => 400,
                    'message' => "Data karyawan tidak ditemukan",
                    'post'  => $post
                ]; 
            }
        } catch (Exception $e) {
            return [
                'status' => 400,
                'message' => $e,
            ]; 
        }
    }
}