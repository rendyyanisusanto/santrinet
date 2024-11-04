<script src="<?php echo base_url('include/template/limitless/')?>global_assets/js/plugins/tables/datatables/datatables.min.js"></script>

<script src="<?php echo base_url('include/template/dashboard/')?>js/plugins/forms/selects/select2.min.js"></script>
<form class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/import_process" enctype="multipart/form-data" id="app-import" method="POST">
 
<div class="row">
	<div class="col-md-6">
		<div class="panel panel-body">
				<div class="form-group">
					<label class="col-lg-3 control-label">Pilih Tabel : <i class="text-danger">*</i></label>
					<div class="col-lg-6">
						<select class="form-control table" onchange="select_table();" required="" name="table">
							<option value=""> -- Pilih -- </option>
							<option value="master_data_bahan">Bahan</option>
							<option value="master_data_suplier">Suplier</option>
							<option value="master_data_customer">Customer</option>
							<option value="produk">Produk/Barang Jadi</option>
							<option value="karyawan">Karyawan</option>
						</select>
					</div>
				</div>
                <div class="form-group">
                	<label class="col-lg-3">Template Excel : *</label>
                	<div class="col-lg-4">
						<a href="#" target="__blank" class="btn btn-template btn-warning"><i class="icon-file-download"></i> Download Template</a>
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
<form class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/import_data_proses" enctype="multipart/form-data" id="app-submit-form" method="POST">
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-body">
			<div class="panel-proses">
				<div class="alert alert-warning">
					<b>Info :</b>
					<p>Untuk menghindari kegagalan dalam melakukan import data gunakan template dari sistem</p>
				</div>

			</div>
		</div>
	</div>
</div>
</form>