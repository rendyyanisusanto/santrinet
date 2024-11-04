<!-- include -->
<link href="<?php echo base_url('inc/select2/') ?>/select2.css" rel="stylesheet" />
<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/forms/selects/select2.min.js"></script>
<!-- /include -->
<div class="row">
	<div class="col-md-12">
		<div class="panel">
			<form id="app-submit" class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/update_data_user" method="POST">
				<div class="panel-body">	
					<div class="col-md-12">
						<fieldset>
							<legend class="text-semibold"> Master Data Users - <b>UBAH DATA</b></legend>
							

							<div class="col-md-6">
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Username : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" value="<?php echo $data_get['account']['username'] ?>" placeholder="" required name="username" class="form-control">
										<input type="hidden" value="<?php echo $data_get['account']['id'] ?>" placeholder="" required name="id" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">Email : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  value="<?php echo $data_get['account']['email'] ?>" required name="email" class="form-control email">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Password : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="password" placeholder="" name="password" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">Pin : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="password" placeholder="" name="pin" class="form-control">
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