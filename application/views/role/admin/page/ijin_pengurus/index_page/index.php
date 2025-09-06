<div class="row">
    <div class="col-md-4">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <b class="panel-title">
                    <i class="icon-filter4"></i> Filter & Pencarian
                </b>
            </div>
            <div class="panel-body">
                <form id="filterForm">
                    <div class="row">
                        <!-- Filter Tanggal -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="tanggal_dari">Tanggal Dari</label>
                                <input type="date" id="tanggal_dari" class="form-control" value="<?= date('Y-m-d') ?>">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="tanggal_sampai">Tanggal Sampai</label>
                                <input type="date" id="tanggal_sampai" class="form-control" value="<?= date('Y-m-d') ?>">
                            </div>
                        </div>
                        
                        <!-- Filter Status -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="status">Status</label>
                                <select id="status" class="form-control">
                                    <option value="SEMUA">Semua Status</option>
                                    <option value="KELUAR">Keluar</option>
                                    <option value="KEMBALI">Kembali</option>
                                </select>
                            </div>
                        </div>
                        
                        <!-- Filter Status Konfirmasi -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="status_konfirmasi">Konfirmasi</label>
                                <select id="status_konfirmasi" class="form-control">
                                    <option value="SEMUA">Semua Konfirmasi</option>
                                    <option value="BELUM DIKONFIRMASI">Belum Dikonfirmasi</option>
                                    <option value="TERKONFIRMASI">Terkonfirmasi</option>
                                </select>
                            </div>
                        </div>
                        
                        <!-- Filter Santri -->
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="santri_id">Santri</label>
                                <select id="santri_id" class="form-control">
                                    <option value="">Semua Santri</option>
                                    <?php foreach ($data_get['santri_list'] as $santri): ?>
                                        <option value="<?= $santri['id'] ?>"><?= $santri['nama'] ?> (<?= $santri['nip'] ?>)</option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                        
                        <!-- Search -->
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="search">Pencarian</label>
                                <input type="text" id="search" class="form-control" placeholder="Cari nama, NIP, atau keterangan...">
                            </div>
                        </div>
                        
                        <!-- Buttons -->
                        <div class="col-md-12">
                            <hr>
                            <div class="btn-group btn-group-justified">
                                <div class="btn-group">
                                    <button class="btn btn-primary" type="button" onclick="proses_data()">
                                        <i class="icon-search4"></i> Cari Data
                                    </button>
                                </div>
                                <div class="btn-group">
                                    <button class="btn btn-default" type="button" onclick="reset_filter()">
                                        <i class="icon-reload-alt"></i> Reset
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Panel Data Ijin Pengurus -->
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading clearfix">
                <b class="panel-title pull-left">
                    <i class="icon-users4"></i> Data Ijin Pengurus
                </b>
                <div class="pull-right">
                    <div class="btn-group">
                        <button onclick="tambah_data();" class="btn btn-xs btn-success">
                            <i class="icon-plus3"></i> Tambah Data
                        </button>
                        <button onclick="export_excel();" class="btn btn-xs btn-info">
                            <i class="icon-file-excel"></i> Export Excel
                        </button>
                        <button onclick="setting_wa();" class="btn btn-xs btn-warning">
                            <i class="icon-cog"></i> Setting WA
                        </button>
                    </div>
                </div>
            </div>
            <div class="panel-body" id="perijinanList">
                <div class="alert alert-info text-center">
                    <i class="icon-info22"></i> Silakan gunakan filter di sebelah kiri untuk menampilkan data.
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal Tambah/Edit Data -->
<div class="modal fade" id="modalTambahEdit" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
                <h4 class="modal-title">
                    <i class="icon-plus3"></i> <span class="modal-title-text">Tambah Data Ijin</span>
                </h4>
            </div>
            <form id="formTambahEdit">
                <div class="modal-body">
                    <input type="hidden" name="id" id="edit_id">
                    
                    <div class="form-group">
                        <label for="edit_santri_id">Santri <span class="text-danger">*</span></label>
                        <select name="santri_id" id="edit_santri_id" class="form-control" required>
                            <option value="">Pilih Santri</option>
                            <?php foreach ($data_get['santri_list'] as $santri): ?>
                                <option value="<?= $santri['id'] ?>"><?= $santri['nama'] ?> (<?= $santri['nip'] ?>)</option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="edit_keterangan">Keterangan <span class="text-danger">*</span></label>
                        <textarea name="keterangan" id="edit_keterangan" class="form-control" rows="3" placeholder="Masukkan keterangan ijin..." required></textarea>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="edit_waktu_keluar">Waktu Keluar <span class="text-danger">*</span></label>
                                <input type="datetime-local" name="waktu_keluar" id="edit_waktu_keluar" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="edit_waktu_kembali">Waktu Kembali</label>
                                <input type="datetime-local" name="waktu_kembali" id="edit_waktu_kembali" class="form-control">
                                <small class="help-block">Kosongkan jika belum ada rencana kembali</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        <i class="icon-cross"></i> Batal
                    </button>
                    <button type="submit" class="btn btn-primary">
                        <i class="icon-floppy-disk"></i> Simpan
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal Konfirmasi Status -->
<div class="modal fade" id="modalKonfirmasiStatus" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
                <h4 class="modal-title">
                    <i class="icon-checkmark4"></i> Konfirmasi Status Ijin
                </h4>
            </div>
            <form id="formKonfirmasiStatus">
                <div class="modal-body">
                    <input type="hidden" name="id" id="konfirmasi_id">
                    
                    <div class="alert alert-info">
                        <i class="icon-info22"></i> 
                        <strong>Data Santri:</strong><br>
                        <span id="konfirmasi_santri_info"></span>
                    </div>
                    
                    <div class="form-group">
                        <label for="konfirmasi_status">Status Konfirmasi</label>
                        <select name="konfirmasi_keluar" id="konfirmasi_status" class="form-control">
                            <option value="BELUM DIKONFIRMASI">Belum Dikonfirmasi</option>
                            <option value="TERKONFIRMASI">Terkonfirmasi</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="keterangan_admin">Catatan Admin</label>
                        <textarea name="keterangan_admin" id="keterangan_admin" class="form-control" rows="3" placeholder="Tambahkan catatan jika diperlukan..."></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        <i class="icon-cross"></i> Batal
                    </button>
                    <button type="submit" class="btn btn-primary">
                        <i class="icon-floppy-disk"></i> Simpan
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal Setting Multiple Nomor WA -->
<div class="modal fade" id="modalWaSetting" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
                <h4 class="modal-title">
                    <i class="icon-cog"></i> Setting Notifikasi WhatsApp - Ijin Pengurus
                </h4>
            </div>
            <div class="modal-body">
                <!-- Form Tambah WA -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h5 class="panel-title">
                            <i class="icon-plus3"></i> Tambah Penerima Baru
                        </h5>
                    </div>
                    <div class="panel-body">
                        <form id="formTambahWa">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label for="namaWa">Nama Penerima</label>
                                        <input type="text" class="form-control" id="namaWa" placeholder="Contoh: Ketua Pengurus">
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label for="nomorWa">Nomor WhatsApp</label>
                                        <input type="text" class="form-control" id="nomorWa" placeholder="628xxxxxxxxxx">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label>&nbsp;</label>
                                        <button type="button" class="btn btn-success btn-block" onclick="tambahPenerimaWa()">
                                            <i class="icon-plus3"></i> Tambah
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <p class="help-block">
                                <i class="icon-info22"></i> Gunakan format: 628xxxxxxxxxx (tanpa tanda + atau spasi)
                            </p>
                        </form>
                    </div>
                </div>

                <!-- Daftar Penerima WA -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5 class="panel-title">
                            <i class="icon-users4"></i> Daftar Penerima Notifikasi
                        </h5>
                    </div>
                    <div class="panel-body">
                        <div id="daftarPenerimaWa">
                            <div class="text-center">
                                <i class="icon-spinner icon-spin"></i> Memuat data...
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    <i class="icon-cross"></i> Tutup
                </button>
            </div>
        </div>
    </div>
</div>