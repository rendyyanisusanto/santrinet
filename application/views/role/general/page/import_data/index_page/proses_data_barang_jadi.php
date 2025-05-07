<!-- include -->
<link href="<?php echo base_url('inc/select2/') ?>/select2.css" rel="stylesheet" />
<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/forms/selects/select2.min.js"></script>
<!-- /include -->
<input type="" name="table" value="<?= $data_get['table'] ?>">
<div class="alert alert-warning"><b>Info : </b> Lakukan pengecekan data terlebih dahulu. Scroll kebawah untuk memasukkan data ke database</div>
<table class=" table table-framed table-xxs" style="margin-bottom: 10px;">
	<thead>
		<tr>
			<th>No</th>
			<th>Kode</th>
			<th>Nama</th>
			<th>Min. QTY</th>
			<th>QTY</th>
			<th>Harga Beli</th>
			<th>Satuan</th>
			<th>Kategori</th>
			<th>Gudang</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data_get['data_import'] as $key => $value): ?>
			<tr>
				<td width="1%"><button class="btn btn-xs btn-danger btn-del" type="button"><i class="icon-close2"></i></button></td>
				<td><input type="text" required name="dt[<?php echo $key ?>][kode]" value="<?php echo (!empty($value['kode'])) ? $value['kode'] : '' ; ?>" class="kode form-control"></td>
				<td><input type="text" required name="dt[<?php echo $key ?>][nama]" value="<?php echo (!empty($value['nama'])) ? $value['nama'] : '' ; ?>" class="nama form-control"></td>
				<td><input type="number" required name="dt[<?php echo $key ?>][min_qty]" min="0" value="<?php echo (!empty($value['min_qty'])) ? $value['min_qty'] : 0 ; ?>" class="min_qty form-control"></td>
				<td><input type="number" name="dt[<?php echo $key ?>][qty]" value="<?php echo (!empty($value['qty'])) ? $value['qty'] : '' ; ?>" class="qty form-control"></td>
				<td><input type="number" name="dt[<?php echo $key ?>][harga]" value="<?php echo (!empty($value['harga_beli'])) ? $value['harga_beli'] : '' ; ?>" class="harga_beli form-control"></td>
				<td>
							<select data-placeholder="Pilih..." required  name="dt[<?php echo $key ?>][satuan_barang_id]" class="select satuan_barang_id">
					            <!-- <option value="">- Pilih Satuan -</option> -->
					            <?php foreach ($data_get['satuan_barang'] as $key1 => $value_st): ?>
					                <option <?= (isset($value['satuan_barang_id']) ? (($value['satuan_barang_id'] == $value_st['id']) ? "selected":"" ): ""); ?> value="<?php echo $value_st['id'] ?>"><?php echo $value_st['nama'] ?></option>
					          	<?php endforeach ?>
					        </select>
				</td>
				<td>
							<select data-placeholder="Pilih..." required  name="dt[<?php echo $key ?>][kategori_barang_id]" class="select kategori_barang_id">
					            <!-- <option value="">- Pilih Kategori -</option> -->
					            <?php foreach ($data_get['kategori_barang'] as $key2 => $value_st): ?>
					                <option <?= (isset($value['kategori_barang_id']) ?( ($value['kategori_barang_id'] == $value_st['id']) ? "selected":"" ): ""); ?> value="<?php echo $value_st['id'] ?>"><?php echo $value_st['nama'] ?></option>
					          	<?php endforeach ?>
					        </select>
				</td>
				<td>
							<select data-placeholder="Pilih..." required  name="dt[<?php echo $key ?>][gudang_id]" class="select gudang">
					            <!-- <option value="">- Pilih Gudang -</option> -->
					            <?php foreach ($data_get['gudang'] as $key3 => $value_st): ?>
					                <option <?= (isset($value['gudang_id']) ? (($value['gudang_id'] == $value_st['id']) ? "selected":"") : ""); ?> value="<?php echo $value_st['id'] ?>"><?php echo $value_st['nama'] ?></option>
					          	<?php endforeach ?>
					        </select>
				</td>
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

	$('.select').select2();
</script>