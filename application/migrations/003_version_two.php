<?php defined('BASEPATH') OR exit('No direct script access allowed'); 
class Migration_Version_Two extends CI_Migration { 
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
            'no_hp' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
            ],
            'master_data_kota_id' => [
                'type' => 'INT',
                'constraint'=>11,
                'unsigned' => true,
            ],
            'alamat' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'email' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
            ],
            'deskripsi' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            'status' => [
                'type' => 'TINYINT',
                'constraint' => 1
            ],
            'created_at timestamp default current_timestamp',
            'created_by' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => true,
            ],
            'updated_at timestamp default current_timestamp on update current_timestamp',
            'updated_by' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => true,
            ],

        ]);
        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->create_table('master_data_suplier');

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
            

        ]);
        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->create_table('master_data_provinsi');


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
        $this->dbforge->drop_table('master_data_suplier');
        $this->dbforge->drop_table('master_data_provinsi');
        $this->dbforge->drop_table('master_data_kota');
    }
}