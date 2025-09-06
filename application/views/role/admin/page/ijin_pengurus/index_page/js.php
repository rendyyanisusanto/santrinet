<script>
    // Load data saat pertama kali
$(document).ready(function() {
    proses_data();
});

// Fungsi utama untuk memproses data
function proses_data() {
    let tanggal_dari = $('#tanggal_dari').val();
    let tanggal_sampai = $('#tanggal_sampai').val();
    let status = $('#status').val();
    let status_konfirmasi = $('#status_konfirmasi').val();
    let santri_id = $('#santri_id').val();
    let search = $('#search').val();

    if (!tanggal_dari && !tanggal_sampai && !search && (!santri_id || santri_id === '')) {
        $('#perijinanList').html(`
            <div class="alert alert-warning text-center">
                <i class="icon-warning22"></i> 
                Mohon pilih minimal satu filter (tanggal, santri, atau kata kunci pencarian) untuk menampilkan data.
            </div>
        `);
        return;
    }

    // Show loading
    $('#perijinanList').html(`
        <div class="text-center">
            <i class="icon-spinner icon-spin"></i> 
            <strong>Memproses data...</strong>
        </div>
    `);

    const filterData = {
        tanggal_dari: tanggal_dari,
        tanggal_sampai: tanggal_sampai,
        status: status,
        status_konfirmasi: status_konfirmasi,
        santri_id: santri_id,
        search: search
    };

    send_ajax('Ijin_pengurus/proses_data', filterData)
        .then(function (data) {
            $('#perijinanList').html(data);
        })
        .catch(function (err) {
            console.error(err);
            $('#perijinanList').html(`
                <div class="alert alert-danger text-center">
                    <i class="icon-cross"></i> 
                    <strong>Terjadi kesalahan memproses data</strong><br>
                    <small>Silakan coba lagi atau hubungi administrator</small>
                </div>
            `);
        });
}

// Reset filter
function reset_filter() {
    $('#tanggal_dari').val(new Date().toISOString().split('T')[0]);
    $('#tanggal_sampai').val(new Date().toISOString().split('T')[0]);
    $('#status').val('SEMUA');
    $('#status_konfirmasi').val('SEMUA');
    $('#santri_id').val('');
    $('#search').val('');
    proses_data();
}

// Tambah data baru
function tambah_data() {
    $('#modalTambahEdit').modal('show');
    $('.modal-title-text').text('Tambah Data Ijin');
    $('#formTambahEdit')[0].reset();
    $('#edit_id').val('');
    $('#edit_waktu_keluar').val(new Date().toISOString().slice(0, 16));
}

// Edit data
function edit_data(id) {
    send_ajax('Ijin_pengurus/get_detail', { id: id })
        .then(function (response) {
            const resp = JSON.parse(response);
            if (resp.status == 200) {
                const data = resp.data;
                
                $('#modalTambahEdit').modal('show');
                $('.modal-title-text').text('Edit Data Ijin');
                
                $('#edit_id').val(data.id);
                $('#edit_santri_id').val(data.santri_id);
                $('#edit_keterangan').val(data.keterangan);
                $('#edit_waktu_keluar').val(data.waktu_keluar ? data.waktu_keluar.replace(' ', 'T') : '');
                $('#edit_waktu_kembali').val(data.waktu_kembali ? data.waktu_kembali.replace(' ', 'T') : '');
            } else {
                toastr.error(resp.msg);
            }
        })
        .catch(function (err) {
            console.error(err);
            toastr.error('Terjadi kesalahan saat mengambil data');
        });
}

// Submit form tambah/edit
$('#formTambahEdit').on('submit', function(e) {
    e.preventDefault();
    
    const formData = $(this).serialize();
    const id = $('#edit_id').val();
    const action = id ? 'edit_data' : 'tambah_data';
    
    send_ajax('Ijin_pengurus/' + action, formData)
        .then(function (response) {
            const resp = JSON.parse(response);
            if (resp.status == 200) {
                toastr.success(resp.msg);
                $('#modalTambahEdit').modal('hide');
                proses_data();
            } else {
                toastr.error(resp.msg);
            }
        })
        .catch(function (err) {
            console.error(err);
            toastr.error('Terjadi kesalahan saat menyimpan data');
        });
});

