<?php foreach ($data_get['sales_order'] as $value): ?>
<a href="sales_order/nota/<?= $value['id'] ?>" class="list-group-item app-item">
	<i class="icon-stack4"></i> <?= $value['kode'] ?> - <?= $value['nama_customer'] ?> (Rp. <?= number_format($value['total'] , 0, '.','.') ?>)
	<?php if ($value['status'] == 0){ ?>
	<span class="label bg-success-400">Transaksi Selesai</span>
	<?php }else{
	?>
	<span class="label bg-warning-400">Transaksi Belum Selesai</span>
	<?php
	} ?>
</a>
<?php endforeach ?>
<a href="Sales_order/get_data" class="list-group-item app-item">
	<i class="icon-arrow-right22"></i> Show all Trans
</a>