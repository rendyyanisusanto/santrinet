<!-- include -->
<link href="<?php echo base_url('inc/select2/') ?>/select2.css" rel="stylesheet" />
<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/forms/selects/select2.min.js"></script>
<!-- /include -->
<div class="row">
	<div class="col-md-6 col-sm-12">
		<div class="panel">
			<form id="app-submit" class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/simpan_data" method="POST">
				<div class="panel-body">	
					<div class="col-md-12">
						<fieldset>
							<legend class="text-semibold"><?php echo $data_get['param']['title'] ?> - <b>TAMBAH DATA</b></legend>
							
							<div class="col-md-12">
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="santri_id"  required class="select-santri">
											<option value="">-- Pilih --</option>
										</select>
									</div>
								</div>
                                <div class="form-group">
									<label class="col-lg-3 control-label">Tanggal: <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" value="<?php echo date('Y-m-d') ?>" type="date" name="tanggal_izin">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Jenis : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="jenis" class="form-control jenis">
											<option value="">-- Pilih --</option>
											<option value="MUROJAAH">MUROJAAH</option>
											<option value="TAMBAHAN">TAMBAHAN</option>
										</select>
									</div>
								</div>

                                
								<div class="form-group">
									<label class="col-lg-3 control-label">Surat : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="surat_id" class="form-control surat">
											<option value="">-- Pilih --</option>
                                            <?php
                                                foreach ($data_get['surat'] as $key => $value) {
                                                    ?>
                                                        <option value="<?= $value['id']?>"><?= $value['nama']?></option>
                                                    <?php
                                                }
                                            ?>
										</select>
									</div>
								</div>
                                
								<div class="form-group">
									<label class="col-lg-3 control-label">Juz : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" type="number" name="juz" placeholder="Masukkan Juz" required>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Lembar : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" type="number" name="lembar" placeholder="Masukkan Lembar" required>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Ayat Awal - Akhir : <i class="text-danger">*</i></label>
									<div class="col-lg-3">
										<input class="form-control" type="number" name="ayat_awal" placeholder="Masukkan Ayat Awal" required>
									</div>
									<div class="col-lg-3">
										<input class="form-control" type="number" name="ayat_akhir" placeholder="Masukkan Ayat Akhri" required>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Nilai : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" type="number" name="nilai" placeholder="Masukkan Nilai" required>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Catatan : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" type="text" name="catatan" placeholder="Masukkan Catatan">
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