// Hapus data
function hapus_data(id, nama) {
    if (!confirm(`Yakin ingin menghapus data ijin untuk "${nama}"?\n\nData yang dihapus tidak dapat dikembalikan.`)) {
        return;
    }

    send_ajax('Ijin_pengurus/hapus_data', { id: id })
        .then(function (response) {
            const resp = JSON.parse(response);
            if (resp.status == 200) {
                toastr.success(resp.msg);
                proses_data();
            } else {
                toastr.error(resp.msg);
            }
        })
        .catch(function (err) {
            console.error(err);
            toastr.error('Terjadi kesalahan saat menghapus data');
        });
}

// Konfirmasi status
function konfirmasi_status(id, nama, nip, keterangan, statusKonfirmasi) {
    $('#modalKonfirmasiStatus').modal('show');
    $('#konfirmasi_id').val(id);
    $('#konfirmasi_santri_info').html(`
        <strong>${nama}</strong> (${nip})<br>
        <small>Keterangan: ${keterangan}</small>
    `);
    $('#konfirmasi_status').val(statusKonfirmasi == 1 ? 'TERKONFIRMASI' : 'BELUM DIKONFIRMASI');
    $('#keterangan_admin').val('');
}

// Submit konfirmasi status
$('#formKonfirmasiStatus').on('submit', function(e) {
    e.preventDefault();
    
    const formData = $(this).serialize();
    
    send_ajax('Ijin_pengurus/ubah_status', formData)
        .then(function (response) {
            const resp = JSON.parse(response);
            if (resp.status == 200) {
                toastr.success(resp.msg);
                $('#modalKonfirmasiStatus').modal('hide');
                proses_data();
            } else {
                toastr.error(resp.msg);
            }
        })
        .catch(function (err) {
            console.error(err);
            toastr.error('Terjadi kesalahan saat mengubah status');
        });
});

// Export Excel
function export_excel() {
    const params = new URLSearchParams({
        tanggal_dari: $('#tanggal_dari').val(),
        tanggal_sampai: $('#tanggal_sampai').val(),
        status: $('#status').val(),
        status_konfirmasi: $('#status_konfirmasi').val()
    });
    
    window.open(`Ijin_pengurus/export_excel?${params.toString()}`, '_blank');
    toastr.info('File Excel sedang diproses...');
}

// Setting WhatsApp
function setting_wa() {
    $('#modalWaSetting').modal('show');
    loadDaftarPenerimaWa();
}

function loadDaftarPenerimaWa() {
    $('#daftarPenerimaWa').html(`
        <div class="text-center">
            <i class="icon-spinner icon-spin"></i> Memuat data...
        </div>
    `);

    send_ajax('Ijin_pengurus/get_wa_recipients', { fitur: 'ijin_pengurus' })
        .then(function (response) {
            const resp = JSON.parse(response);
            let html = '';
            
            if (resp.data.length === 0) {
                html = `
                    <div class="alert alert-info text-center">
                        <i class="icon-info22"></i> 
                        Belum ada penerima notifikasi yang ditambahkan.
                    </div>
                `;
            } else {
                html = `
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th width="5%">No</th>
                                    <th width="30%">Nama</th>
                                    <th width="25%">Nomor WA</th>
                                    <th width="15%">Status</th>
                                    <th width="25%">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                `;
                
                resp.data.forEach(function(item, index) {
                    const badgeClass = item.is_active == '1' ? 'success' : 'danger';
                    const statusText = item.is_active == '1' ? 'Aktif' : 'Nonaktif';
                    const toggleText = item.is_active == '1' ? 'Nonaktifkan' : 'Aktifkan';
                    const toggleClass = item.is_active == '1' ? 'warning' : 'success';
                    const toggleIcon = item.is_active == '1' ? 'pause' : 'play';
                    
                    html += `
                        <tr>
                            <td>${index + 1}</td>
                            <td>${item.nama}</td>
                            <td>${item.nomor_wa}</td>
                            <td>
                                <span class="badge badge-${badgeClass}">${statusText}</span>
                            </td>
                            <td>
                                <div class="btn-group btn-group-xs">
                                    <button class="btn btn-${toggleClass}" 
                                            onclick="toggleStatusWa(${item.id}, ${item.is_active})" 
                                            title="${toggleText}">
                                        <i class="icon-${toggleIcon}"></i>
                                    </button>
                                    <button class="btn btn-primary" 
                                            onclick="editPenerimaWa(${item.id}, '${item.nama}', '${item.nomor_wa}')" 
                                            title="Edit">
                                        <i class="icon-pencil"></i>
                                    </button>
                                    <button class="btn btn-danger" 
                                            onclick="hapusPenerimaWa(${item.id}, '${item.nama}')" 
                                            title="Hapus">
                                        <i class="icon-trash"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                    `;
                });
                
                html += `
                            </tbody>
                        </table>
                    </div>
                `;
            }
            
            $('#daftarPenerimaWa').html(html);
        })
        .catch(function (err) {
            console.error(err);
            $('#daftarPenerimaWa').html(`
                <div class="alert alert-danger text-center">
                    <i class="icon-cross"></i> Gagal memuat data penerima WA.
                </div>
            `);
        });
}

