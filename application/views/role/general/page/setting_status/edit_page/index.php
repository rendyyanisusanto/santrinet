<!-- include -->
<link href="<?php echo base_url('inc/select2/') ?>/select2.css" rel="stylesheet" />
<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/forms/selects/select2.min.js"></script>
<!-- /include -->
<div class="row">
	<div class="col-md-12">
		<div class="panel">
			<form id="app-submit" class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/update_data" method="POST">
				<div class="panel-body">	
					<div class="col-md-12">

									<input type="hidden" value="<?= $data_get['data_edit']['id'] ?>" name="id">
						<fieldset>
							<legend class="text-semibold"><?php echo $data_get['param']['title'] ?> - <b>UPDATE DATA</b></legend>
							

							<div class="col-md-6">
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Name : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  value="<?= $data_get['data_edit']['name'] ?>" required name="name" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Color : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select class="form-control" name="color">
											<option <?= ($data_get['data_edit']['color'] == "default") ? "selected":""; ?> class="text-default" value="default"><b >Abu-abu</b></option>
											<option <?= ($data_get['data_edit']['color'] == "primary") ? "selected":""; ?> class="text-primary" value="primary"><b>Biru</b></option>
											<option <?= ($data_get['data_edit']['color'] == "info") ? "selected":""; ?> class="text-info" value="info"><b >Biru Muda</b></option>
											<option <?= ($data_get['data_edit']['color'] == "warning") ? "selected":""; ?> class="text-warning" value="warning"><b >Kuning</b></option>
											<option <?= ($data_get['data_edit']['color'] == "danger") ? "selected":""; ?> class="text-danger" value="danger"><b >Merah</b></option>
											<option <?= ($data_get['data_edit']['color'] == "success") ? "selected":""; ?> class="text-success" value="success"><b >Hijau</b></option>
										</select>
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">Groups : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  value="<?= $data_get['data_edit']['groups'] ?>" required name="groups" class="form-control">
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