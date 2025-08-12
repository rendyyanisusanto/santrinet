<?php if (!empty($data_get['list'])): ?>
<div class="table-responsive">
    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <th style="width: 1%;">#</th>
                <th>NIP</th>
                <th>Nama</th>
                <th>Keterangan</th>
                <th style="width: 15%;">Waktu Keluar</th>
                <th style="width: 15%;">Waktu Kembali</th>
                <th style="width: 5%;">Status</th>
                <th style="width: 5%;">Konfirmasi Keluar</th>
                <th style="width: 5%;">Konfirmasi Kembali</th>
                <th style="width: 1%;">#</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data_get['list'] as $i => $row): 
                $konfirmasi_keluar = $row['status_konfirmasi_keluar'] == 'TERKONFIRMASI' ? 1 : 0;    
                $konfirmasi_kembali = $row['status_konfirmasi_kembali'] == 'TERKONFIRMASI' ? 1 : 0;    
            ?>
            <tr>
                <td><?= $i + 1 ?></td>
                <td><?= $row['nip'] ?></td>
                <td><?= $row['nama'] ?></td>
                <td><?= $row['keterangan'] ?></td> 
                <td><?= date("d-m-Y H:i:s", strtotime($row['waktu_keluar']))  ?></td>
                <td><?= ($row['waktu_kembali'] == '') ? "<b class='text-danger'>Belum Kembali<b>" : date("d-m-Y H:i:s", strtotime($row['waktu_kembali']))  ?></td>
                <td>
                    <?php if ($row['status'] == 'KELUAR'): ?>
                        <span class="label label-danger"><?= $row['status'] ?></span>
                    <?php elseif ($row['status'] == 'KEMBALI'): ?>
                        <span class="label label-success"><?= $row['status'] ?></span>
                    <?php else: ?>
                        <span class="label label-default"><?= $row['status'] ?></span>
                    <?php endif; ?>
                </td>
                <td>
                    <?php if ($row['status_konfirmasi_keluar'] == 'TERKONFIRMASI'): ?>
                        <span class="label label-success">Terkonfirmasi</span>
                    <?php else: ?>
                        <span class="label label-warning">Belum Dikonfirmasi</span>
                    <?php endif; ?>
                </td>
                <td>
                    <?php if ($row['status_konfirmasi_kembali'] == 'TERKONFIRMASI'): ?>
                        <span class="label label-success">Terkonfirmasi</span>
                    <?php else: ?>
                        <span class="label label-warning">Belum Dikonfirmasi</span>
                    <?php endif; ?>
                </td>
                <td>
                    <button class="btn btn-success btn-sm" type="button" onclick="change_status(<?= $row['id'] ?>, <?= $konfirmasi_keluar ?>, <?= $konfirmasi_kembali ?>);"><i class="icon-pencil"></i></button>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<?php else: ?>
<div class="alert alert-warning">
    Tidak ada data ijin pengurus pada tanggal ini.
</div>
<?php endif; ?>
