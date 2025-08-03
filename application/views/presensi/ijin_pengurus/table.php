<div class="col-md-12">
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-hover align-middle">
            <thead class="table-dark text-center">
                <tr>
                    <th>Nama Pengurus</th>
                    <th>Ijin Keluar</th>
                    <th>Ijin Kembali</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($presence as $key => $value): ?>
                    <tr>
                        <td class="fw-bold"><?php echo $value['nama_pengurus'] ?></td>
                        <td class="text-center fw-semibold">
                            <?php echo $value['ijin_keluar'] ? date('H:i:s', strtotime($value['ijin_keluar'])) : '-' ?>
                        </td>
                        <td class="text-center fw-semibold">
                            <?php echo $value['ijin_kembali'] ? date('H:i:s', strtotime($value['ijin_kembali'])) : '-' ?>
                        </td>
                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>
</div>
