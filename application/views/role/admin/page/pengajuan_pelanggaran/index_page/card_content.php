<?php
foreach ($data_get['data'] as $key => $value) {
    ?>
        <div class="col-xs-6 col-sm-4 col-md-2">
            <div class="card-siswa">
                <img src="<?= base_url('inc/media/pelanggaran/'.$value['foto'])?>" alt="Foto Siswa">
                <h5 style="font-weight: bold;"><?= $value['nama']?></h5>
                <p><?= $value['pelanggaran']?></p>
                <a href="#" class="btn btn-info btn-xs"><i class="icon-eye"></i></a>
                <a href="#" class="btn btn-warning btn-xs"><i class="icon-pencil3"></i></a>
                <a href="#" class="btn btn-danger btn-xs"><i class="icon-close2"></i></a>
            </div>
        </div>
    <?php
}
?>