<script>
    proses_data();
    function proses_data(){
        let id = $('#kamar_id').val();

        send_ajax('Presensi_harian/proses_data_kamar', {id:id}).then(function(data){
            $('.content-data').html(data);
        })
    }
</script>