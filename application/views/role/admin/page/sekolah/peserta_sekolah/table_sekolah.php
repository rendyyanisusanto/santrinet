<?php
   if (isset($data_get['peserta_sekolah']) && is_array($data_get['peserta_sekolah']) && count($data_get['peserta_sekolah']) > 0) {
        foreach ($data_get['peserta_sekolah'] as $key => $value) {
            echo "<tr>";
            echo "<td>".($key+1)."</td>";
            echo "<td>".$value['nama']."</td>";
            echo "<td>".$value['sekolah']."</td>";
            echo "<td><button class='btn btn-danger' onclick='hapus_siswa(".$value['id'].")'><i class='icon-close2'></i></button></td>";
            echo "</tr>";
        }
    }else{
        echo "<tr><td colspan='4'>Tidak ada data</td></tr>";
    }
?>