<div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <strong><i class="icon-user"></i> Profil Santri: <?= $data_get['data_edit']['nama'] ?></strong>
            </div>
            <div class="panel-body">
                <div class="row" style="display: flex; align-items: center;">
                    <!-- Foto Profil -->
                    <div class="col-sm-3 text-center">
                        <?php if (!empty($data_get['data_edit']['foto'])): ?>
                            <img src="<?= $data_get['data_edit']['foto'] ?>" style="max-width: 200px"  class="img-thumbnail img-responsive" alt="Foto Santri">
                        <?php else: ?>
                            <img src="<?= base_url('inc/media/no_image.jpg') ?>" class="img-thumbnail img-responsive"  style="max-width: 200px" alt="Foto Santri">
                        <?php endif; ?>
                        <h4 style="margin-top:10px;"><strong><?= $data_get['data_edit']['nama'] ?></strong></h4>
                        <span class="label label-info"><?= $data_get['data_edit']['jenis_kelamin'] == 'L' ? 'Laki-laki' : 'Perempuan' ?></span>
                        <br>
                        <span class="label label-success" style="margin-top:5px; display:inline-block;"><?= $data_get['data_edit']['status_santri'] ?></span>
                    </div>

                    <!-- Biodata -->
                    <div class="col-sm-9">
                        <h4 class="text-muted" style="margin-bottom: 20px;"><strong><span class="icon-info"></span> Informasi Lengkap</strong></h4>
                        <table class="table table-hover table-bordered table-striped custom-table">
                            <tbody>
                                <tr><th>NIS</th><td><?= $data_get['data_edit']['nis'] ?></td></tr>
                                <tr><th>Tempat, Tgl Lahir</th><td><?= $data_get['data_edit']['tempat_lahir'] . ', ' . $data_get['data_edit']['tanggal_lahir'] ?></td></tr>
                                <tr><th>Alamat</th><td><?= $data_get['data_edit']['alamat'] ?></td></tr>
                                <tr><th>Nama Ayah</th><td><?= $data_get['data_edit']['nama_ayah'] ?></td></tr>
                                <tr><th>No HP Ayah</th><td><?= $data_get['data_edit']['no_hp_ayah'] ?></td></tr>
                                <tr><th>Nama Ibu</th><td><?= $data_get['data_edit']['nama_ibu'] ?></td></tr>
                                <tr><th>No HP Ibu</th><td><?= $data_get['data_edit']['no_hp_ibu'] ?></td></tr>
                                <?php if (!empty($data_get['data_edit']['nama_wali'])): ?>
                                <tr><th>Nama Wali</th><td><?= $data_get['data_edit']['nama_wali'] ?></td></tr>
                                <tr><th>No HP Wali</th><td><?= $data_get['data_edit']['no_hp_wali'] ?></td></tr>
                                <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Pembatas -->
                <hr style="border-top: 2px solid #337ab7; margin: 30px 0 20px;">

                <!-- Tabs Data Tambahan -->
                <ul class="nav nav-tabs" role="tablist" style="margin-bottom: 15px;">
                    <li class="active"><a href="#pelanggaran" role="tab" data-toggle="tab"><span class="icon-warning"></span> Pelanggaran</a></li>
                    <li><a href="#perizinan" role="tab" data-toggle="tab"><span class="icon-exit"></span> Perizinan</a></li>
                    <li><a href="#tahfidz" role="tab" data-toggle="tab"><span class="icon-book"></span> Buku Tahfidz</a></li>
                    <li><a href="#medis" role="tab" data-toggle="tab"><span class="icon-aid"></span> Rekam Medis</a></li>
                </ul>

                <div class="tab-content">
                    <!-- Pelanggaran -->
                    <div class="tab-pane active" id="pelanggaran">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr><th>Kode</th><th>Tanggal</th><th>Takzir</th><th>Status Takzir</th><th>Kronologi</th></tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($data_get['pelanggaran'] as $p): ?>
                                            <tr>
                                                <td><?= $p['kode'] ?></td>
                                                <td><?= $p['tanggal'] ?></td>
                                                <td><?= $p['takzir'] ?></td>
                                                <td><?= $p['status_takzir'] ?></td>
                                                <td><?= $p['kronologi'] ?></td>
                                            </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Perizinan -->
                    <div class="tab-pane" id="perizinan">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr><th>Kode</th><th>Tanggal Izin</th><th>Tanggal Kembali</th><th>Jenis</th><th>Alasan</th></tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($data_get['perizinan_santri'] as $izin): ?>
                                            <tr>
                                                <td><?= $izin['kode'] ?></td>
                                                <td><?= $izin['tanggal_izin'] ?></td>
                                                <td><?= $izin['tanggal_kembali'] ?></td>
                                                <td><?= $izin['jenis_izin'] ?></td>
                                                <td><?= $izin['alasan'] ?></td>
                                            </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Buku Tahfidz -->
                    <div class="tab-pane" id="tahfidz">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr><th>Tanggal</th><th>Jenis</th><th>Juz</th><th>Ayat</th><th>Nilai</th><th>Catatan</th></tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($data_get['buku_tahfidz'] as $tahfidz): ?>
                                            <tr>
                                                <td><?= $tahfidz['tanggal'] ?></td>
                                                <td><?= $tahfidz['jenis'] ?></td>
                                                <td><?= $tahfidz['juz'] ?></td>
                                                <td><?= $tahfidz['ayat_awal'] ?> - <?= $tahfidz['ayat_akhir'] ?></td>
                                                <td><?= $tahfidz['nilai'] ?></td>
                                                <td><?= $tahfidz['catatan'] ?></td>
                                            </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Rekam Medis -->
                    <div class="tab-pane" id="medis">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr><th>Tanggal</th><th>Diagnosis</th><th>Lama Sakit</th><th>Catatan</th></tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($data_get['rekam_medis'] as $rm): ?>
                                            <tr>
                                                <td><?= $rm['tanggal'] ?></td>
                                                <td><?= $rm['diagnosis'] ?></td>
                                                <td><?= $rm['lama_sakit'] ?> hari</td>
                                                <td><?= $rm['catatan'] ?></td>
                                            </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- tab-content -->
            </div>
        </div>
    </div>
</div>
