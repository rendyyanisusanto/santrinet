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
                <button class="btn btn-xs btn-info pull-right" data-toggle="modal" data-target="#modalWaSetting">
                    <i class="glyphicon glyphicon-cog"></i> Setting Nomor WA
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

