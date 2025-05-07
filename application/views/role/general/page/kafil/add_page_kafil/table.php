<?php
    
    if (isset($data_get['santri']) && is_array($data_get['santri']) && count($data_get['santri']) > 0) {
        foreach ($data_get['santri'] as $key => $value) {
            echo "<tr>";
            echo "<td>".($key+1)."</td>";
            echo "<td>".$value['nama']."</td>";
            echo "<td>".$value['nama_asrama']."</td>";
            echo "<td><button class='btn btn-primary' onclick='tambahkafil(".$value['id'].")'><i class='icon-circle-right2'></i></button></td>";
            echo "</tr>";
        }
    }else{
        echo "<tr><td colspan='4'>Tidak ada data</td></tr>";
    }
?>