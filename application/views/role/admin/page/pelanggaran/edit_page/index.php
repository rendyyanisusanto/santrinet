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
							<legend class="text-semibold"><?php echo $data_get['param']['title'] ?> - <b>Ubah DATA</b></legend>
							
							<input type="hidden" name="id" value="<?= $data_get['data_edit']['id']?>">
							<div class="col-md-6">
								<div class="form-group">
									<label class="col-lg-3 control-label">Tanggal : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" value="<?php echo $data_get['data_edit']['tanggal'] ?>" type="date" name="tanggal">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Kode : <i class="text-danger">*</i></label>
									<div class="col-lg-4">
										<input type="text" placeholder="" required  value="<?php echo $data_get['data_edit']['kode'] ?>" name="kode" class="form-control kode">
									</div> 
									<div class="col-lg-3">
						              	<button class="btn btn-xs btn-warning" data-toggle="tooltip" onclick="reload_table('<?php echo $data_get['param']['table']; ?>','kode','kode');" data-placement="top" title="Reload Kode" type="button"><i class="icon-pencil7"></i></button>
						              	<button class="btn btn-xs btn-info" type="button" onclick="setting_table('<?php echo $data_get['param']['table']; ?>','kode');" data-toggle="tooltip" data-placement="top" title="Setting Kode" ><i class="icon-cog3"></i></button>
						            </div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="santri_id"  required class="select-santri">
											<option value=" <?php echo $data_get['data_edit']['kode'] ?>">-- Pilih --</option>
										</select>
									</div>
								</div>
								
								<!-- <div class="form-group">
									<label class="col-lg-3 control-label">Pelanggaran: <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" name="pelanggaran" class="form-control">
									</div>
								</div> -->

								<div class="form-group">
									<label class="col-lg-3 control-label">Tingkat Pelanggaran (TATIB) : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="kategori_tatib" class="form-control kategori_tatib">
											<option value="">-- Pilih --</option>
											<?php
												foreach ($data_get['kategori_tatib'] as $key => $value) {
													?>
														<option <?= ($value['id'] == $data_get['tatib']['kategori_tatib_id'] ) ? "selected" : "" ?> value="<?= $value['id']?>"><?= $value['nama']?></option>
													<?php
												}
											?>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Pelanggaran (TATIB) : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="tatib_id" class="select-tatib">
											<option value="">-- Pilih --</option>
										</select>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Takzir: <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" value="<?php echo $data_get['data_edit']['takzir'] ?>" name="takzir" class="form-control takzir">
									</div>
								</div>
							
								<div class="form-group">
									<label class="col-lg-3 control-label">Status Takzir: <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="status_takzir" required class="form-control">
											<option <?php echo ($data_get['data_edit']['status_takzir']=='BELUM') ? "selected" : "" ?> value="BELUM">BELUM</option>
											<option <?php echo ($data_get['data_edit']['status_takzir']=='SUDAH') ? "selected" : "" ?> value="SUDAH">SUDAH</option>
										</select>
									</div>
								</div>
							</div>

							<div class="col-md-6">
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Pelapor: <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="pelapor_id" class="select-pelapor">
											<option value="">-- Pilih --</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Kronologi : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" value="<?php echo $data_get['data_edit']['kronologi'] ?>" type="text" name="kronologi">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Pengurus: <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="pengurus_id" class="select-pengurus">
											<option value="">-- Pilih --</option>
										</select>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Foto : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<img src="<?= (!empty($data_get['data_edit']['foto'])) ? $data_get['data_edit']['foto'] : base_url('inc/media/no_image.jpg') ;?>" style="width: 70px;height:90px;margin-bottom: 5px;border-radius:10px;" alt="">
										<input type="hidden" name="foto_lama" value="<?= $data_get['data_edit']['foto']?>">
										<input type="file" placeholder="" name="foto" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">Status Dokumen Pelanggaran: <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="status_dokumen_pelanggaran" required class="form-control">
											<option <?php echo ($data_get['data_edit']['status_dokumen_pelanggaran']=='BELUM_MENGAMBIL') ? "selected" : "" ?>  value="BELUM_MENGAMBIL">BELUM MENGAMBIL</option>
											<option <?php echo ($data_get['data_edit']['status_dokumen_pelanggaran']=='MENGAMBIL_BELUM_MENGEMBALIKAN') ? "selected" : "" ?>  value="MENGAMBIL_BELUM_MENGEMBALIKAN">MENGAMBIL BELUM MENGEMBALIKAN</option>
											<option <?php echo ($data_get['data_edit']['status_dokumen_pelanggaran']=='MENGAMBIL_SUDAH_MENGEMBALIKAN') ? "selected" : "" ?>  value="MENGAMBIL_SUDAH_MENGEMBALIKAN">MENGAMBIL SUDAH MENGEMBALIKAN</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Status Aktif: <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="status_aktif" required class="form-control">
											<option <?php echo ($data_get['data_edit']['status_aktif']==1) ? "selected" : "" ?> value="1">AKTIF</option>
											<option <?php echo ($data_get['data_edit']['status_aktif']==0) ? "selected" : "" ?> value="0">TIDAK AKTIF</option>
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