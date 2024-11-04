
<script src="<?php echo base_url('include/template/limitless/')?>global_assets/js/plugins/tables/datatables/datatables.min.js"></script>

<script src="<?php echo base_url('include/template/dashboard/')?>js/plugins/forms/selects/select2.min.js"></script>
<form class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/import_process" enctype="multipart/form-data" id="app-import" method="POST">
 
<div class="row">
	<div class="col-md-6">
		<div class="panel panel-body">
				
                <div class="form-group">
                	<label class="col-lg-3">Template Excel : *</label>
                	<div class="col-lg-4">
						<a href="<?php echo base_url('inc/excel_template/import_tahfidz.xlsx'); ?>" target="__blank" class="btn btn-warning" ><i class="icon-file-download"></i> Download Template</a>
                	</div>
                </div>
                <div class="form-group">
                	<label class="col-lg-3">Pilih File : *</label>
                	<div class="col-md-6"><input type="file" required="" class="file_excel form-control" name="file_upload"></div>
                </div>
                <hr>

				<a class="btn btn-danger app-item" href="<?php echo $data_get['param']['table'] ?>/get_data"><i class="icon-arrow-left7"></i> Batalkan</a>
                <button type="submit" class="btn btn-primary btn-submit"><i class="icon-spinner"></i> Proses File</button>
			
		</div>
	</div>
</div>
</form>
<form class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/import_data" enctype="multipart/form-data" id="app-submit-form" method="POST">
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-body">
			<div class="panel-proses">
				<div class="alert alert-warning">
					<b>Info :</b>
					<p>Untuk menghindari kegagalan dalam melakukan import data gunakan template dari sistem</p>
				</div>

				<br>

				<center>
					<h4 style="font-weight: bold;">Import Data</h4>
				</center>
				
			</div>
		</div>
	</div>
</div>
</form>