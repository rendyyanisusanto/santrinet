<table class="table table-xxs table-framed table-bordered">
	<thead>
		<tr>
			<th width="1%">No</th>
			<th>Tanggal</th>
			<th>Kode</th>
			<th>Subtotal</th>
			<th>PPN</th>
			<th>Total</th>
			<th>Terbayar</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data_get['so'] as $key=>$value): ?>
			<tr>
				<td><?= ++$key; ?></td>
				<td><?= date_format(date_create($value['tanggal']), 'd-m-Y') ?></td>
				<td><a href="sales_order/nota/<?= $value['id'] ?>" class="app-item"><?= $value['kode'] ?></a></td>
				<td>Rp. <?= number_format($value['subtotal'], 0, '.','.') ?></td>
				<td>Rp. <?= number_format($value['total_ppn'], 0, '.','.') ?></td>
				<td>Rp. <?= number_format($value['total'], 0, '.','.') ?></td>
				<td>Rp. <?= number_format($value['terbayar'],0, '.','.') ?></td>
			</tr>
		<?php endforeach ?>
	</tbody>
</table>