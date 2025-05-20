<script>
    load_table_santri();

    function load_table_santri(search='', opt=''){
        send_ajax('sekolah/get_table_peserta_sekolah',{search:search, opt:opt}).then(function(data){
            $('#santriList').html(data);
        });
    }

    function filterSantri(){
        var search = $('#searchSantri').val();
        var opt = $('#asrama_id').val();
        load_table_santri(search, opt);
    }

    function tampilkanPesertasekolah(){
        var id = $('#sekolahSelect').val();
        
        send_ajax('sekolah/get_peserta_sekolah',{id:id}).then(function(data){
            $('#pesertasekolahList').html(data);
        });
    }

    function tambahPesertaSekolah(id){
        var sekolah_id = $('#sekolahSelect').val();
        if(sekolah_id == ''){
            toastr.error('Pilih Sekolah terlebih dahulu');
            
        }else{
            send_ajax('sekolah/add_peserta_sekolah',{santri_id:id, sekolah_id:sekolah_id}).then(function(data){
                var response = JSON.parse(data);
                        if (response.status == 200) {
                            toastr.success(response.msg);
                            load_table_santri();
                            tampilkanPesertasekolah();
                        }else{
                            toastr.error(response.msg);
                        }
    
            });
        }
    }

    function hapus_siswa(id){
        send_ajax('sekolah/delete_peserta_sekolah',{id:id}).then(function(data){
            var response = JSON.parse(data);
            if (response.status == 200) {
			            toastr.success(response.msg);
                        load_table_santri();
                        tampilkanPesertasekolah();
		            }else{
			            toastr.error(response.msg);
		            }
        })
    }
</script>