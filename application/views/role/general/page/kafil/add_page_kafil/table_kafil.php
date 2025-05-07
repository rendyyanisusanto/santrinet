<?php
   if (isset($data_get['kafil']) && is_array($data_get['kafil']) && count($data_get['kafil']) > 0) {
        foreach ($data_get['kafil'] as $key => $value) {
            echo "<tr>";
            echo "<td>".($key+1)."</td>";
            echo "<td>".$value['nama']."</td>";
            echo "<td><button class='btn btn-danger' onclick='hapus_kafil(".$value['id'].")'><i class='icon-close2'></i></button></td>";
            echo "</tr>";
        }
    }else{
        echo "<tr><td colspan='4'>Tidak ada data</td></tr>";
    }
?>