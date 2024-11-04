<?php foreach ($data_get['top_spender'] as $value): ?>
	<a href="dashboard/detail_top_spender/<?= $value['customer_id'] ?>"  class="list-group-item app-item">
		<i class="icon-user-check"></i> <?= $value['kode_customer'] ?> - <?= $value['nama_customer'] ?>  <span class="label bg-primary-400">Rp. <?= number_format($value['jml_trn'], 0, '.','.') ?></span>
	</a>
<?php endforeach ?>
<a href="dashboard/all_top_spender"  class="list-group-item app-item">
	<i class="icon-arrow-right22"></i> Show all Top Spender
</a>