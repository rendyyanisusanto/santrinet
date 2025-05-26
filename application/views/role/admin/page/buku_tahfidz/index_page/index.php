<!-- include -->
<link href="<?php echo base_url('inc/select2/') ?>/select2.css" rel="stylesheet" />
<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/forms/selects/select2.min.js"></script>
<script src="<?php echo base_url('inc/limitless/global_assets/');?>/js/plugins/tables/datatables/datatables.min.js"></script>
<!-- /include -->

<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default" >
			<div class="panel-heading">
				<div class="panel-title">
					<a href="<?php echo $data_get['param']['table'] ?>/add_page" style="color:white;" class="btn btn-primary app-item"><i class="icon-plus3"></i> Tambah Data Tahfidz Santri</a>
					<button class="btn btn-bulk-delete btn-danger" onclick="bulk_delete()" style="display: none;"><i class="icon-close2"></i> Hapus Data</button>
				</div>
				<div class="heading-elements">
					<!-- <div class="heading-btn">
						<button type="button" class="btn btn-danger btn-icon" onclick="print_pdf();"><i class="icon-file-pdf"></i></button>
						<button type="button" class="btn btn-success btn-icon" onclick="print_excel();"><i class="icon-file-excel"></i></button>
						<button type="button" class="btn btn-info btn-print btn-icon" onclick="print();"><i class="icon-printer"></i></button>
					</div> -->
				</div>
			</div>
			<div class="panel-body" >
				<div class="table-responsive">
					<table class="table datatable-basic table-bordered table-xxs table-framed table-striped table-hover"  id="tabel-data">
						<thead>
							<tr>
								<th width="2%"><input type="checkbox" class="bulk-check" name=""></th>
								<th>Tanggal</th>
								<th>Nama</th>
								<th>Jenis</th>
								<th>Surat/Juz</th>
								<th>Lembar/Ayat</th>
								<th>Nilai</th>
								<th>Catatan</th>
								<th>#</th>
							</tr>
						</thead>
					<tbody></tbody>
				</table>
			</div>
		</div>
		<div class="panel-footer"><a class="heading-elements-toggle"><i class="icon-more"></i></a>
		<div class="heading-elements">
			<div class="heading-btn pull-right">
				<!-- <button type="button" class="btn btn-default btn-icon btn-custom-search" onclick="custom_search();"><i class="icon-search4"></i> Custom Search</button> -->
				<a href="<?= $data_get['param']['table'] ?>/import_page" class="btn btn-default btn-icon app-item"><i class="icon-upload"></i> Import Data</a>
			</div>
		</div>
	</div>
</div>
</div>
</div>
