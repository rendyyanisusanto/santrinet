<script type="text/javascript">
    get_stats();
    get_graph();
    get_trans();
    function get_stats(type ="", dataDetail="", datestart="", dateend=""){
        send_ajax('Dashboard/get_stats',{type:type, dataDetail:dataDetail, datestart:datestart, dateend:dateend}).then(function(data){
            $('.content-stats').html(data);
        })
    }
    function get_graph(){
        send_ajax('Dashboard/get_graph').then(function(data){
            $('.content-graph').html(data);
        })
    }
    function get_trans(){
        send_ajax('Dashboard/get_trans').then(function(data){
            $('.content-trans').html(data);
        })
    }
    function filter_data(){
        
        get_stats($('.showName').val(), $('.dataDetail').val(), $('.dateStart').val(), $('.dateEnd').val());
        get_grap_penjualan($('.showName').val(), $('.dataDetail').val(), $('.dateStart').val(), $('.dateEnd').val());
        get_grap_produk($('.showName').val(), $('.dataDetail').val(), $('.dateStart').val(), $('.dateEnd').val());
        get_last_trans($('.showName').val(), $('.dataDetail').val(), $('.dateStart').val(), $('.dateEnd').val());
        get_top_spender($('.showName').val(), $('.dataDetail').val(), $('.dateStart').val(), $('.dateEnd').val());
        $('.modal-filter-penjualan').modal('toggle');

    }
    function showModal(){
        $('.modal-filter-penjualan').modal('toggle');
    }
</script>