<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

   
    public function __construct()
    {
        parent::__construct();
        $this->load->model('SMMP_Model','mod');
        $this->load->model('SMMP_Datatable','mod_datatable');
        $this->get_login();
    }

    public function index()
    {
        $tmp    =  $this->my_template();
        $data   =  $this->data_all();

        $this->load->view('template/'.$tmp.'/head',$data);
        $this->load->view('template/'.$tmp.'/navbar');
        // $this->load->view('template/'.$tmp.'/sidebar');
        $this->load->view('template/'.$tmp.'/content');
        // print_r($data);
        $this->load->view('template/'.$tmp.'/footer');
    }
    
    function get_status($groups, $val){
        return $this->db->get_where('setting_status', [
            'groups' => $groups,
            'status' => $val
        ])->row_array();
    }
    public function get_login()
    {
        
        if (!$this->ion_auth->logged_in())
        {
            // redirect them to the login page
            if ($this->uri->segment(1)!='auth'){
                redirect('auth/login', 'refresh');
            }
            if ($this->uri->segment(2)=='logout') {
                redirect('auth/login', 'refresh');
            }
        }
        else 
        {            
            if ($this->uri->segment(2)!='logout') {
                $group_name=$this->ion_auth->get_users_groups()->row();
                if ($this->uri->segment(1)!='admin' ) {
                    // redirect('General/Dashboard', 'refresh');
                }
            }
            
        }
    }

    public function data_all()
    {
        $data['profil_website']     =  $this->mod->get_profil_website(); 
        $data['user_account']       =  $this->ion_auth->user()->row_array();
        $data['user_groups']        =   $this->my_groups();
        $data['user_modul']         =   $this->session->userdata('modul');
        $data['sidebar']            =   $this->my_sidebar();
        $data['menu']               =   $this->all_menu($data['user_groups']['id']);
        return $data;
    }

    public function get_role($id='')
    {
        $group = $this->my_groups();
        return $this->my_where('groups_detail', ['groups_id'=>$group['id'], 'submenu_id'=>$id])->row_array();   
    }
    function all_menu($id){
        $data = [];
        
        $group = $this->my_groups();
        $menu = $this->my_where('menu', [])->result_array();
        foreach ($menu as $value) {
            $submenu = $this->my_where('submenu', ['menu_id'=>$value['id'] , 'status_aktif'=>1])->result_array();
            $cek_menu = $this->my_where('v_groups_detail_submenu', ['groups_id'=>$group['id'], 'menu_id'=>$value['id'], 'r' => 1])->num_rows();
            $submenu_val = [];
            foreach ($submenu as $value_sub) {
                $cek = $this->my_where('groups_detail', [
                    'groups_id' => $id,
                    'submenu_id' => $value_sub['id']
                ])->row_array();
                $submenu_val[] = [
                    'submenu'=>$value_sub,
                    'cek' => $cek
                ];
            }
            $data[] =   [
                'menu'      => $value,
                'submenu'   =>$submenu_val,
                'cek_menu' => $cek_menu
            ];
        }
        return $data;
    }
    public function my_template()
    {
        return $this->config->item('template');
    }
    public function my_groups()
    {
        return $this->ion_auth->get_users_groups()->row_array();
    }


    public function my_view($view,$data_get)
    {
        $i=0;
        $data = $this->data_all();
        $data['data_get']=$data_get;
        foreach ($view as $key => $value) {
            if ($i==0) {
                $this->load->view($value,$data);
            }else{
                $this->load->view($value);
            }
        }
    }
    public function my_delete_file($folder)
    {
            //Get a list of all of the file names in the folder.
            $files = glob($folder . '/*');
            //Loop through the file list.
            foreach($files as $file){
                //Make sure that this is a file and not a directory.
                if(is_file($file)){
                    //Use the unlink function to delete the file.
                    unlink($file);
                }
            }
    }
    public function my_sidebar()
    {
        $group['name']  =   ($this->my_groups()['id'] == 1) ? "admin" : "general" ;
        return 'role/'.$group['name'].'/include/'.$this->config->item('sidebar_name');;
    }
    public function my_update($tabel, $data, $where)
    {
        return $this->mod->set_update($tabel, $data, $where);
    }
    public function my_where($tabel, $where, $limit=0)
    {
        return $this->mod->get_where($tabel, $where, $limit);
    }
    public function my_db_count($tabel, $where)
    {
        return $this->mod->get_where($tabel, $where)->num_rows();
    }
    public function get_user_account()
    {
        return $this->ion_auth->user()->row_array();
    }
    public function save_data($tabel, $data)
    {
        return $this->mod->save($tabel, $data);
    }
    public function save_media($data)
    {
        $config['upload_path']=$data['path'] ; //path folder file upload
        $config['allowed_types']='gif|jpg|png|jpeg|PNG|JPG|JPEG|pdf|doc|docx|xls|xlsx'; //type file yang boleh di upload
        $config['encrypt_name'] = TRUE; //enkripsi file name upload
         
        $this->load->library('upload',$config); //call library upload 
        if($this->upload->do_upload($data['filename'])){ //upload file
           
            return $this->upload->data(); 
        }

    }
    public function do_upload_img($data)
        {
                $config['upload_path']          = $data['path'];
                $config['allowed_types']        = 'gif|jpg|png|jpeg|PNG|JPG|JPEG';
                $config['max_size']             = 300;

                $this->load->library('upload', $config);
                $send = [];
                if ( ! $this->upload->do_upload($data['filename']))
                {
                       $send = [
                        'status' => 500,
                        'msg' => $this->upload->display_errors(),
                        'data' => []
                       ];   
                }
                else
                {
                        $send = [
                        'status' => 200,
                        'msg' => "Berhasil upload",
                        'data' => $this->upload->data()
                       ];  

                }
                return $send; 
        }
    public function generate_code($value='', $table = "")
    {
        $setting = [
            '{year}'    =>  date('y'),
            '{month}'   =>  date('m'),
            '{rand}'    =>  rand(0,9999),
            '{date_of_month}'     =>    date('d'),
            '{date}'    =>  date('dmY'),
            '{order_number}'    => $this->my_where($table, [])->num_rows() + 1,
            '{romawi_bulan}'    => $this->getRomawi(date('m')),  
            
               
        ];

        if($table !== "master_data_customer") {
            $setting['{last_number}'] = $this->db->query("SELECT 
                    CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(kode, '/', -1), '-', -1) AS UNSIGNED) + 1 AS next_number
                FROM 
                    ".$table."
                WHERE 
                    status_aktif = 1 
                ORDER BY 
                    id DESC
                LIMIT 1;")->row_array()['next_number'];
        }else{
            $setting['{last_number}'] = $this->db->query("SELECT 
                CONCAT( MAX(CAST(SUBSTRING(kode, 2) AS UNSIGNED)) + 1) AS next_number
            FROM 
                master_data_customer")->row_array()['next_number'];
        }
        
        if($table == "sales_order"){
            $setting['{order_number_ppn}'] = $this->my_where($table, ['is_ppn'=>1])->num_rows() + 1;
            $setting['{last_number_ppn}'] = $this->db->query("SELECT 
                    MAX(CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(kode, '/', -1), '-', -1) AS UNSIGNED)) + 1 AS next_number
                FROM 
                    sales_order
                WHERE 
                    status_aktif = 1 
                    AND is_ppn = 1
                ORDER BY 
                    id DESC
                LIMIT 1;")->row_array()['next_number'];
            $setting['{last_number_so}'] = $this->db->query("SELECT 
                           MAX(CAST(SUBSTRING_INDEX(kode, '/', -1) AS UNSIGNED)) + 1 AS next_number
                        FROM 
                            sales_order
                        WHERE 
                            status_aktif = 1 AND is_ppn = 0
                        ORDER BY 
                            id DESC
                        LIMIT 1;")->row_array()['next_number'];
        }
        return strtr($value, $setting);
    }
    function getRomawi($bln){

        switch ($bln){

                  case 1:

                      return "I";

                      break;

                  case 2:

                      return "II";

                      break;

                  case 3:

                      return "III";

                      break;

                  case 4:

                      return "IV";

                      break;

                  case 5:

                      return "V";

                      break;

                  case 6:

                      return "VI";

                      break;

                  case 7:

                      return "VII";

                      break;

                  case 8:

                      return "VIII";

                      break;

                  case 9:

                      return "IX";

                      break;

                  case 10:

                      return "X";

                      break;

                  case 11:

                      return "XI";

                      break;

                  case 12:

                      return "XII";

                      break;

            }

     }
    
    public function my_pdf($param)
    {
        /*
            param[
                'url',
                'customPaper',
                'data',
                'name',
                'pos' => 'landscape' / 'portrait'

            ];
        */
        
        $this->pdf->setPaper($param['customPaper'], $param['pos']);
        $this->pdf->load_view($param['url'], $param['data_value'], $param['name']);
        echo $param['name'];
        // print_r($param['data_value']);
    }

    function get_setting_table($table = "", $name = ""){
        return $this->my_where('setting_table', ['table'=>$table, 'name'=>$name])->row_array();
    }

    function kartu_stok_produk($data){
        return $this->save_data("kartu_stok_produk", $data);
    }

    
    function bot_wa($no_hp, $message, $table, $table_id, $from){ 

        // check spam

        $data_spam = $this->my_where('log_wa', ['tanggal'=>date('Y-m-d'),'no_hp'=>$this->formatNomorHP($no_hp), 'table'=> $table])->num_rows();

        if ($data_spam < 5) {
            // proses

            $curl = curl_init();

            curl_setopt_array($curl, array(
              CURLOPT_URL => 'localhost:5001/send-message',
              CURLOPT_RETURNTRANSFER => true,
              CURLOPT_ENCODING => '',
              CURLOPT_MAXREDIRS => 10,
              CURLOPT_TIMEOUT => 0,
              CURLOPT_FOLLOWLOCATION => true,
              CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
              CURLOPT_CUSTOMREQUEST => 'POST',
              CURLOPT_POSTFIELDS => 'message='.urlencode($message).'&number='.$this->formatNomorHP($no_hp),
              CURLOPT_HTTPHEADER => array(
                'Content-Type: application/x-www-form-urlencoded'
              ),
            ));

            $response = curl_exec($curl);

            curl_close($curl);


            // save logs to db
            $response_data = json_decode($response, true);

            // Cek apakah decoding berhasil dan response status adalah true
            if ($response_data && $response_data['status'] === true) {
                // Ambil status utama dari response
                $main_status = $response_data['status'];

                // Ambil status pesan (pending, delivered, dll.)
                $message_status = $response_data['response']['status'];

                // Tampilkan hasilnya atau lakukan tindakan lainnya
                echo "Status utama: " . ($main_status ? 'true' : 'false') . "<br>";
                echo "Status pesan: " . $message_status . "<br>";

                $data = [
                    'no_hp'         =>  $this->formatNomorHP($no_hp),
                    'msg'           =>  urlencode($message),
                    'table'         =>  $table,
                    'table_id'      =>  $table_id,
                    'status'        =>  ($main_status ? 'true' : 'false'),
                    'msg_status'    =>  $message_status,
                    'tanggal'       => date('Y-m-d'),
                    'from'    =>  $from,
                    'logs'          =>  '',
                ];

                $this->save_data('log_wa', $data);
            } else {
                // Tampilkan pesan error jika response tidak valid atau gagal
                // echo "Gagal mendapatkan status dari response";
            }
        }else{
            $data = [
                    'no_hp'         =>  $this->formatNomorHP($no_hp),
                    'msg'           =>  urlencode($message),
                    'table'         =>  $table,
                    'table_id'      =>  $table_id,
                    'status'        =>  'SKIPPED',
                    'tanggal'       => date('Y-m-d'),
                    'msg_status'    =>  '',
                    'from'          =>  $from,
                    'logs'          =>  '',
                ];

                $this->save_data('log_wa', $data);
        }
        
    }
    function formatNomorHP($nomor) {
        // Hapus spasi atau tanda minus (-) yang mungkin dimasukkan oleh pengguna
        $nomor = str_replace([' ', '-', '(', ')'], '', $nomor);

        // Jika nomor diawali dengan "08", ubah menjadi "628"
        if (substr($nomor, 0, 2) === '08') {
            $nomor = '628' . substr($nomor, 2);
        }
        // Jika nomor diawali dengan "+62", ubah menjadi "62"
        elseif (substr($nomor, 0, 3) === '+62') {
            $nomor = '62' . substr($nomor, 3);
        }

        return $nomor;
    }
}