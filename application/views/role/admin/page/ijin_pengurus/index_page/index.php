<div class="row">
    <div class="col-md-4">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <b class="panel-title">
                    Filter Ijin Pengurus
                </b>
            </div>
            <div class="panel-body">
                <div class="row">
                    <!-- Filter Tanggal -->
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="tanggal">Tanggal</label>
                            <input type="date" id="tanggal" class="form-control tanggal" value="<?= date('Y-m-d') ?>">
                        </div>
                        <hr>
                        <button class="btn btn-primary btn-block" type="button" onclick="proses_data()">
                            <i class="icon-spinner"></i> Proses
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Panel Data Ijin Pengurus -->
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading clearfix">
                <b class="panel-title pull-left">Data Ijin Pengurus</b>
                <button onclick="setting_wa();" class="btn btn-xs btn-info pull-right">
                    <i class="icon-cog"></i> Setting Nomor WA
                </button>
            </div>
            <div class="panel-body" id="perijinanList">
                <div class="alert alert-info">
                    Silakan pilih tanggal dan klik <b>Proses</b> untuk menampilkan data.
                </div>
            </div>
        </div>
    </div>
</div>


<div class="modal modal-change-status">
	<div class="modal-dialog">
		<div class="modal-content">
            
			<form class="submit-status" action="<?= $data_get['param']['table'] ?>/ubah_status">
			<div class="modal-body">
                <input type="hidden" name="id" class="inp-id" value="">
				<center><h3><b>Ubah Status</b></h3></center>
                <label for="">Keterangan</label>
                <input type="text" name="keterangan" class="form-control keterangan" placeholder="Masukkan keterangan jika diperlukan">
                <br>
				<label>Konfirmasi Keluar</label>
                <select name="konfirmasi_keluar" id="" class="form-control konfirmasi_keluar">
                    <option value="BELUM DIKONFIRMASI">BELUM DIKONFIRMASI</option>
                    <option value="TERKONFIRMASI">TERKONFIRMASI</option>
                </select>
			</div>
			<div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-close2"></i> Close</button>
		        <button type="submit" class="btn btn-primary"><i class="icon-floppy-disk"></i> Simpan</button>
		      </div>
            </form>
		</div>
	</div>
</div>

<!-- Modal Setting Nomor WA -->
<div class="modal fade" id="modalWaSetting" tabindex="-1" role="dialog" aria-labelledby="modalWaLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="modalWaLabel">
          <i class="icon-cog"></i> Setting Nomor WhatsApp
        </h4>
      </div>
      
      <div class="modal-body">
        <form id="formWaSetting">
          <div class="form-group">
            <label for="nomorWa">Nomor WA</label>
            <input type="text" class="form-control" id="nomorWa" name="nomorWa" placeholder="Contoh: 6281234567890">
            <p class="help-block">Gunakan format kode negara (contoh: 62 untuk Indonesia).</p>
          </div>
        </form>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
        <button type="button" class="btn btn-primary" onclick="simpanNomorWa()">
          <i class="icon-floppy-disk"></i> Simpan
        </button>
      </div>
      
    </div>
  </div>
</div>
