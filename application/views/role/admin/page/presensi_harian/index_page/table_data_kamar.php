
<div class="table-responsive">
    <table class="table table-bordered table-striped table-sm table-hover">
        <thead class="bg-primary text-white">
            <th width="10%">Tanggal</th>
            <th>Kamar</th>
            <?php
                foreach ($data_get['jadwal_presensi'] as $key => $value) {
                    ?>
                        <th width="5%"><?= $value['waktu_presensi']?></th>
                    <?php
                }
            ?>
        </thead>
        <tbody>
            <?php
                foreach ($data_get['jadwal_kamar'] as $key => $value) {
                    ?>
                        <tr>
                            <td><?= $value['tanggal']?></td>
                            <td><?= $data_get['kamar']['nama']?></td>
                            <?php
                                foreach ($value['status_presensi'] as $key_presensi => $value_presensi) {
                                    ?>
                                        <td>
                                            <?php 
                                                if ($value_presensi['total'] > 0) {
                                                    echo '<a href="Presensi_harian/proses_absen/'.$value['tanggal'].'/'.$data_get['kamar']['id'].'/'.$value_presensi['data']['id'].'" class="app-item btn btn-success btn-sm"><i class="icon-checkmark"></i></a>';
                                                } else {
                                                    echo '<a href="Presensi_harian/proses_absen/'.$value['tanggal'].'/'.$data_get['kamar']['id'].'/'.$value_presensi['data']['id'].'" class="app-item btn btn-danger btn-sm"><i class="icon-cross"></i></a>';
                                                }
                                            ?>
                                        </td>
                                    <?php
                                }
                            ?>
                        </tr>
                    <?php
                }
            ?>
        </tbody>
    </table>
</div>