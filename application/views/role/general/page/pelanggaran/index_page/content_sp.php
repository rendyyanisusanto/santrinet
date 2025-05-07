
<style>
    .table-custom th, .table-custom td {
        padding: 10px;
        vertical-align: middle;
    }
    .table-custom th {
        background-color: #f5f5f5;
        font-weight: bold;
    }
    .table-custom td:first-child {
        font-weight: bold;
        color: #555;
    }
</style>
<form id="app-submit-sp" class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/simpan_sp" method="POST">
	<label>Kode</label>
	<input class="form-control" type="text" name="kode" >
	<input value="<?php echo $data_get['pelanggaran']['id'] ?>" type="hidden" name="id" >
	<input value="<?php echo $data_get['pelanggaran']['santri_id'] ?>" type="hidden" name="santri_id" >
	<br>
	<label>Tanggal</label>
	<input class="form-control" type="date" value="<?php echo date('Y-m-d'); ?>" name="tanggal" >
	<br>

	<label>Jenis</label>
	<select class="form-control" name="jenis">
		<option value="1">SP 1</option>
		<option value="2">SP 2</option>
		<option value="3">SP 3</option>
	</select>
	<hr>
	<table class="table table-bordered table-striped table-hover table-xxs table-custom">
		<tr>
			<td>Kode</td>
			<td><?php echo $data_get['pelanggaran']['kode'] ?></td>
		</tr>
		<tr>
			<td>Nama</td>
			<td><?php echo $data_get['pelanggaran']['nama'] ?></td>
		</tr>
		<tr>
			<td>Pelanggaran</td>
			<td><?php echo $data_get['pelanggaran']['pelanggaran'] ?></td>
		</tr>
	</table>
	<hr>
	<button type="submit" class="btn btn-success">Cetak Surat Peringatan</button>
</form>

<script type="text/javascript">
	$( "#app-submit-sp" ).on('submit', function( e ) {
            e.stopImmediatePropagation();
            e.preventDefault();
            // $('.se-pre-con').css('display','block');

            var submitButton = $(this).find("button[type=submit]");
            submitButton.prop('disabled', true);
               var form_data = new FormData(this);
                send_ajax_file( $(this).attr('action'),form_data).then( function(data){
                    // $(".se-pre-con").fadeOut("slow");

            	submitButton.prop('disabled', false);
                    var response = JSON.parse(data);
                    window.open(response, '_blank');

                });
            return false;
        });
</script>