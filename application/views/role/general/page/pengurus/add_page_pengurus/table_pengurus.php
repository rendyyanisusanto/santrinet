<?php
   if (isset($data_get['pengurus']) && is_array($data_get['pengurus']) && count($data_get['pengurus']) > 0) {
        foreach ($data_get['pengurus'] as $key => $value) {
            echo "<tr>";
            echo "<td>".($key+1)."</td>";
            echo "<td>".$value['nama']."</td>";
            echo "<td>".$value['lembaga']."</td>";
            echo "<td><button class='btn btn-danger' onclick='hapus_pengurus(".$value['id'].")'><i class='icon-close2'></i></button></td>";
            echo "</tr>";
        }
    }else{
        echo "<tr><td colspan='4'>Tidak ada data</td></tr>";
    }
?>