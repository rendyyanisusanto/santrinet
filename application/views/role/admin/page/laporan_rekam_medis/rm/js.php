<script>
    $('.select').select2();
    get_index();
    function get_index(){
        send_ajax('Laporan_rekam_medis/get_index').then(function(data){
            $('.content-index').html(data);
        })
    }
    function get_index(){
        send_ajax('Laporan_rekam_medis/get_index').then(function(data){
            $('.content-index').html(data);
        })
    }
    function get_rm_daily(){
        frm = $('#app-rm-daily').serialize();
        send_ajax('Laporan_rekam_medis/rm_daily', frm).then(function(data){
            $('.content-rm-daily').html(data);
        })   
    }

    function detail_rm_tanggal(tanggal){
        send_ajax('Laporan_rekam_medis/detail_rm_tanggal', {tanggal:tanggal}).then(function(data){
            $('.modal-rm-tanggal').modal('toggle');
            $('.modal-rm-tanggal-div').html(data);
        })
    }
    </script>