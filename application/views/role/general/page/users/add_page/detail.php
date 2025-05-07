<div class="col-md-12" style="background: gray;padding:2%;">
	<div class="panel panel-body">
		
		<h5 style="font-weight: bold;">Role Access :</h5>
		<br>
		<?php foreach ($data_get['menu'] as $key_menu => $value): ?>
		
		<legend style="margin-top: 1%;" class="text-semibold"> Menu <?= $value['menu']['menu'] ?></legend>
		<table style="width: 50%;" class="table table-framed table-bordered table-xxs">
			<tr>
				<td></td>
				<td width="3%">Buat</td>
				<td width="3%">Lihat</td>
				<td width="3%">Ubah</td>
				<td width="3%">Hapus</td>
			</tr>
			<?php foreach ($value['submenu'] as $key => $value_sub): ?>
			<?php $rand = rand(0,99999) ?>
			<tr>
				<td><?= $value_sub['submenu']['submenu'] ?></td>
				<td class="text-center"><b class="<?= (($value_sub['c'] == 1) ? "text-success" : "text-danger" ); ?>"><?= (($value_sub['c'] == 1) ? "√" : "x" ); ?></b></td>
				<td class="text-center"><b class="<?= (($value_sub['r'] == 1) ? "text-success" : "text-danger" ); ?>"><?= (($value_sub['r'] == 1) ? "√" : "x" ); ?></b></td>
				<td class="text-center"><b class="<?= (($value_sub['u'] == 1) ? "text-success" : "text-danger" ); ?>"><?= (($value_sub['u'] == 1) ? "√" : "x" ); ?></b></td>
				<td class="text-center"><b class="<?= (($value_sub['d'] == 1) ? "text-success" : "text-danger" ); ?>"><?= (($value_sub['d'] == 1) ? "√" : "x" ); ?></b></td>
			</tr>
			<?php endforeach ?>
			
		</table>
		<?php endforeach ?>
	</div>
</div>