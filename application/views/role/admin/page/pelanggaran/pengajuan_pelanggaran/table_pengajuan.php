<?php foreach ($data_get['pengajuan'] as $key => $value) { ?>
    <div class="col-md-4">
        <div class="panel panel-default">
            <div class="panel-heading text-center">
                <h3 class="panel-title">
                    <strong>Kode: <?php echo $value['kode']; ?></strong>
                </h3>
                <!-- Tambahkan Status -->
                <!-- <p> -->
                    <?php if ($value['status_pengajuan'] === 'BELUM DIPROSES') { ?>
                        <span class="label label-warning">Belum diproses</span>
                    <?php } elseif ($value['status_pengajuan'] === 'DITERIMA') { ?>
                        <span class="label label-success">Diterima</span>
                    <?php } elseif ($value['status_pengajuan'] === 'DITOLAK') { ?>
                        <span class="label label-danger">Ditolak</span>
                    <?php } ?>
                <!-- </p> -->
            </div>
            <div class="panel-body">
                <p><strong>Tanggal:</strong> <?php echo date('d-m-Y', strtotime($value['tanggal'])); ?></p>
                <p><strong>Nama Santri:</strong> <?php echo $value['nama_santri']; ?></p>
                <p><strong>Pelanggaran:</strong> <?php echo $value['pelanggaran']; ?></p>
                <p><strong>Nama Pelapor:</strong> <?php echo $value['nama_pelapor']; ?></p>
            </div>
            <div class="panel-footer text-center">
                <a href="Pelanggaran/change_pengajuan/<?= $value['id']; ?>" class="app-item btn btn-primary btn-sm">
                    <i class="icon-magazine"></i> Detail
                </a>
                <button class="btn btn-danger btn-sm">
                    <i class="icon-close2"></i> Tolak/Hapus
                </button>
            </div>
        </div>
    </div>
<?php } ?>
