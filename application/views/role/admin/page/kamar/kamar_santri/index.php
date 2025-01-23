
<script src="<?php echo base_url('inc/limitless/global_assets/');?>/js/plugins/tables/datatables/datatables.min.js"></script>
<div class="row">
    <!-- Bagian Kiri: Daftar Semua Santri -->
    <div class="col-sm-6">
        <div class="panel panel-default" style="box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
            <div class="panel-heading" style="background-color: #337ab7; color: white;">
                <h4 class="panel-title">Daftar Semua Santri</h4>
            </div>
            <div class="panel-body" style="max-height: 500px; overflow-y: auto;">
                <input type="text" id="searchSantri" class="form-control" placeholder="Cari Santri..." onkeyup="filterSantri()">
                <table class="table table-bordered table-xxs table-striped" style="margin-top: 10px;">
                    <thead>
                        <tr>
                            <th width="1%">No</th>
                            <th>Nama Santri</th>
                            <th width="2%">Aksi</th>
                        </tr>
                    </thead>
                    <tbody id="santriList">
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Bagian Kanan: Santri di Kamar -->
    <div class="col-sm-6">
        <div class="panel panel-default" style="box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
            <div class="panel-heading" style="background-color: #5cb85c; color: white;">
                <h4 class="panel-title">Santri di Kamar</h4>
            </div>
            <div class="panel-body">
                <select id="kamarSelect" class="form-control" onchange="tampilkanSantriDiKamar()">
                    <option value="">Pilih Kamar</option>
                    <?php
                        foreach ($data_get['kamar'] as $key => $value) {
                            ?>
                                <option value="<?= $value['id'];?>"><?= $value['nama'];?></option>
                            <?php
                        }
                    ?>
                </select>
                <table class="table table-xxs table-bordered table-striped" style="margin-top: 10px;">
                    <thead>
                        <tr>
                            <th width="1%">No</th>
                            <th>Nama Santri</th>
                            <th>Kamar</th>
                            <th width="2%">Aksi</th>
                        </tr>
                    </thead>
                    <tbody id="santriKamarList">
                        <tr><td colspan="4" class="text-center">Pilih kamar untuk melihat santri</td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
