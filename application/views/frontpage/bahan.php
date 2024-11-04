<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Frontpage</title>

	<!-- Global stylesheets -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="<?php echo base_url('inc/limitless/global_assets/');?>/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
	<link href="<?php echo base_url('inc/limitless/assets/');?>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="<?php echo base_url('inc/limitless/assets/');?>/css/core.min.css" rel="stylesheet" type="text/css">
	<link href="<?php echo base_url('inc/limitless/assets/');?>/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="<?php echo base_url('inc/limitless/assets/');?>/css/colors.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('inc/limitless/datatables.css');?>">
	<link rel="icon" type="image/png" href="<?= base_url('inc/media/'.$profil_website['icon']); ?>">

	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script src="<?php echo base_url('inc/limitless/global_assets/');?>/js/plugins/loaders/pace.min.js"></script>
	<script src="<?php echo base_url('inc/limitless/global_assets/');?>/js/core/libraries/jquery.min.js"></script>
	<script src="<?php echo base_url('inc/limitless/global_assets/');?>/js/core/libraries/bootstrap.min.js"></script>
	<script src="<?php echo base_url('inc/limitless/global_assets/');?>/js/plugins/ui/nicescroll.min.js"></script>
	<script src="<?php echo base_url('inc/limitless/global_assets/');?>/js/plugins/ui/drilldown.js"></script>
	<script src="<?php echo base_url('inc/limitless/global_assets/');?>/js/plugins/loaders/blockui.min.js"></script>

	<script src="<?php echo base_url('inc/limitless/global_assets/');?>/js/plugins/tables/datatables/datatables.min.js"></script>
	<!-- Toastr -->

	<link rel="stylesheet" href="<?php echo base_url('inc/toastr/toastr.min.css')?>">
	<script src="<?php echo base_url('inc/toastr/toastr.min.js')?>"></script>

	<link rel="stylesheet" href="<?php echo base_url('inc/core/core.css')?>?rnd=<?= uniqid() ?>">
	<script src="<?php echo base_url('inc/core/core.js')?>?rnd=<?= uniqid() ?>"></script>
	<!-- /core JS files -->

	<!-- Theme JS files -->
	<script src="<?php echo base_url('inc/limitless/assets/');?>/app.js"></script>

	<!-- /theme JS files -->

</head>
<body>
		
	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main content -->
			<div class="content-wrapper">
				<div class="row">
					<div class="col-sm-4 col-md-4">
							<div class="panel panel-body panel-body-accent">
								<div class="media no-margin">
									<div class="media-left media-middle">
										<i class="icon-inbox-alt icon-3x text-success-400"></i>
									</div>

									<div class="media-body text-right">
										<h3 class="no-margin text-semibold all_stock_txt">0</h3>
										<span class="text-uppercase text-size-mini text-muted">All Stock</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="panel panel-body panel-body-accent">
								<div class="media no-margin">
									<div class="media-left media-middle">
										<i class="icon-cancel-circle2 icon-3x text-danger-400"></i>
									</div>

									<div class="media-body text-right">
										<h3 class="no-margin text-semibold out_of_stock_txt">0</h3>
										<span class="text-uppercase text-size-mini text-muted">Out of Stock</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="panel panel-body panel-body-accent">
								<div class="media no-margin">
									<div class="media-left media-middle">
										<i class="icon-dropbox icon-3x text-info-400"></i>
									</div>

									<div class="media-body text-right">
										<h3 class="no-margin text-semibold in_stock_txt">0</h3>
										<span class="text-uppercase text-size-mini text-muted">In Stock</span>
									</div>
								</div>
							</div>
						</div>
				</div>
				<div class="row">
					<div class="panel panel-default">
								<div class="panel-heading">
									<input type="hidden" value="all" name="param" class="param">
									<button type="button" onclick="set_bahan('all');" class="btn btn-primary"><i class="icon-cube4"></i> All Stock</button>
					                <button type="button" onclick="set_bahan('in');" class="btn btn-flat border-info"><i class="icon-cube2"></i> In Stock</button>
					                <button type="button" onclick="set_bahan('out');" class="btn btn-flat border-danger"><i class="icon-close2"></i> Out of Stock</button>
									<div class="heading-elements">
										
										<ul class="icons-list">
					                		<li><a data-action="reload"></a></li>
					                	</ul>
				                	</div>
								</div>

								<div class="panel-body">
									<table class="table datatable-basic table-bordered table-xxs table-framed table-striped table-hover"  id="tabel-data">
										<thead>
											<tr>
												<th width="2%">No</th>
												<th width="10%">Kode</th>
												<th>Nama</th>
												<th width="5%">Min QTY</th>
												<th width="5%">QTY</th>
												<th width="5%">Satuan(default)</th>
												<th width="10%">Gudang</th>
											</tr>
										</thead>
									<tbody></tbody>
								</table>
								</div>
							</div>
				</div>
			</div>
			<!-- /main content -->

		</div>
		<!-- /page content -->

	
	</div>
	<!-- Footer -->
	<div class="footer text-muted">
		&copy; 2023. <a href="#">Polaris System Information</a> by <a href="http://myber.web.id" target="_blank">Myber</a>
	</div>
	<script type="text/javascript">
		get_data_bahan();
		var table=$('#tabel-data').DataTable( {
	       "processing": true, 
	            "serverSide": true, 
	            "order": [], 
	             
	            "ajax": {
	                "url": "<?php echo base_url('Frontpage') ?>/datatable_bahan",
	                "type": "POST",
	                "data" : function(data){
                    	data.param = $('.param').val();
	                }
	            },
	 
	            "columnDefs": [
	            { 
	                "targets": [ 0], 
	                "orderable": false, 
	            },
	            ],
	    } );

	function set_bahan(param){
		$('.param').val(param);
		reload_all();
	}
	function get_data_bahan(){
		send_ajax('<?= base_url("frontpage/get_count_bahan");?>', {}).then(function(data){
			var resp = JSON.parse(data);

			console.log(resp)

			$('.all_stock_txt').text(resp.all);
			$('.in_stock_txt').text(resp.in_stock.count);
			$('.out_of_stock_txt').text(resp.out_of_stock.count);
		});
	}

	function reload_all(){
		table.ajax.reload();
		get_data_bahan();
	}
	setInterval(function(e){
		reload_all();
	}, 15000)
	</script>
</body>
</html>
