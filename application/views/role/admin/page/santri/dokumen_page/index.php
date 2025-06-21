<!-- include -->
<link href="<?php echo base_url('inc/select2/') ?>/select2.css" rel="stylesheet" />
<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/forms/selects/select2.min.js"></script>
<!-- /include -->
<div class="row">
	<div class="col-md-6 col-lg-6 col-sm-12">
		<div class="panel">
			<form id="app-submit" class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/update_dokumen" method="POST">
				<div class="panel-body">	
					<div class="col-md-12">
						<fieldset>
							
							<input type="hidden" value="<?= $data_get['santri']['id'] ?>" name="id">
							<legend class="text-semibold"><b>Dokumen Santri : <?= $data_get['santri']['nama']?></b></legend>
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
													<a href="<?= $value['file']; ?>" target="__blank">Lihat File</a>
												</div>
												<div class="col-lg-4">
													<input type="file" placeholder="" name="dokumen[<?= $key ?>][val]" class="form-control">
												</div>
												<div class="col-lg-3">
													<button class="btn btn-warning" type="button" onclick="delete_document(<?= $value['id']?>);"><i class="icon-trash"></i></button>
												</div>
											</div>
											<?php
										}
									?>
									
								</div>
								
								
								<button type="button" class="btn btn-default btn-add" onclick="add_document();"><i class="icon-plus3"></i> Tambah Dokumen</button>
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