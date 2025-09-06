<?php if (!empty($data_get['list'])): ?>
<div class="alert alert-info">
    <i class="icon-info22"></i> 
    <strong>Menampilkan <?= $data_get['total'] ?> data</strong> sesuai filter yang dipilih.
</div>

<div class="table-responsive">
    <table class="table table-bordered table-striped table-hover">
        <thead class="thead-dark">
            <tr>
                <th style="width: 1%;" class="text-center">#</th>
                <th style="width: 8%;">NIP</th>
                <th style="width: 15%;">Nama</th>
                <th style="width: 20%;">Keterangan</th>
                <th style="width: 12%;">Waktu Keluar</th>
                <th style="width: 12%;">Waktu Kembali</th>
                <th style="width: 8%;" class="text-center">Status</th>
                <th style="width: 10%;" class="text-center">Konfirmasi</th>
                <th style="width: 14%;" class="text-center">Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data_get['list'] as $i => $row): 
                $konfirmasi_keluar = $row['status_konfirmasi_keluar'] == 'TERKONFIRMASI' ? 1 : 0;    
                $konfirmasi_kembali = $row['status_konfirmasi_kembali'] == 'TERKONFIRMASI' ? 1 : 0;    
                
                // Hitung durasi keluar jika sudah kembali
                $durasi = '';
                if ($row['waktu_kembali']) {
                    $keluar = new DateTime($row['waktu_keluar']);
                    $kembali = new DateTime($row['waktu_kembali']);
                    $diff = $keluar->diff($kembali);
                    
                    $durasi_parts = [];
                    if ($diff->d > 0) $durasi_parts[] = $diff->d . ' hari';
                    if ($diff->h > 0) $durasi_parts[] = $diff->h . ' jam';
                    if ($diff->i > 0) $durasi_parts[] = $diff->i . ' menit';
                    $durasi = implode(', ', $durasi_parts);
                }
            ?>
            <tr class="<?= $row['status'] == 'KELUAR' ? 'warning' : ($row['status'] == 'KEMBALI' ? 'success' : '') ?>">
                <td class="text-center"><?= $i + 1 ?></td>
                <td>
                    <strong><?= $row['nip'] ?></strong>
                </td>
                <td>
                    <strong><?= $row['nama'] ?></strong>
                    <?php if ($row['updated_at']): ?>
                        <br><small class="text-muted">
                            <i class="icon-clock"></i> Update: <?= date("d/m/Y H:i", strtotime($row['updated_at'])) ?>
                        </small>
                    <?php endif; ?>
                </td>
                <td>
                    <div class="text-wrap">
                        <?= nl2br(htmlspecialchars($row['keterangan'])) ?>
                        <?php if (!empty($row['keterangan_admin'])): ?>
                            <hr style="margin: 5px 0;">
                            <small class="text-info">
                                <i class="icon-user-tie"></i> <strong>Admin:</strong><br>
                                <?= nl2br(htmlspecialchars($row['keterangan_admin'])) ?>
                            </small>
                        <?php endif; ?>
                    </div>
                </td>
                <td>
                    <strong><?= date("d/m/Y", strtotime($row['waktu_keluar'])) ?></strong><br>
                    <small class="text-muted"><?= date("H:i:s", strtotime($row['waktu_keluar'])) ?></small>
                </td>
                <td>
                    <?php if ($row['waktu_kembali']): ?>
                        <strong><?= date("d/m/Y", strtotime($row['waktu_kembali'])) ?></strong><br>
                        <small class="text-muted"><?= date("H:i:s", strtotime($row['waktu_kembali'])) ?></small>
                        <?php if ($durasi): ?>
                            <br><small class="text-success">
                                <i class="icon-clock"></i> <?= $durasi ?>
                            </small>
                        <?php endif; ?>
                    <?php else: ?>
                        <span class="text-danger">
                            <i class="icon-cross"></i> <strong>Belum Kembali</strong>
                        </span>
                    <?php endif; ?>
                </td>
                <td class="text-center">
                    <?php if ($row['status'] == 'KELUAR'): ?>
                        <span class="label label-danger">
                            <i class="icon-exit"></i> KELUAR
                        </span>
                    <?php elseif ($row['status'] == 'KEMBALI'): ?>
                        <span class="label label-success">
                            <i class="icon-enter"></i> KEMBALI
                        </span>
                    <?php else: ?>
                        <span class="label label-default">
                            <i class="icon-help"></i> <?= $row['status'] ?>
                        </span>
                    <?php endif; ?>
                </td>
                <td class="text-center">
                    <?php if ($row['status_konfirmasi_keluar'] == 'TERKONFIRMASI'): ?>
                        <span class="label label-success">
                            <i class="icon-checkmark"></i> Terkonfirmasi
                        </span>
                    <?php else: ?>
                        <span class="label label-warning">
                            <i class="icon-alarm"></i> Belum Dikonfirmasi
                        </span>
                    <?php endif; ?>
                </td>
                <td class="text-center">
                    <div class="btn-group btn-group-xs">
                        <!-- Tombol Konfirmasi Status -->
                        <button class="btn btn-info" 
                                type="button" 
                                onclick="konfirmasi_status(<?= $row['id'] ?>, '<?= addslashes($row['nama']) ?>', '<?= $row['nip'] ?>', '<?= addslashes($row['keterangan']) ?>', <?= $konfirmasi_keluar ?>)"
                                title="Konfirmasi Status">
                            <i class="icon-checkmark4"></i>
                        </button>
                        
                        <!-- Tombol Edit -->
                        <button class="btn btn-primary" 
                                type="button" 
                                onclick="edit_data(<?= $row['id'] ?>)"
                                title="Edit Data">
                            <i class="icon-pencil"></i>
                        </button>
                        
                        <!-- Tombol Hapus -->
                        <button class="btn btn-danger" 
                                type="button" 
                                onclick="hapus_data(<?= $row['id'] ?>, '<?= addslashes($row['nama']) ?>')"
                                title="Hapus Data">
                            <i class="icon-trash"></i>
                        </button>
                    </div>
                    
                    <!-- Info tambahan untuk mobile -->
                    <div class="visible-xs-block" style="margin-top: 5px;">
                        <small class="text-muted">
                            Dibuat: <?= date("d/m/Y H:i", strtotime($row['created_at'])) ?>
                        </small>
                    </div>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<!-- Summary Statistics -->
