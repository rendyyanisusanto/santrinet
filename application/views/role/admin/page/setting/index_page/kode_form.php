<center><h4 style="font-weight: bold;">Setting Kode Form</h4></center>
<div class="alert alert-warning">
          <b>Tata cara penulisan kode: </b>
          <ul>
            <li>{rand} : Angka Acak</li>
            <li>{year} : Tahun</li>
            <li>{month} : Bulan</li>
            <li>{date_of_month}: Tanggal (hari ini)</li>
            <li>{date} : Tanggal(lengkap)</li>
          </ul>
          <b>Pastikan penulisan sintax benar, cth : INV/{rand}/{year} maka akan muncul INV/0123/2022</b>
        </div>
        <hr>
<form id="app-submit" class="form-horizontal" action="Setting/update_kode" method="POST">
	<input type="hidden" name="page" value="kode_form">
	<?php foreach ($data_get['kode'] as $key => $value): ?>
	<div class="form-group">
		<label class="col-lg-3 control-label"><?= ucfirst(str_replace('_',' ', $value['table'])) ?> : <i class="text-danger">*</i></label>
		<div class="col-lg-6">
			<input type="hidden" name="data[<?= $key ?>][id]" value="<?= $value['id_setting_table'] ?>" >
			<input type="text" placeholder="" required name="data[<?= $key ?>][value]" value="<?= $value['value'] ?>" class="form-control">
		</div>
	</div>
	<?php endforeach ?>

	<hr>
	<button type="submit" class="btn btn-success"><i class="icon-floppy-disk"></i> Simpan Data</button>
</form>

<script type="text/javascript">
	$( "#app-submit" ).on('submit', function( e ) {
		    e.stopImmediatePropagation();
		    e.preventDefault();


		       var form_data = new FormData(this);
		        send_ajax_file( $(this).attr('action'),form_data).then( function(data){
		           

		            var response = JSON.parse(data);
		            if (response.status == 200) {
			            toastr.success('Data berhasil ditambahkan, Refresh untuk melihat perubahan');
			            change_page(response.page);
		            }else{
			            toastr.error('Data gagal ditambahkan, Refresh untuk melihat perubahan');
		            }

		        });
		    return false;
		});
</script>