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
									<label class="col-lg-3 control-label">NIP : </label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  name="nip" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder="" required name="nama" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">NIK : </label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  name="nik" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">NIS : </label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  name="nis" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Jenis Kelamin :  </label>
									<div class="col-lg-6">
										<select class="form-control" name="jenis_kelamin">
											<option value="L">Laki-laki</option>
											<option value="P">Perempuan</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Angkatan : </label>
									<div class="col-lg-6">
										<select name="angkatan_id" id="" class="form-control">
											<?php
												foreach ($data_get['angkatan'] as $key => $value) {
													?>
														<option value="<?= $value['id']?>"><?= $value['nama'] ?></option>
													<?php
												}
											?>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Tempat Lahir : </label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  name="tempat_lahir" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Tanggal Lahir : </label>
									<div class="col-lg-6">
										<input type="date" placeholder=""  name="tanggal_lahir" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Alamat : </label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  name="alamat" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama Ayah : </label>
									<div class="col-lg-6">
										<input type="text" placeholder="" name="nama_ayah" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">No HP Ayah : </label>
									<div class="col-lg-6">
										<input type="text" placeholder="" name="no_hp_ayah" class="form-control">
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama Ibu : </label>
									<div class="col-lg-6">
										<input type="text" placeholder="" name="nama_ibu" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">No HP Ibu : </label>
									<div class="col-lg-6">
										<input type="text" placeholder="" name="no_hp_ibu" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama Wali : </label>
									<div class="col-lg-6">
										<input type="text" placeholder="" name="nama_wali" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">No HP Wali : </label>
									<div class="col-lg-6">
										<input type="text" placeholder="" name="no_hp_wali" class="form-control">
									</div>
								</div>

							</div>
							<div class="col-md-6">
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Asrama : </label>
									<div class="col-lg-6">
										<select name="asrama_id" id="" class="form-control">
											<?php
												foreach ($data_get['asrama'] as $key => $value) {
													?>
													<option value="<?= $value['id']?>"><?= $value['nama']?></option>
													<?php
												}
											?>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Foto : </label>
									<div class="col-lg-6">
										<input type="file" placeholder="" name="foto" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Role : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="checkbox" name="role[]" checked value="SANTRI"> SANTRI <br>
										<input type="checkbox" name="role[]" value="KAFIL"> KAFIL<br>
										<input type="checkbox" name="role[]" value="ASATID"> ASATID<br>
										<input type="checkbox" name="role[]" id="role_pengurus" value="PENGURUS"> PENGURUS
									</div>
								</div>
								<div class="form-group" id="lembaga_pengurus" style="display: none;">
									<label class="col-lg-3 control-label">Lembaga :</label>
									<div class="col-lg-6">
										<select name="lembaga_pengurus_id" class="form-control">
											<?php
												foreach ($data_get['lembaga_pengurus'] as $key => $value) {
													?>
													<option value="<?= $value['id']?>"><?= $value['nama']?></option>
													<?php
												}
											?>
										</select>
									</div>
								</div>

								<hr>
								<b >Dokumen Tambahan</b>
								<div class="additional-document">
									<div style="margin-top: 10px;" class="form-group">
										<div class="col-lg-3">
											<input type="text" placeholder="" name="dokumen[0][name]" value="KTP" readonly class="form-control">
										</div>
										<div class="col-lg-6">
											<input type="file" placeholder="" name="dokumen[0][val]" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<div class="col-lg-3">
											<input type="text" placeholder="" name="dokumen[1][name]" value="KK" readonly class="form-control">
										</div>
										<div class="col-lg-6">
											<input type="file" placeholder="" name="dokumen[1][val]" class="form-control">
										</div>
									</div>
								</div>
								
								<button type="button" class="btn btn-default btn-add" onclick="add_document();"><i class="icon-plus3"></i> Tambah Dokumen</button>
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
