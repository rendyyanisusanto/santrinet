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
							<legend class="text-semibold"> Master Data Groups - <b>TAMBAH DATA</b></legend>
							

							<div class="col-md-6">
								
								<div class="form-group">
									<label class="col-lg-3 control-label">Nama : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder="" required name="name" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label">Keterangan : <i class="text-danger">*</i></label>
									<div class="col-lg-6">
										<input type="text" placeholder="" required name="description" class="form-control">
									</div>
								</div>
							</div>

							<div class="col-md-12" style="background: gray;padding:2%;">
								<div class="panel panel-body">
									
									<h5 style="font-weight: bold;">Role Access :</h5>
									<br>
									<?php foreach ($data_get['menu'] as $key_menu => $value): ?>
										
										<legend style="margin-top: 1%;" class="text-semibold"> Menu <?= $value['menu']['menu'] ?> &nbsp;&nbsp;&nbsp;<input type="checkbox" class="select_all_menu<?= $key_menu?>" onchange="set_check_all('<?= $key_menu ?>');"></legend> 
										<table style="width: 50%;" class="table table-framed table-bordered table-xxs">
												<tr>
													<td></td>
													<td width="3%">C</td>
													<td width="3%">R</td>
													<td width="3%">U</td>
													<td width="3%">D</td>
												</tr>
											<?php foreach ($value['submenu'] as $key => $value_sub): ?>
												<?php $rand = rand(0,99999) ?>
												<tr>
													<td><input name="submenu[<?= $rand ?>][id]" type="hidden" value="<?= $value_sub['id'] ?>"><?= $value_sub['submenu'] ?></td>
													<td><input type="checkbox" class="chk<?= $key_menu?> c<?= $key_menu ?>" name="submenu[<?= $rand ?>][c]"></td>
													<td><input type="checkbox" class="chk<?= $key_menu?> r<?= $key_menu ?>" name="submenu[<?= $rand ?>][r]"></td>
													<td><input type="checkbox" class="chk<?= $key_menu?> u<?= $key_menu ?>" name="submenu[<?= $rand ?>][u]"></td>
													<td><input type="checkbox" class="chk<?= $key_menu?> d<?= $key_menu ?>" name="submenu[<?= $rand ?>][d]"></td>
												</tr>
											<?php endforeach ?>
												<tr>
													<td class="text-right"><b>Select All</b></td>
													<td><input type="checkbox" class="chk<?= $key_menu ?> select_all<?= $key_menu?>" onchange="set_check('c','<?= $key_menu ?>');"></td>
													<td><input type="checkbox" class="chk<?= $key_menu ?> select_all<?= $key_menu?>" onchange="set_check('r','<?= $key_menu ?>');"></td>
													<td><input type="checkbox" class="chk<?= $key_menu ?> select_all<?= $key_menu?>" onchange="set_check('u','<?= $key_menu ?>');"></td>
													<td><input type="checkbox" class="chk<?= $key_menu ?> select_all<?= $key_menu?>" onchange="set_check('d','<?= $key_menu ?>');"></td>
												</tr>
										</table>
									<?php endforeach ?>
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