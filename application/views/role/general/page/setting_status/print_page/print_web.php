<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		table, th, td {
		    border: 1px solid #999;
		    padding: 1px 20px;
		}
	</style>
</head>
<body onload="print();">
	<table width="100%" style="border-collapse: collapse;border: 1px solid;">
		<thead>
			<tr>
				<th>No</th>
				<th>Kode</th>
				<th>Nama</th>
			</tr>
		</thead>
		<tbody>
			<?php $no = 0; ?>
			<?php foreach ($kategori_barang as $value): ?>
				<tr>
					<td width="1%"><?= ++$no ?></td>
					<td><?= $value['kode'] ?></td>
					<td><?= $value['nama'] ?></td>

				</tr>
			<?php endforeach ?>
		</tbody>
	</table>
</body>
</html>