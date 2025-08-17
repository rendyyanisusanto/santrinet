<script>
proses_data();
function proses_data() {
    let tanggal = $('.tanggal').val();

    if (!tanggal) {
        alert('Tanggal tidak boleh kosong!');
        return;
    }

    send_ajax('Ijin_pengurus/proses_data', { tanggal: tanggal })
        .then(function (data) {
            $('#perijinanList').html(data);
        })
        .catch(function (err) {
            console.error(err);
            alert('Terjadi kesalahan memproses data');
        });
}

function change_status(id, keluar, keterangan) {
    
    $('.inp-id').val(id);
    $('.submit-status select[name="konfirmasi_keluar"]').val((keluar == 0) ? "BELUM DIKONFIRMASI" : "TERKONFIRMASI");
    $('.submit-status .keterangan').val(keterangan);
    $('.modal-change-status').modal('toggle');
}

$('.submit-status').on('submit', function(e){
        // console.log(check);
        send_ajax($(this).attr('action'),$(this).serialize()).then(function(data){
            var resp = JSON.parse(data);
            if (resp.status == 200) {
                toastr.success(resp.msg);
            } else {
                toastr.error(resp.msg);
            }
            proses_data();
            $('.modal-change-status').modal('toggle');
        })
        return false;
    });

function setting_wa() {
    send_ajax('Ijin_pengurus/setting_wa', {})
        .then(function (data) {
            let waData = JSON.parse(data);
            $('#nomorWa').val(waData.wa_number.val);
            $('#modalWaSetting').modal('toggle');
        })
}   

function simpanNomorWa() {
    let nomorWa = $('#nomorWa').val();
    if (!nomorWa) {
        alert('Nomor WhatsApp tidak boleh kosong!');
        return;
    }
    send_ajax('Ijin_pengurus/simpan_nomor_wa', { nomor: nomorWa })
        .then(function (data) {
            let resp = JSON.parse(data); 
            if (resp.status == 200) {
                toastr.success(resp.msg);
            } else {
                toastr.error(resp.msg);
            }
            $('#modalWaSetting').modal('toggle');
        })
    
}
    
</script>