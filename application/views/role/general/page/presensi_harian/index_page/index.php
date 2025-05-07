<div class="row">
    <div class="col-md-3 col-sm-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h5 class="panel-title">Pilih Kamar</h5>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <select name="kamar_id" id="kamar_id" class="form-control">
                        <option value="">-- Pilih Kamar --</option>
                        <?php foreach ($data_get['kamar'] as $key => $value) : ?>
                            <option value="<?= $value['id'] ?>"><?= $value['nama'] ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>
                <button class="btn btn-primary btn-sm btn-block" onclick="proses_data();">
                    <i class="icon-spinner"></i> Proses
                </button>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-8 col-xs-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h5 class="panel-title">Data Presensi</h5>
            </div>
            <div class="panel-body">
                <div class="content-data">
                    <!-- Konten tabel akan dimuat di sini -->
                </div>
            </div>
        </div>
    </div>
</div>
