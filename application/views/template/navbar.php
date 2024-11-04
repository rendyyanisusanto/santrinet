
<body class="navbar-top-md-md">

<div class="se-pre-con" style="display: none;"></div>
	<!-- Fixed navbars wrapper -->
	<div class="navbar-fixed-top">

		<!-- Main navbar -->
		<div class="navbar navbar-inverse">
			<div class="navbar-header">
				<a class="navbar-brand app-item"  href="Dashboard/get_data"><img src="<?php echo base_url('inc/media/');?>logo.png" style="height: 50px !important; margin-top: -13px !important;" alt=""></a>

				<ul class="nav navbar-nav pull-right visible-xs-block">
					<li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
				</ul>
			</div>

			<div class="navbar-collapse collapse" id="navbar-mobile">
				<ul class="nav navbar-nav">
					
				</ul>

				<ul class="nav navbar-nav navbar-right">
					
				<li><a target="__blank" href="<?= base_url('inc/media/manual_book.pdf');?>"><i class="icon-book position-left"></i> Panduan</a></li>
					<li class="dropdown dropdown-user">
						<a class="dropdown-toggle" data-toggle="dropdown">
							<img src="<?php echo base_url('inc/limitless/global_assets/');?>/images/image.png" alt="">
							<span><?= $user_account['username'] ?></span>
							<i class="caret"></i>
						</a>

						<ul class="dropdown-menu dropdown-menu-right">
							<li><a href="#"><i class="icon-user-plus"></i> My profile</a></li>
							<!-- <li><a href="#"><i class="icon-coins"></i> My balance</a></li>
							<li><a href="#"><span class="badge badge-warning pull-right">58</span> <i class="icon-comment-discussion"></i> Messages</a></li> -->
							<li class="divider"></li>
							<li><a href="#"><i class="icon-cog5"></i> Account settings</a></li>
							<li><a href="<?= base_url('Auth/logout'); ?>"><i class="icon-switch2"></i> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!-- /main navbar -->


		<!-- Second navbar -->

        <?php $this->load->view($sidebar); ?>
		
		<!-- /second navbar -->

	</div>
	<!-- /fixed navbars wrapper -->

