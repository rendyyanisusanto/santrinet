<?php
   if (isset($data_get['asatid']) && is_array($data_get['asatid']) && count($data_get['asatid']) > 0) {
        foreach ($data_get['asatid'] as $key => $value) {
            echo "<tr>";
            echo "<td>".($key+1)."</td>";
            echo "<td>".$value['nama']."</td>";
            echo "<td><button class='btn btn-danger' onclick='hapus_asatid(".$value['id'].")'><i class='icon-close2'></i></button></td>";
            echo "</tr>";
        }
    }else{
        echo "<tr><td colspan='4'>Tidak ada data</td></tr>";
    }
?>