function tambahPenerimaWa() {
    const nama = $('#namaWa').val().trim();
    const nomor = $('#nomorWa').val().trim();
    
    if (!nama || !nomor) {
        toastr.error('Nama dan nomor WhatsApp tidak boleh kosong!');
        return;
    }
    
    // Validasi format nomor WA
    if (!nomor.match(/^62\d{9,13}$/)) {
        toastr.error('Format nomor WhatsApp tidak valid!\nGunakan format: 628xxxxxxxxxx');
        return;
    }
    
    send_ajax('Ijin_pengurus/tambah_wa_recipient', {
        nama: nama,
        nomor_wa: nomor,
        fitur: 'ijin_pengurus'
    })
    .then(function (response) {
        const resp = JSON.parse(response);
        if (resp.status == 200) {
            toastr.success(resp.msg);
            $('#namaWa').val('');
            $('#nomorWa').val('');
            loadDaftarPenerimaWa();
        } else {
            toastr.error(resp.msg);
        }
    })
    .catch(function (err) {
        console.error(err);
        toastr.error('Terjadi kesalahan saat menambah penerima WA');
    });
}

function toggleStatusWa(id, currentStatus) {
    const newStatus = currentStatus == 1 ? 0 : 1;
    const confirmText = newStatus == 1 ? 'aktifkan' : 'nonaktifkan';
    
    if (!confirm(`Yakin ingin ${confirmText} penerima WA ini?`)) {
        return;
    }
    
    send_ajax('Ijin_pengurus/toggle_wa_recipient', {
        id: id,
        status: newStatus
    })
    .then(function (response) {
        const resp = JSON.parse(response);
        if (resp.status == 200) {
            toastr.success(resp.msg);
            loadDaftarPenerimaWa();
        } else {
            toastr.error(resp.msg);
        }
    })
    .catch(function (err) {
        console.error(err);
        toastr.error('Terjadi kesalahan saat mengubah status');
    });
}

function editPenerimaWa(id, nama, nomor) {
    const newNama = prompt('Edit nama penerima:', nama);
    if (newNama === null) return;
    
    const newNomor = prompt('Edit nomor WhatsApp:', nomor);
    if (newNomor === null) return;
    
    if (!newNama.trim() || !newNomor.trim()) {
        toastr.error('Nama dan nomor tidak boleh kosong!');
        return;
    }
    
    if (!newNomor.match(/^62\d{9,13}$/)) {
        toastr.error('Format nomor WhatsApp tidak valid!\nGunakan format: 628xxxxxxxxxx');
        return;
    }
    
    send_ajax('Ijin_pengurus/edit_wa_recipient', {
        id: id,
        nama: newNama.trim(),
        nomor_wa: newNomor.trim()
    })
    .then(function (response) {
        const resp = JSON.parse(response);
        if (resp.status == 200) {
            toastr.success(resp.msg);
            loadDaftarPenerimaWa();
        } else {
            toastr.error(resp.msg);
        }
    })
    .catch(function (err) {
        console.error(err);
        toastr.error('Terjadi kesalahan saat mengedit penerima WA');
    });
}

function hapusPenerimaWa(id, nama) {
    if (!confirm(`Yakin ingin menghapus penerima WA "${nama}"?\n\nData yang dihapus tidak dapat dikembalikan.`)) {
        return;
    }
    
    send_ajax('Ijin_pengurus/hapus_wa_recipient', { id: id })
        .then(function (response) {
            const resp = JSON.parse(response);
            if (resp.status == 200) {
                toastr.success(resp.msg);
                loadDaftarPenerimaWa();
            } else {
                toastr.error(resp.msg);
            }
        })
        .catch(function (err) {
            console.error(err);
            toastr.error('Terjadi kesalahan saat menghapus penerima WA');
        });
}

// Event listeners
$('#search').on('keypress', function(e) {
    if (e.which == 13) { // Enter key
        proses_data();
    }
});

// Auto search dengan debounce
let searchTimeout;
$('#search').on('input', function() {
    clearTimeout(searchTimeout);
    searchTimeout = setTimeout(function() {
        if ($('#search').val().length >= 3 || $('#search').val().length === 0) {
            proses_data();
        }
    }, 500);
});
    
</script>