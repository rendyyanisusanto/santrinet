
<style type="text/css">
	tr.noBorder td {
	  border: 0;
	}
	table {
		font-size: 12px !important;
		font-family: "arial";
	}
</style>
<style>
    .date-separator {
        background-color: rgba(200, 200, 200, 0.2); /* Warna transparan sebagai pembatas */
    }
    .total-row {
        font-weight: bold;
        background-color: rgba(100, 100, 255, 0.1); /* Warna lebih gelap untuk total */
    }
</style>
<div class="panel">
    <div class="panel-heading">
                    <div class="panel-title">
                        <b class="title-jadwal">Laporan Selama Seminggu Terakhir</b>
                    </div>
                    <!-- <div class="heading-elements">
                        <div class="heading-btn">
                            <button type="button" class="btn btn-danger btn-pdf  btn-icon" onclick="print_pdf('<?= $data_get['mulai']?>', '<?= $data_get['sampai'] ?>');"><i class="icon-file-pdf"></i></button>
                            <button type="button" class="btn btn-success btn-excel btn-icon" onclick="print_excel('<?= $data_get['mulai']?>', '<?= $data_get['sampai'] ?>');"><i class="icon-file-excel"></i></button>
                            <button type="button" class="btn btn-info btn-print btn-icon" onclick="print('<?= $data_get['mulai']?>', '<?= $data_get['sampai'] ?>');"><i class="icon-printer"></i></button>
                        </div>
                    </div> -->
                </div>
    <div class="panel-body">
        <div class="panel-body" style='max-height: 500px; overflow-y: auto; border: 1px solid #ccc;'>
            <div class="row">
                <div class="col-md-4">
                    <table  class="table table-bordered table-framed table-xxs" cellpadding="5" cellspacing="0">
                        <thead>
                            <tr class="bg-slate-700">
                                <th>Tanggal</th>
                                <th>Jenis</th>
                                <th>Jumlah</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data_get['stats'] as $tanggal => $data_tanggal): ?>
                                <?php $rowspan = count($data_tanggal['records']); ?>
                                <!-- Baris pertama untuk tanggal -->
                                <tr >
                                    <td rowspan="<?= $rowspan + 1; ?>"><a onclick="detail_rm_tanggal('<?php echo $tanggal ?>');"><?= date('d/m/Y', strtotime($tanggal)); ?></a></td>
                                    <td><a style="color:black;"  onclick="detail_rm_tanggal('<?php echo $tanggal ?>');"><?= $data_tanggal['records'][0]['status_rekam_medis']; ?></a></td>
                                    <td><?= $data_tanggal['records'][0]['jumlah']; ?></td>
                                    <td rowspan="<?= $rowspan + 1; ?>" class="total-row"><?= $data_tanggal['total']; ?></td>
                                </tr>
                                <!-- Baris berikutnya untuk jenis dan jumlah -->
                                <?php for ($i = 1; $i < $rowspan; $i++): ?>
                                    <tr>
                                        <td><a style="color:black;" onclick="detail_rm_tanggal('<?php echo $tanggal ?>');"><?= $data_tanggal['records'][$i]['status_rekam_medis']; ?></a></td>
                                        <td><?= $data_tanggal['records'][$i]['jumlah']; ?></td>
                                    </tr>
                                <?php endfor; ?>
                                <!-- Baris pemisah untuk setiap tanggal -->
                                <tr class="date-separator"><td colspan="3"></td></tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-8">
                    <div id="chart-container" style="width: 100%; height: 500px;"></div>
                </div>
            </div>
            
        </div>
    </div>
</div>