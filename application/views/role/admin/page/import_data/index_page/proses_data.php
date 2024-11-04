<div class="alert alert-warning"><b>Info : </b> Lakukan pengecekan data terlebih dahulu. Scroll kebawah untuk memasukkan data ke database</div>
<input type="hidden" name="table" value="<?= $data_get['table'] ?>">
<table class=" table table-framed table-xxs" style="margin-bottom: 10px;">
	<thead>
		<tr>
			<th>No</th>
			<?php foreach ($data_get['arr_tbl'] as $value): ?>
				<th><?= $value ?></th>
			<?php endforeach ?>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data_get['data_import'] as $key => $value): ?>
			<tr>
				<td width="1%"><button class="btn btn-xs btn-danger btn-del" type="button"><i class="icon-close2"></i></button></td>
				<?php foreach ($data_get['arr_tbl'] as $value_tbl): ?>
					<td><input type="text" name="dt[<?php echo $key ?>][<?php echo $value_tbl ?>]" value="<?php echo (!empty($value[$value_tbl])) ? $value[$value_tbl] : '' ; ?>" class="<?= $value_tbl ?> form-control"></td>
				<?php endforeach ?>
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