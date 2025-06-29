<script>
    load_table_santri();

    function load_table_santri(search='', opt=''){
        send_ajax('Madin/get_table_peserta_madin',{search:search, opt:opt}).then(function(data){
            $('#santriList').html(data);
        });
    }

    function filterSantri(){
        var search = $('#searchSantri').val();
        var opt = $('#asrama_id').val();
        load_table_santri(search, opt);
    }

    function tampilkanPesertaMadin(){
        var id = $('#madinSelect').val();
        
        send_ajax('Madin/get_peserta_madin',{id:id}).then(function(data){
            $('#pesertaMadinList').html(data);
        });
    }

    function tambahPesertaMadin(id){
        var madin_id = $('#madinSelect').val();
        if(madin_id == ''){
            toastr.error('Pilih kelas madin terlebih dahulu');
            
        }else{

            send_ajax('Madin/add_peserta_madin',{santri_id:id, madin_id:madin_id}).then(function(data){
                var response = JSON.parse(data);
                        if (response.status == 200) {
                            toastr.success(response.msg);
                            load_table_santri();
                            tampilkanPesertaMadin();
                        }else{
                            toastr.error(response.msg);
                        }
    
            });
        }
    }

    function hapus_santri(id){
        send_ajax('Madin/delete_peserta_madin',{id:id}).then(function(data){
            var response = JSON.parse(data);
            if (response.status == 200) {
			            toastr.success(response.msg);
                        load_table_santri();
                        tampilkanPesertaMadin();
		            }else{
			            toastr.error(response.msg);
		            }
        })
    }
</script>