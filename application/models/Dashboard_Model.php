<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_Model extends CI_Model
{

    function get_menu(){
        $menu = $this->db->query("SELECT menu.id AS menu_id, menu.menu AS menu_nama, submenu.link,submenu.status_aktif, submenu.icon , submenu.submenu AS submenu_nama
        FROM menu
        LEFT JOIN submenu ON menu.id = submenu.menu_id
        ORDER BY menu.id, submenu.id")->result_array();
        $menus = [];
        foreach ($menu as $key=>$item) {
            $menus[$item['menu_id']]['menu_nama'] = $item['menu_nama'];
            if (!empty($item['submenu_nama'])) {
                if($item['status_aktif'] == 1){
                $menus[$item['menu_id']]['submenus'][$key]['nama'] = $item['submenu_nama'];
                $menus[$item['menu_id']]['submenus'][$key]['link'] = $item['link'];
                $menus[$item['menu_id']]['submenus'][$key]['icon'] = $item['icon'];
                }
            }
        }
        return $menus;
    }

}