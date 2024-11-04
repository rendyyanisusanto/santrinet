<div class="navbar navbar-default" id="navbar-second">
			<ul class="nav navbar-nav no-border visible-xs-block">
				<li><a class="text-center collapsed" data-toggle="collapse" data-target="#navbar-second-toggle"><i class="icon-menu7"></i></a></li>
			</ul>

			<div class="navbar-collapse collapse" id="navbar-second-toggle">
				<ul class="nav navbar-nav">
					<li><a class="app-item" href="Dashboard/get_data"><i class="icon-display4 position-left"></i> Dashboard</a></li>

					<?php foreach ($menu as $value): ?>
						<?php if ($value['cek_menu']>0): ?>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<?= $value['menu']['menu'] ?> <span class="caret"></span>
								</a>

								<ul class="dropdown-menu width-300">
									<li class="dropdown-header">Submenu</li>
									<?php foreach ($value['submenu'] as $value_sub): ?>
										<?php if (!empty($value_sub['cek'])): ?>
											<?php if ($value_sub['cek']['r'] > 0): ?>
												<li><a class="app-item" href="<?= $value_sub['submenu']['link'] ?>"><i class="icon-align-center-horizontal"></i> <?= $value_sub['submenu']['submenu'] ?></a></li>
											<?php endif ?>
										<?php endif ?>
									<?php endforeach ?>
								</ul>
							</li>
						<?php endif ?>
					<?php endforeach ?>
					
				</ul>
			</div>
		</div>