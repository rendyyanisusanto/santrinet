<script>
    load_table_santri();

    function load_table_santri(search=''){
        send_ajax('Kamar/get_table_kamar_santri',{search:search}).then(function(data){
            $('#santriList').html(data);
        });
    }

    function filterSantri(){
        var search = $('#searchSantri').val();
        load_table_santri(search);
    }

    function tampilkanSantriDiKamar(){
        var id = $('#kamarSelect').val();
        
        send_ajax('Kamar/get_table_kamar_for_santri',{id:id}).then(function(data){
            $('#santriKamarList').html(data);
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