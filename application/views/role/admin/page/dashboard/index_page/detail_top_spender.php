<div class="row">
	<div class="panel panel-body">
		<div class="row">
			<div class="col-md-4">
				<b>Data Customer</b>
				<br>
				<input type="hidden" class="cust-id" value="<?= $data_get['customer']['id'] ?>" name="">
				<table class="table table-xxs table-framed">
					<tr>
						<td>Kode</td>
						<td width="1%">:</td>
						<td><?= $data_get['customer']['kode'] ?></td>
					</tr>
					<tr>
						<td>Nama</td>
						<td width="1%">:</td>
						<td><?= $data_get['customer']['nama'] ?></td>
					</tr>
					<tr>
						<td>No. HP</td>
						<td width="1%">:</td>
						<td><?= $data_get['customer']['no_hp'] ?></td>
					</tr>
					<tr>
						<td>Alamat</td>
						<td width="1%">:</td>
						<td><?= $data_get['customer']['alamat'] ?></td>
					</tr>
				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<hr>
				<br>
				<div style="background: gray; padding:1%;">
					<div class="panel panel-body">
						<center><h4 style="font-weight: bold;">Histori Pembelian</h4></center>
						<div class="get-so"></div>
					</div>
				</div>
			</div>
		</div>

		<hr>
		<button class="btn btn-danger" type="button" onclick="window.history.back();"><i class="icon-arrow-left7"></i>  Kembali</button>
	</div>
</div>