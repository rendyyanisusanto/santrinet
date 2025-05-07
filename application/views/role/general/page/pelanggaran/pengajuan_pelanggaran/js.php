<script>
    get_pengajuan();
    function get_pengajuan(){
        send_ajax('Pelanggaran/get_pengajuan', {}).then(function(response){
            $('.content-pengajuan').html(response);
        });
        
    }
</script>