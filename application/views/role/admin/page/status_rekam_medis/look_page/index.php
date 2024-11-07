
<div class="row">
	<div class="col-md-12">
		<div class="panel">
			<div class="panel-body">
				<div class="col-md-12">
					<h4 class="text-center"><b>Data <?php echo $data_get['param']['table'] ?></b></h4>
				</div>
				<div class="col-md-6">
					<table class="table table-bordered table-xxs">
						<tbody>
							<tr>
								<td width="20%" class="bg-primary" >Kode</td>
								<td class="bg-info">:</td>
								<td><b><?php echo $data_get['data_edit']['kode'] ?></b></td>
							</tr>
							<tr>
								<td class="bg-primary">Nama</td>
								<td width="1%" class="bg-info">:</td>
								<td><?php echo $data_get['data_edit']['nama'] ?></td>
							</tr>
							
						</tbody>
					</table>
				</div>
				<div class="col-md-6">
					<table class="table table-bordered table-xxs">
						<tbody>
							
							<tr>
								<td class="bg-primary">Status</td>
								<td width="1%" class="bg-info">:</td>
								<td><span style="font-weight: bold;" class="label <?php echo ($data_get['data_edit']['status'] == 1) ? "label-success" : "label-danger"; ?>"><?php echo ($data_get['data_edit']['status'] == 1) ? "AKTIF" : "NON AKTIF"; ?></span></td>
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>
			<div class="panel-footer">
				<div class="heading-elements">
					<div class="text-left" style="margin-left: 1%;">
						<a class="btn btn-danger app-item" href="<?php echo $data_get['param']['table'] ?>/get_data"><i class="icon-arrow-left7"></i> Batalkan</a>
					</div>
				</div>
			</div>

			
		</div>
	</div>
</div>