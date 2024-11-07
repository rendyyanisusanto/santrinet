<script>
    $('.select').select2();
    get_index();
    function get_index(){
        send_ajax('Laporan_rekam_medis/get_index').then(function(data){
            $('.content-index').html(data);
        })
    }
    </script>