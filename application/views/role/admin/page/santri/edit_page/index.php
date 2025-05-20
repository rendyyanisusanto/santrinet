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
						<fieldset>
							<legend class="text-semibold"><?php echo $data_get['param']['title'] ?> - <b>UPDATE DATA</b></legend>
							
							<div class="col-md-6">
							<input type="hidden" value="<?= $data_get['data_edit']['id'] ?>" name="id">
								
								<div class="form-group">
									<label class="col-lg-3 control-label">NIS : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder="" value="<?= $data_get['data_edit']['nis'] ?>" required name="nis" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder="" required value="<?= $data_get['data_edit']['nama'] ?>" name="nama" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Jenis Kelamin : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select class="form-control" name="jenis_kelamin">
											<option <?php echo ($data_get['data_edit']['jenis_kelamin'] == 'L') ? "selected" : ""; ?> value="L">Laki-laki</option>
											<option  <?php echo ($data_get['data_edit']['jenis_kelamin'] == 'P') ? "selected" : ""; ?> value="P">Perempuan</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Tempat Lahir : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  value="<?= $data_get['data_edit']['tempat_lahir'] ?>" name="tempat_lahir" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Tangga Lahir : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="date" placeholder=""  value="<?= $data_get['data_edit']['tanggal_lahir'] ?>" name="tanggal_lahir" class="form-control">
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama Ayah : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  value="<?= $data_get['data_edit']['nama_ayah'] ?>" name="nama_ayah" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">No HP Ayah : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  value="<?= $data_get['data_edit']['no_hp_ayah'] ?>" name="no_hp_ayah" class="form-control">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama Ibu : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  value="<?= $data_get['data_edit']['nama_ibu'] ?>" name="nama_ibu" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">No HP Ibu : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder=""  value="<?= $data_get['data_edit']['no_hp_ibu'] ?>" name="no_hp_ibu" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama Wali : </label>
									<div class="col-lg-6">
										<input type="text" placeholder="" value="<?= $data_get['data_edit']['nama_wali'] ?>" name="nama_wali" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">No HP Wali : </label>
									<div class="col-lg-6">
										<input type="text" placeholder="" value="<?= $data_get['data_edit']['no_hp_wali'] ?>" name="no_hp_wali" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Asrama : </label>
									<div class="col-lg-6">
										<select name="asrama_id" id="" class="form-control">
											<?php
												foreach ($data_get['asrama'] as $key => $value) {
													?>
													<option <?= ($value['id'] == $data_get['data_edit']['asrama_id']) ? "selected":""; ?> value="<?= $value['id']?>"><?= $value['nama']?></option>
													<?php
												}
											?>
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
													<option <?= ($value['id'] == $data_get['data_edit']['angkatan_id']) ? "selected":""; ?> value="<?= $value['id']?>"><?= $value['nama']?></option>
													<?php
												}
											?>
										</select>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Foto : </label>
									<div class="col-lg-6">
										<img src="<?= (!empty($data_get['data_edit']['foto'])) ? base_url('inc/media/santri/'.$data_get['data_edit']['foto']) : base_url('inc/media/no_image.jpg') ;?>" style="width: 70px;height:90px;margin-bottom: 5px;border-radius:10px;" alt="">
										<input type="hidden" name="foto_lama" value="<?= $data_get['data_edit']['foto']?>">
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
									<?php
										foreach ($data_get['dokumen_santri'] as $key => $value) {
											?>
											<div style="margin-top: 10px;" class="form-group cl<?= $value['id']?>">
												
												<div class="col-lg-3">
													<input type="text" placeholder="" name="dokumen[<?= $key ?>][name]" value="<?= $value['fname']?>" readonly class="form-control">
													<input type="hidden" value="<?= $value['id']?>" name="dokumen[<?= $key ?>][id]">
												</div>
												<div class="col-lg-2">
													<a href="<?= base_url('inc/media/santri/dokumen_santri/'.$value['file']);?>" target="__blank">Lihat File</a>
												</div>
												<div class="col-lg-4">
													
													
													<input type="file" placeholder="" name="dokumen[<?= $key ?>][val]" class="form-control">
												</div>
												<div class="col-lg-3">
													<button class="btn btn-warning" type="button" onclick="delete_document(<?= $value['id']?>);"><i class="icon-trash"></i> Hapus Dokumen</button>
												</div>
											</div>
											<?php
										}
									?>
									
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