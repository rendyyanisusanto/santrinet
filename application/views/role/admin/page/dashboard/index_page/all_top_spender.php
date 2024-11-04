<div class="row">
	<div class="col-md-6">
		<div class="panel panel-body">

			<center><h4><b>All Top Spender</b></h4></center>
			<?php foreach ($data_get['top_spender'] as $value): ?>
				<a href="dashboard/detail_top_spender/<?= $value['customer_id'] ?>"  class="list-group-item app-item">
		<i class="icon-user-check"></i> <?= $value['kode_customer'] ?> - <?= $value['nama_customer'] ?>  <span class="label bg-primary-400">Rp. <?= number_format($value['jml_trn'], 0, '.','.') ?></span>
				</a>
			<?php endforeach ?>

			
		<hr>
		<button class="btn btn-danger" type="button" onclick="window.history.back();"><i class="icon-arrow-left7"></i>  Kembali</button>
		</div>
	</div>	
</div>