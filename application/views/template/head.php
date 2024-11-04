<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php echo $profil_website['nama_website'] ?></title>

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