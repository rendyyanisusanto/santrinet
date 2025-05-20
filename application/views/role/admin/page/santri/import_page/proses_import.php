

<div class="alert alert-warning"><b>Info : </b> Lakukan pengecekan data terlebih dahulu. Scroll kebawah untuk memasukkan data ke database</div>
<input type="hidden" name="idjurusan_fk" class="idjurusan_fk">
<input type="hidden" name="idkelas_fk" class="idkelas_fk">
<table class=" table table-framed table-xxs" style="margin-bottom: 10px;">
	<thead>
		<tr>
			<th>No</th>
			<th>NIS</th>
			<th>NIK</th>
			<th>Nama</th>
			<th>JK</th>
			<th>Tempat Lahir</th>
			<th>Tanggal lahir</th>
			<th>Alamat</th>
			<th>Nama Ayah</th>
			<th>No. HP Ayah</th>
			<th>Nama Ibu</th>
			<th>No. HP Ibu</th>
			<th>Nama Wali</th>
			<th>No. HP Wali</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data_get['santri'] as $key => $value): ?>
			<tr>
				<td width="1%"><button class="btn btn-xs btn-danger btn-del" type="button"><i class="icon-close2"></i></button></td>
				<td><input type="text" name="dt[<?php echo $key ?>][nis]" value="<?php echo (!empty($value['nis'])) ? $value['nis'] : '' ; ?>" class="nis form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][nik]" value="<?php echo (!empty($value['nik'])) ? $value['nik'] : '' ; ?>" class="nik form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][nama]" value="<?php echo (!empty($value['nama'])) ? $value['nama'] : '' ; ?>" class="nama form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][jenis_kelamin]" value="<?php echo (!empty($value['jenis_kelamin'])) ? $value['jenis_kelamin'] : '' ; ?>" class="jenis_kelamin form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][tempat_lahir]" value="<?php echo (!empty($value['tempat_lahir'])) ? $value['tempat_lahir'] : '' ; ?>" class="tempat_lahir form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][tanggal_lahir]" value="<?php echo (!empty($value['tanggal_lahir'])) ? $value['tanggal_lahir'] : '' ; ?>" class="tanggal_lahir form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][alamat]" value="<?php echo (!empty($value['alamat'])) ? $value['alamat'] : '' ; ?>" class="alamat form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][nama_ayah]" value="<?php echo (!empty($value['nama_ayah'])) ? $value['jenis_kelamin'] : '' ; ?>" class="nama_ayah form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][no_hp_ayah]" value="<?php echo (!empty($value['no_hp_ayah'])) ? $value['no_hp_ayah'] : '' ; ?>" class="no_hp_ayah form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][nama_ibu]" value="<?php echo (!empty($value['nama_ibu'])) ? $value['nama_ibu'] : '' ; ?>" class="nama_ibu form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][no_hp_ibu]" value="<?php echo (!empty($value['no_hp_ibu'])) ? $value['no_hp_ibu'] : '' ; ?>" class="no_hp_ibu form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][nama_wali]" value="<?php echo (!empty($value['nama_wali'])) ? $value['jenis_kelamin'] : '' ; ?>" class="nama_wali form-control"></td>
				<td><input type="text" name="dt[<?php echo $key ?>][no_hp_wali]" value="<?php echo (!empty($value['no_hp_wali'])) ? $value['no_hp_wali'] : '' ; ?>" class="no_hp_wali form-control"></td>
				
			</tr>
		<?php endforeach ?>
	</tbody>
</table>

<hr>
<button class="btn btn-success btn-submit-all" style="display: none;" type="submit"><i class="icon-upload"></i> Import data ke database</button>