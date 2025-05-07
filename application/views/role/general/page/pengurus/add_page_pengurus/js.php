<script>
    load_table_santri();

    function load_table_santri(search='', opt=''){
        send_ajax('Pengurus/get_table_pengurus_santri',{search:search, opt:opt}).then(function(data){
            $('#santriList').html(data);
        });
    }

    function filterSantri(){
        var search = $('#searchSantri').val();
        var opt = $('#asrama_id').val();
        load_table_santri(search, opt);
    }

    function tampilkanPengurus(){
        var id = $('#lembagaSelect').val();
        
        send_ajax('Pengurus/get_table_pengurus',{id:id}).then(function(data){
            $('#santriKamarList').html(data);
        });
    }

    function tambahPengurus(id){
        var lembaga_pengurus_id = $('#lembagaSelect').val();
        if(lembaga_pengurus_id == ''){
            toastr.error('Pilih Lembaga Pengurus terlebih dahulu');
            
        }else{

            send_ajax('Pengurus/save_table_pengurus',{santri_id:id, lembaga_pengurus_id:lembaga_pengurus_id}).then(function(data){
                var response = JSON.parse(data);
                        if (response.status == 200) {
                            toastr.success(response.msg);
                            load_table_santri();
                            tampilkanPengurus();
                        }else{
                            toastr.error(response.msg);
                        }
    
            });
        }
    }

    function hapus_pengurus(id){
        send_ajax('Pengurus/delete_item',{id:id}).then(function(data){
            var response = JSON.parse(data);
            if (response.status == 200) {
			            toastr.success(response.msg);
                        load_table_santri();
                        tampilkanPengurus();
		            }else{
			            toastr.error(response.msg);
		            }
        })
    }
</script>