<!-- include -->
<link href="<?php echo base_url('inc/select2/') ?>/select2.css" rel="stylesheet" />
<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/forms/selects/select2.min.js"></script>
<!-- /include -->
<input type="hidden" name="table" value="<?= $data_get['table'] ?>">
<div class="alert alert-warning"><b>Info : </b> Lakukan pengecekan data terlebih dahulu. Scroll kebawah untuk memasukkan data ke database</div>
<table class=" table table-framed table-xxs" style="margin-bottom: 10px;">
	<thead>
		<tr>
			<th>No</th>
			<th>Kode</th>
			<th>NIK</th>
			<th>Nama</th>
			<th>Alamat</th>
			<th>Jenis Kelamin</th>
			<th>No. HP</th>
			<th>Email</th>
			<th>Tanggal Masuk</th>
			<th>Jabatan</th>
			<th>Status</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data_get['data_import'] as $key => $value): ?>
			<tr>
				<td width="1%"><button class="btn btn-xs btn-danger btn-del" type="button"><i class="icon-close2"></i></button></td>
				<td><input type="text" required name="dt[<?php echo $key ?>][kode]" value="<?php echo (!empty($value['kode'])) ? $value['kode'] : '' ; ?>" class="kode form-control"></td>
				<td><input type="text"  name="dt[<?php echo $key ?>][nik]" value="<?php echo (!empty($value['nik'])) ? $value['nik'] : '' ; ?>" class="nik form-control"></td>
				<td><input type="text" required name="dt[<?php echo $key ?>][nama]" value="<?php echo (!empty($value['nama'])) ? $value['nama'] : '' ; ?>" class="nama form-control"></td>
				<td><input type="text"  name="dt[<?php echo $key ?>][alamat]" value="<?php echo (!empty($value['alamat'])) ? $value['alamat'] : '' ; ?>" class="alamat form-control"></td>
				<td>
							<select data-placeholder="Pilih..." required  name="dt[<?php echo $key ?>][satuan_barang_id]" class="select satuan_barang_id">
					            <option value="">- Pilih Satuan -</option>
					            <option <?= ($value['jk'] == "Laki-laki") ? "selected" : ""; ?> value="Laki-laki">Laki-Laki</option>
					            <option <?= ($value['jk'] == "Perempuan") ? "selected" : ""; ?> value="Perempuan">Perempuan</option>
					        </select>
				</td>

				<td><input type="text" required name="dt[<?php echo $key ?>][no_hp]" value="<?php echo (!empty($value['no_hp'])) ? $value['no_hp'] : '' ; ?>" class="no_hp form-control"></td>
				<td><input type="text"  name="dt[<?php echo $key ?>][email]" value="<?php echo (!empty($value['email'])) ? $value['email'] : '' ; ?>" class="email form-control"></td>
				<td><input type="date" name="dt[<?php echo $key ?>][tanggal_masuk]" value="<?php echo ((!empty($value['tanggal_masuk'])) ? date_format(date_create($value['tanggal_masuk']), 'Y-m-d') : '' ); ?>" class="tanggal_masuk form-control"></td>
				<td>
							<select data-placeholder="Pilih..." required  name="dt[<?php echo $key ?>][jabatan_id]" class="select jabatan_id">
					            <option value="">- Pilih Jabatan -</option>
					            <?php foreach ($data_get['jabatan'] as $key2 => $value_st): ?>
					                <option <?= ((isset($value['jabatan_id']) ? ( ($value['jabatan_id'] == $value_st['id']) ? "selected":"" ): "")); ?> value="<?php echo $value_st['id'] ?>"><?php echo $value_st['nama'] ?></option>
					          	<?php endforeach ?>
					        </select>
				</td>
				<td>
							<select data-placeholder="Pilih..." required  name="dt[<?php echo $key ?>][status_karyawan_id]" class="select status_karyawan_id">
					            <option value="">- Pilih Status Karyawan -</option>
					            <?php foreach ($data_get['status_karyawan'] as $key3 => $value_st): ?>
					                <option <?= (isset($value['status_karyawan_id']) ? (($value['status_karyawan_id'] == $value_st['id']) ? "selected":"") : ""); ?> value="<?php echo $value_st['id'] ?>"><?php echo $value_st['nama'] ?></option>
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