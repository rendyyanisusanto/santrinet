<div class="alert alert-warning"><b>Info : </b> Lakukan pengecekan data terlebih dahulu. Scroll kebawah untuk memasukkan data ke database</div>
<table class=" table table-framed table-xxs" style="margin-bottom: 10px;">
	<thead>
		<tr>
			<th>No</th>
			<th>Kode</th>
			<th>Nama</th>
			<th>Color</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data_get['data_import'] as $key => $value): ?>
			<tr>
				<td width="1%"><button class="btn btn-xs btn-danger btn-del" type="button"><i class="icon-close2"></i></button></td>
				<td><input type="text" name="dt[<?php echo $key ?>][kode]" value="<?php echo (!empty($value['kode'])) ? $value['kode'] : '' ; ?>" class="kode form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][nama]" value="<?php echo (!empty($value['nama'])) ? $value['nama'] : '' ; ?>" class="nama form-control"></td>
				<td><input type="color" name="dt[<?php echo $key ?>][color]" class="color form-control"></td>
			</tr>
		<?php endforeach ?>
	</tbody>
</table>

<hr>
<button class="btn btn-success btn-submit-all" type="submit"><i class="icon-upload"></i> Import data ke database</button>
<script type="text/javascript">
	$('.btn-del').on("click", function(e){
		e.stopImmediatePropagation();

		blockui('.panel-proses');
		$(this).parent().parent().remove();
		setTimeout(function(a){
			unblockui('.panel-proses');
		}, 1000);
	})
</script>