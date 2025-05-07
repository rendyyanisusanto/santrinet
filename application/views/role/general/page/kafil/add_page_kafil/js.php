<script>
    load_table_santri();
    tampilkankafil();
    function load_table_santri(search='', opt=''){
        send_ajax('kafil/get_table_kafil_santri',{search:search, opt:opt}).then(function(data){
            $('#santriList').html(data);
        });
    }

    function filterSantri(){
        var search = $('#searchSantri').val();
        var opt = $('#asrama_id').val();
        load_table_santri(search, opt);
    }

    function tampilkankafil(){
        send_ajax('kafil/get_table_kafil',{}).then(function(data){
            $('#kafilList').html(data);
        });
    }

    function tambahkafil(id){
            send_ajax('kafil/save_table_kafil',{santri_id:id}).then(function(data){
                var response = JSON.parse(data);
                        if (response.status == 200) {
                            toastr.success(response.msg);
                            load_table_santri();
                            tampilkankafil();
                        }else{
                            toastr.error(response.msg);
                        }
    
            });
    }

    function hapus_kafil(id){
        send_ajax('kafil/delete_item',{id:id}).then(function(data){
            var response = JSON.parse(data);
            if (response.status == 200) {
			            toastr.success(response.msg);
                        load_table_santri();
                        tampilkankafil();
		            }else{
			            toastr.error(response.msg);
		            }
        })
    }
</script>