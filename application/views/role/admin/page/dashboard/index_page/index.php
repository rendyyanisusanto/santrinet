<div class="row">
    <div class="col-md-12">
        <h4 style="margin-bottom: 20px; font-weight: bold;">Menu yang bisa Anda akses:</h4>
        <?php foreach ($data_get['menu'] as $key => $value) { ?>
			<?php if (isset($value['submenus']) && !empty($value['submenus'])) { // Cek jika submenus ada dan tidak kosong ?>
            <div class="panel panel-default" style="box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); margin-bottom: 20px;">
                <div class="panel-heading" style="background-color: #f5f5f5; border-color: #ddd; padding: 15px;">
                    <h5 class="panel-title" style="margin: 0; color: #333; font-weight: bold;">
                        <?php echo $value['menu_nama']; ?>
                    </h5>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <?php 
                        if (isset($value['submenus'])) {
                            foreach ($value['submenus'] as $submenu) { ?>
                                <div class="col-sm-3" style="margin-bottom: 5px;">
                                    <a href="<?= $submenu['link'] ?>" 
                                       class="btn app-item btn-default btn-block menu-button"
                                       style="text-align: left; display: flex; align-items: center; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); padding: 10px; transition: all 0.3s ease;">
                                        <i class="<?= $submenu['icon'] ?>" style="margin-right: 10px; font-size: 18px;"></i> 
                                        <?= $submenu['nama']; ?>
                                    </a>
                                </div>
                            <?php }
                        } ?>
                    </div>
                </div>
            </div>
			<?php };?>
        <?php } ?>
    </div>
</div>

<!-- Tambahkan CSS -->
<style>
    .menu-button {
        background-color: #fff; /* Warna dasar tombol */
        color: #333; /* Warna teks */
    }
    .menu-button:hover {
        background-color: #337ab7; /* Warna pada hover */
        color: #fff; /* Warna teks pada hover */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Efek bayangan lebih besar */
    }
</style>