<div class="row" style="margin-top: 15px;">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h6 class="panel-title">
                    <i class="icon-stats-bars"></i> Ringkasan Data
                </h6>
            </div>
            <div class="panel-body">
                <?php 
                $total_keluar = 0;
                $total_kembali = 0;
                $total_terkonfirmasi = 0;
                $total_belum_konfirmasi = 0;
                
                foreach ($data_get['list'] as $item) {
                    if ($item['status'] == 'KELUAR') $total_keluar++;
                    if ($item['status'] == 'KEMBALI') $total_kembali++;
                    if ($item['status_konfirmasi_keluar'] == 'TERKONFIRMASI') $total_terkonfirmasi++;
                    if ($item['status_konfirmasi_keluar'] == 'BELUM DIKONFIRMASI') $total_belum_konfirmasi++;
                }
                ?>
                
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="text-center">
                            <h3 class="text-primary"><?= $data_get['total'] ?></h3>
                            <p class="text-muted">Total Data</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="text-center">
                            <h3 class="text-danger"><?= $total_keluar ?></h3>
                            <p class="text-muted">Masih Keluar</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="text-center">
                            <h3 class="text-success"><?= $total_kembali ?></h3>
                            <p class="text-muted">Sudah Kembali</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="text-center">
                            <h3 class="text-warning"><?= $total_belum_konfirmasi ?></h3>
                            <p class="text-muted">Belum Konfirmasi</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php else: ?>
<div class="alert alert-warning text-center">
    <i class="icon-info22"></i> 
    <strong>Tidak ada data yang ditemukan</strong><br>
    <small>Silakan ubah filter pencarian atau tambah data baru</small>
</div>

<!-- Quick Actions untuk data kosong -->
<div class="text-center" style="margin-top: 20px;">
    <button onclick="tambah_data();" class="btn btn-success">
        <i class="icon-plus3"></i> Tambah Data Ijin Baru
    </button>
    <button onclick="reset_filter();" class="btn btn-default">
        <i class="icon-reload-alt"></i> Reset Filter
    </button>
</div>
<?php endif; ?>