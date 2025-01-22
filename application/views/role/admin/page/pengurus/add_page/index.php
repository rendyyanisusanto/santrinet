<!-- include -->
<link href="<?php echo base_url('inc/select2/') ?>/select2.css" rel="stylesheet" />
<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/forms/selects/select2.min.js"></script>
<!-- /include -->
<div class="row">
	<div class="col-md-12">
		<div class="panel">
			<form id="app-submit" class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/simpan_data" method="POST">
				<div class="panel-body">	
					<div class="col-md-12">
						<fieldset>
							<legend class="text-semibold"><?php echo $data_get['param']['title'] ?> - <b>TAMBAH DATA</b></legend>
							

							<div class="col-md-6">
								<div class="form-group">
									<label class="col-lg-3 control-label">Kode : <i class="text-danger">*</i></label>
									<div class="col-lg-4">
										<input type="text" placeholder="" required name="kode" class="form-control kode">
									</div> 
									<div class="col-lg-3">
						              	<button class="btn btn-xs btn-warning" data-toggle="tooltip" onclick="reload_table('<?php echo $data_get['param']['table']; ?>','kode','kode');" data-placement="top" title="Reload Kode" type="button"><i class="icon-pencil7"></i></button>
						              	<button class="btn btn-xs btn-info" type="button" onclick="setting_table('<?php echo $data_get['param']['table']; ?>','kode');" data-toggle="tooltip" data-placement="top" title="Setting Kode" ><i class="icon-cog3"></i></button>
						            </div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder="" required name="nama" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Jenis Kelamin : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select class="form-control" name="jenis_kelamin">
											<option value="L">Laki-laki</option>
											<option value="P">Perempuan</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Tempat Lahir : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder="" required name="tempat_lahir" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Tangga Lahir : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="date" placeholder="" required name="tanggal_lahir" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">No HP: <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder="" required name="no_hp" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Status : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="status_aktif" required class="form-control">
											<option value="1">AKTIF</option>
											<option value="0">TIDAK AKTIF</option>
										</select>
									</div>
								</div>
							</div>
							
						</fieldset>
					</div>
					<hr>
					
			</div>
			<div class="panel-footer">
				<div class="heading-elements">
					<div class="text-right">
						<a class="btn btn-danger app-item" href="<?php echo $data_get['param']['table'] ?>/get_data"><i class="icon-arrow-left7"></i> Batalkan</a>
						<button type="submit" class="btn btn-success"><i class="icon-floppy-disk"></i> Simpan Data</button>
					</div>
				</div>
			</div>
			</form>
		</div>
	</div>
</div>
