<script>
    load_table_santri();
    tampilkanasatid();
    function load_table_santri(search='', opt=''){
        send_ajax('asatid/get_table_asatid_santri',{search:search, opt:opt}).then(function(data){
            $('#santriList').html(data);
        });
    }

    function filterSantri(){
        var search = $('#searchSantri').val();
        var opt = $('#asrama_id').val();
        load_table_santri(search, opt);
    }

    function tampilkanasatid(){
        send_ajax('asatid/get_table_asatid',{}).then(function(data){
            $('#asatidList').html(data);
        });
    }

    function tambahAsatid(id){
            send_ajax('asatid/save_table_asatid',{santri_id:id}).then(function(data){
                var response = JSON.parse(data);
                        if (response.status == 200) {
                            toastr.success(response.msg);
                            load_table_santri();
                            tampilkanasatid();
                        }else{
                            toastr.error(response.msg);
                        }
    
            });
    }

    function hapus_asatid(id){
        send_ajax('asatid/delete_item',{id:id}).then(function(data){
            var response = JSON.parse(data);
            if (response.status == 200) {
			            toastr.success(response.msg);
                        load_table_santri();
                        tampilkanasatid();
		            }else{
			            toastr.error(response.msg);
		            }
        })
    }
</script>