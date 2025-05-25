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
										<select name="santri_id"  required class="select-santri">
											<option value="">-- Pilih --</option>
										</select>
									</div>
								</div>
                                <div class="form-group">
									<label class="col-lg-3 control-label">Tanggal Ijin: <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" value="<?php echo date('Y-m-d') ?>" type="date" name="tanggal_izin">
									</div>
								</div>
                                <div class="form-group">
									<label class="col-lg-3 control-label">Tanggal Kembali: <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" value="<?php echo date('Y-m-d') ?>" type="date" name="tanggal_kembali">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Jenis : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="jenis_izin" class="form-control jenis_izin">
											<option value="">-- Pilih --</option>
											<option value="SAKIT">SAKIT</option>
											<option value="PULANG">PULANG</option>
                                            <option value="ACARA_KELUARGA">ACARA KELUARGA</option>
                                            <option value="URUSAN_LAIN">URUSAN LAIN</option>
										</select>
									</div>
								</div>
                                
								<div class="form-group">
									<label class="col-lg-3 control-label">Alasan : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" type="text" name="alasan">
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
