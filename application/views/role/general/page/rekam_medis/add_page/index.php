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
							
							<input type="hidden" name="uuid" value="<?= $data_get['uuid']?>">
							<div class="col-md-6">
								<div class="form-group">
									<label class="col-lg-3 control-label">Tanggal : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" value="<?php echo date('Y-m-d') ?>" type="date" name="tanggal">
									</div>
								</div>
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
										<select name="santri_id"  required class="select-bahan">
											<option value="">-- Pilih --</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Keluhan : <i class="text-danger">*</i></label>
									<div class="col-lg-4">
										<select name="keluhan_id[]" multiple="multiple" required class="select-keluhan">
											<option value="">-- Pilih --</option>
										</select>
									</div>
									<div class="col-lg-3">
						              	<button class="btn btn-xs btn-info" type="button" onclick="add_keluhan();" data-toggle="tooltip" data-placement="top" title="Setting Kode" ><i class="icon-plus3"></i></button>
						            </div>
								</div>
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Lama Sakit : <i class="text-danger">*</i></label>
									<div class="col-lg-3">
										<input type="number" name="lama_sakit" class="form-control">
									</div>
								</div>

								<div class="form-group">
									<label class="col-lg-3 control-label">Obat : <i class="text-danger">*</i></label>
									<div class="col-lg-4">
										<select name="obat_id[]" multiple="multiple" required class="select-obat">
											<option value="">-- Pilih --</option>
										</select>
									</div>
									<div class="col-lg-3">
						              	<button class="btn btn-xs btn-info" type="button" onclick="add_obat();" data-toggle="tooltip" data-placement="top" title="Setting Kode" ><i class="icon-plus3"></i></button>
						            </div>
								</div>
								
								
							</div>

							<div class="col-md-6">
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Perawat : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="perawat_id"  required class="select-perawat">
											<option value="">-- Pilih --</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Status Rekam Medis : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<select name="status_rekam_medis_id" required class="form-control">
											<option value="">-- Pilih --</option>
											<?php foreach ($data_get['status_rekam_medis'] as $key => $value): ?>
												<option value="<?php echo $value['id'] ?>"><?php echo $value['id'] ?> - <?php echo $value['nama']; ?></option>
											<?php endforeach ?>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Diagnosis : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" type="text" name="diagnosis">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Catatan : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" type="text" name="catatan">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Foto : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input class="form-control" type="file" name="foto">
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

<div class="modal fade modal-obat" role="dialog">
  <div class="modal-dialog">
  	<form id="app-submit-obat" class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/simpan_data_obat" method="POST">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Tambah Obat</h4>
      </div>
      <div class="modal-body">
      	
      		<label>Kode</label>
      		<input type="text" class="form-control" name="kode">
      		<label>Nama</label>
      		<input type="text" class="form-control" name="nama">
      	
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success"  >Tambah</button>
      </div>
    </div>
    </form>
  </div>
</div>

<div class="modal fade modal-keluhan" role="dialog">
  <div class="modal-dialog">
  	<form id="app-submit-keluhan" class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/simpan_data_keluhan" method="POST">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Tambah Keluhan</h4>
      </div>
      <div class="modal-body">
      		<label>Nama</label>
      		<input type="text" class="form-control" name="nama">
      	
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success"  >Tambah</button>
      </div>
    </div>
    </form>
  </div>
</div>