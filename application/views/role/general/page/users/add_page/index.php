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
							<legend class="text-semibold"> Master Data Users - <b>TAMBAH DATA</b></legend>
							

							<div class="col-md-6">
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Pengurus : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select data-placeholder="Pilih..." required  name="anggota_id" class="select anggota-id">
											<option value="">--Pilih--</option>
											<?php foreach ($data_get['santri'] as $value): ?>
												
												<option value="<?= $value['id'] ?>"><?= $value['nama'] ?></option>
											<?php endforeach ?>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama Lengkap : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder="" required name="name" class="form-control name">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Username : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder="" required name="username" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">Email : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder="" required name="email" class="form-control email">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Password : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="password" placeholder="" required name="password" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">Pin : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="password" placeholder="" required name="pin" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Groups/Role : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select class="form-control groups_id" required="" onchange="get_detail();" name="groups_id">
											<option value="">Pilih</option>
											<?php foreach ($data_get['groups'] as $value): ?>
												<option value="<?= $value['id'] ?>"><?= $value['name'] ?></option>
											<?php endforeach ?>
										</select>
									</div>
								</div>


							</div>

						</fieldset>
					</div>
					<div class="col-md-12">
						<div class="content-details"></div>
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