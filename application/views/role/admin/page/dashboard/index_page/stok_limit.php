<?php foreach ($data_get['stok_limit'] as $value): ?>	
	<a href="#" class="list-group-item">
		<i class="icon-cube"></i> <?= $value['kode'] ?> - <?= $value['nama'] ?> <span class="label bg-danger"> (<?= $value['qty'] ?>)</span>
	</a>
<?php endforeach ?>
<a href="Dashboard/all_stock_limit" class="list-group-item app-item">
	<i class="icon-arrow-right22"></i> Show all stock limit
</a>