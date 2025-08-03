
<div class="table-responsive">
    <table class="table table-bordered table-hover align-middle">
        <thead class="table-secondary text-center">
            <tr>
                <th>Nama Pengurus</th>
                <th>Status</th>
                <th>Waktu</th>
            </tr>
        </thead>
        <tbody>
            <?php if (empty($presence)): ?>
                <tr>
                    <td colspan="3" class="text-center text-muted">Belum ada aktivitas hari ini.</td>
                </tr>
            <?php else: ?>
                <?php foreach ($presence as $act): ?>
                    <tr>
                        <td><?php echo $act['nama_pengurus'] ?></td>
                        <td class="text-center">
                            <span class="badge bg-<?php echo $act['status'] == 'KELUAR' ? 'warning text-dark' : 'success' ?>">
                                <?php echo $act['status'] ?>
                            </span>
                        </td>
                        <td class="text-center">
                            <?php echo date('H:i:s', strtotime($act['waktu'])) ?>
                        </td>
                    </tr>
                <?php endforeach ?>
            <?php endif ?>
        </tbody>
    </table>
</div>