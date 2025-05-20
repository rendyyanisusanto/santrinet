<?php
   if (isset($data_get['alumni']) && is_array($data_get['alumni']) && count($data_get['alumni']) > 0) {
        foreach ($data_get['alumni'] as $key => $value) {
            echo "<tr>";
            echo "<td>".($key+1)."</td>";
            echo "<td>".$value['nama']."</td>";
            echo "<td>".$value['tahun_lulus']."</td>";
            echo "<td><button class='btn btn-danger' onclick='hapus_alumni(".$value['id'].")'><i class='icon-close2'></i></button></td>";
            echo "</tr>";
        }
    }else{
        echo "<tr><td colspan='4'>Tidak ada data</td></tr>";
    }
?>