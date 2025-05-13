<script>
    load_table_santri();

    function load_table_santri(search='', opt=''){
        send_ajax('tahfidz/get_table_peserta_tahfidz',{search:search, opt:opt}).then(function(data){
            $('#santriList').html(data);
        });
    }

    function filterSantri(){
        var search = $('#searchSantri').val();
        var opt = $('#asrama_id').val();
        load_table_santri(search, opt);
    }

    function tampilkanPesertatahfidz(){
        var id = $('#tahfidzSelect').val();
        
        send_ajax('tahfidz/get_peserta_tahfidz',{id:id}).then(function(data){
            $('#pesertatahfidzList').html(data);
        });
    }

    function tambahPesertatahfidz(id){
        var tahfidz_id = $('#tahfidzSelect').val();
        if(tahfidz_id == ''){
            toastr.error('Pilih kelas tahfidz terlebih dahulu');
            
        }else{

            send_ajax('tahfidz/add_peserta_tahfidz',{santri_id:id, tahfidz_id:tahfidz_id}).then(function(data){
                var response = JSON.parse(data);
                        if (response.status == 200) {
                            toastr.success(response.msg);
                            load_table_santri();
                            tampilkanPesertatahfidz();
                        }else{
                            toastr.error(response.msg);
                        }
    
            });
        }
    }

    function hapus_santri(id){
        send_ajax('tahfidz/delete_peserta_tahfidz',{id:id}).then(function(data){
            var response = JSON.parse(data);
            if (response.status == 200) {
			            toastr.success(response.msg);
                        load_table_santri();
                        tampilkanPesertatahfidz();
		            }else{
			            toastr.error(response.msg);
		            }
        })
    }
</script>