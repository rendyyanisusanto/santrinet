<?php defined('BASEPATH') OR exit('No direct script access allowed'); 
class Migration_Master_Data_Kota extends CI_Migration { 
    public function up() { 
        $this->dbforge->add_field([
            'id' => [
                'type' => 'INT',
                'constraint'=>11,
                'unsigned' => true,
                'auto_increment' => true
            ],
            'kode' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
            ],
            'nama' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
            ],
            'master_data_provinsi_id' => [
                'type' => 'INT',
                'constraint'=>11,
                'unsigned' => true,
            ]
        ]);
        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->create_table('master_data_kota');
    }

    public function down()
    {
        $this->dbforge->drop_table('master_data_kota');
    }
}