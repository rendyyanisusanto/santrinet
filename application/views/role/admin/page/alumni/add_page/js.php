<script>
    load_table_santri();

    function load_table_santri(search='', opt=''){
        send_ajax('Alumni/get_table_kamar_santri',{search:search, opt:opt}).then(function(data){
            $('#santriList').html(data);
        });
    }

    function filterSantri(){
        var search = $('#searchSantri').val();
        var opt = $('#asrama_id').val();
        load_table_santri(search, opt);
    }

    function tampilkanLulusan(){
        var tahun_lulus = $('#tahunLulusSelect').val();
        
        send_ajax('Alumni/get_table_lulusan',{tahun_lulus:tahun_lulus}).then(function(data){
            $('#alumniList').html(data);
        });
    }

    function tambahLulusan(id){
        var tahun_lulus = $('#tahunLulusSelect').val();
        if(tahun_lulus == ''){
            toastr.error('Pilih tahun terlebih dahulu');
            
        }else{

            send_ajax('Alumni/add_lulusan',{santri_id:id, tahun_lulus:tahun_lulus}).then(function(data){
                var response = JSON.parse(data);
                        if (response.status == 200) {
                            toastr.success(response.msg);
                            load_table_santri();
                            tampilkanLulusan();
                        }else{
                            toastr.error(response.msg);
                        }
    
            });
        }
    }

    function hapus_alumni(id){
        send_ajax('Alumni/delete_alumni',{id:id}).then(function(data){
            var response = JSON.parse(data);
            if (response.status == 200) {
			            toastr.success(response.msg);
                        load_table_santri();
                        tampilkanLulusan();
		            }else{
			            toastr.error(response.msg);
		            }
        })
    }
</script>