<script>
    get_data();
    function get_data(){
        send_ajax_file('Pelanggaran/get_data_card',{}).then( function(data){
		
                $('.content-data').html(data);
            
        });
    }
</script>