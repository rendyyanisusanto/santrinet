<center><b>Detail Rekam Medis Tanggal <?php echo date('d-M-Y', strtotime($data_get['tanggal'])) ?></b></center>
<hr>
<table class="table table-framed table-bordered table-xxs">
	<thead>
		<tr>
			<th>Tanggal</th>
			<th>Kode</th>
			<th>Nama</th>
			<th>Diagnosis</th>
			<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data_get['res'] as $key => $value): ?>
			<tr>
				<td><?php echo date('d-M-Y', strtotime($value['tanggal'])) ?></td>
				<td><?php echo $value['kode'] ?></td>
				<td><?php echo $value['nama'] ?></td>
				<td><?php echo $value['diagnosis'] ?></td>
				<td><b style="color: <?php echo $value['color_rm'] ?>"><?php echo $value['nama_rm'] ?></b></td>
			</tr>
		<?php endforeach ?>
	</tbody>
</table>