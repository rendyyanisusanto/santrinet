
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-body">
			<h4>Menu yang bisa anda akses :</h4>
			
			<?php
				foreach ($data_get['menu'] as $key => $value) {
					?>
					<div class="panel panel-white " style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;">
						<div class="panel-heading">
							<div class="panel-title">
								<b><?php echo $value['menu_nama'];?></b>
							</div>
						</div>
						<div class="panel-body">
							<?php
								 if (isset($value['submenus'])) {
									foreach ($value['submenus'] as $submenu) {
										?>
											<div class="col-md-3" style="margin-top: 5px;">
												<a href="<?= $submenu['link']?>" class="btn app-item bg-indigo-800 btn-block"><i class="position-left <?= $submenu['icon']?>"></i> <?= $submenu['nama'];?></a>
											</div>
										<?php
									}
								}
							?>
						</div>
					</div>
					<?php
				}
			
			?>

			
			

			

		</div>
	</div>
</div>