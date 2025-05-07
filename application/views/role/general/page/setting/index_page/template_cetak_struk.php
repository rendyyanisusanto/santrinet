<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/editors/ckeditor/ckeditor.js"></script>
<center><h4 style="font-weight: bold;">Setting Cetak Struk</h4></center>

<form id="app-submit" class="form-horizontal" action="Setting/update_template_cetak_struk" method="POST">
	<input type="hidden" name="page" value="template_cetak_struk">
	<?php foreach ($data_get['kode'] as $key => $value): ?>
	<div class="form-group">
		<label class="col-lg-3 control-label"><?= ucfirst(str_replace('_',' ', $value['name'])) ?> - <?= ucfirst(str_replace('_',' ', $value['table'])) ?> : <i class="text-danger">*</i></label>
		<div class="col-lg-6">
			<input type="hidden" name="data[<?= $key ?>][id]" value="<?= $value['id_setting_table'] ?>" >
			<textarea id="valSetting<?= $key ?>" name="data[<?= $key ?>][val]"><?= $value['value'] ?></textarea>
		</div>
	</div>
	<script type="text/javascript">
		CKEDITOR.replace('valSetting'+'<?= $key ?>');
	</script>
	<?php endforeach ?>

	<hr>
	<button type="submit" class="btn btn-success"><i class="icon-floppy-disk"></i> Simpan Data</button>
</form>

<script type="text/javascript">

	$( "#app-submit" ).on('submit', function( e ) {
		    e.stopImmediatePropagation();
		    e.preventDefault();

		    	for (instance in CKEDITOR.instances) {
		                CKEDITOR.instances[instance].updateElement();
		            }
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