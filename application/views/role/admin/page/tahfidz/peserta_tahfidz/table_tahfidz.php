<?php
   if (isset($data_get['peserta_tahfidz']) && is_array($data_get['peserta_tahfidz']) && count($data_get['peserta_tahfidz']) > 0) {
        foreach ($data_get['peserta_tahfidz'] as $key => $value) {
            echo "<tr>";
            echo "<td>".($key+1)."</td>";
            echo "<td>".$value['nama']."</td>";
            echo "<td>".$value['tahfidz']."</td>";
            echo "<td><button class='btn btn-danger' onclick='hapus_santri(".$value['id'].")'><i class='icon-close2'></i></button></td>";
            echo "</tr>";
        }
    }else{
        echo "<tr><td colspan='4'>Tidak ada data</td></tr>";
    }
?>