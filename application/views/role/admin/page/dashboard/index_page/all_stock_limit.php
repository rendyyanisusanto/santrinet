<div class="row">
	<div class="col-md-6">
		<div class="panel panel-body">

			<center><h4><b>All Stock Limit</b></h4></center>
			<?php foreach ($data_get['stok_limit'] as $value): ?>	
				<a href="#" class="list-group-item">
					<i class="icon-file-word"></i> <?= $value['kode'] ?> - <?= $value['nama'] ?> <span class="label bg-danger"> (<?= $value['qty'] ?>)</span>
				</a>
			<?php endforeach ?>

			
		<hr>
		<button class="btn btn-danger" type="button" onclick="window.history.back();"><i class="icon-arrow-left7"></i>  Kembali</button>
		</div>
	</div>	
</div>