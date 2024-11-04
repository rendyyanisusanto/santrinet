
<div id="modal_gudang" class="modal" tabindex="-1">
  <div class="modal-dialog modal-xs">
    <div class="modal-content">
      <form class="form-horizontal" action="Global_controller/simpan_data_gudang" id="app-submit-gudang" method="POST">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h5 class="modal-title">Setting Table</h5>
      </div>
      <div class="modal-body">
        <label>Kode Gudang</label>
        <br>
        <input type="text" class="form-control kode" required name="kode">
        <br>
        <label>Nama Gudang</label>
        <br>
        <input type="text" class="form-control nama" required name="nama">
        <br>
        <label>Alamat Gudang</label>
        <br>
        <input type="text" class="form-control alamat" required name="alamat">
        <br>
        <label>Warna</label>
        <br>
        <input type="color"  class="form-control color" required name="color">

        <hr>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-close2"></i> Close</button>
        <button type="submit" class="btn btn-primary"><i class="icon-floppy-disk"></i> Save changes</button>
      </div>

    </form>
    </div>
  </div>
</div>