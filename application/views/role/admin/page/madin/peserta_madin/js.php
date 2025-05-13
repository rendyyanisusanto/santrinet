<script>
    load_table_santri();

    function load_table_santri(search='', opt=''){
        send_ajax('Madin/get_table_kamar_santri',{search:search, opt:opt}).then(function(data){
            $('#santriList').html(data);
        });
    }

    function filterSantri(){
        var search = $('#searchSantri').val();
        var opt = $('#asrama_id').val();
        load_table_santri(search, opt);
    }

    function tampilkanPesertaMadin(){
        var id = $('#kamarSelect').val();
        
        send_ajax('Madin/get_peserta_madin',{id:id}).then(function(data){
            $('#pesertaMadinList').html(data);
        });
    }

    function tambahSantriKamar(id){
        var kamar_id = $('#kamarSelect').val();
        if(kamar_id == ''){
            toastr.error('Pilih kamar terlebih dahulu');
            
        }else{

            send_ajax('Kamar/add_kamar_santri',{santri_id:id, kamar_id:kamar_id}).then(function(data){
                var response = JSON.parse(data);
                        if (response.status == 200) {
                            toastr.success(response.msg);
                            load_table_santri();
                            tampilkanSantriDiKamar();
                        }else{
                            toastr.error(response.msg);
                        }
    
            });
        }
    }

    function hapus_santri(id){
        send_ajax('Kamar/delete_kamar_santri',{id:id}).then(function(data){
            var response = JSON.parse(data);
            if (response.status == 200) {
			            toastr.success(response.msg);
                        load_table_santri();
                        tampilkanSantriDiKamar();
		            }else{
			            toastr.error(response.msg);
		            }
        })
    }
</script>