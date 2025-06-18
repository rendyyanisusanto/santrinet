<script type="text/javascript">
    $('.submit-print').on('submit', function(e){
        var check = [];
        if ($("input[name='get-check']:checked").length>0) {
            $.each($("input[name='get-check']:checked"), function(){            
                check.push($(this).val());
            });
        }
        // console.log(check);
        send_ajax($(this).attr('action'),{
            cetak:$('input[name="cetak"]:checked').val(), 
            data_get:check
            }).then(function(data){
            var tab = window.open('about:blank', '_blank');
            tab.document.write(data); 
            tab.document.close(); 
        })
        return false;
    });

    $('.submit-excel').on('submit', function(e){
        var check = [];
        if ($("input[name='get-check']:checked").length>0) {
            $.each($("input[name='get-check']:checked"), function(){            
                check.push($(this).val());
            });
        }
        // console.log(check);
        send_ajax($(this).attr('action'),{
            cetak:$('input[name="cetak_excel"]:checked').val(), 
            data_get:check
            }).then(function(data){
            var resp = JSON.parse(data);
            var tab = window.open(resp.file, '_blank');

        })
        return false;
    });
    $('.submit-pdf').on('submit', function(e){
        var check = [];
        if ($("input[name='get-check']:checked").length>0) {
            $.each($("input[name='get-check']:checked"), function(){            
                check.push($(this).val());
            });
        }
        // console.log(check);
        send_ajax($(this).attr('action'),{
            cetak:$('input[name="cetak_pdf"]:checked').val(), 
            data_get:check
            }).then(function(data){
            // var resp = JSON.parse(data);
            // alert(data);
            var tab = window.open("<?php echo base_url('inc/pdf_temp/');?>"+data+".pdf", '_blank');

            // tab.document.close(); 
        })
        return false;
    });

    var table=$('#tabel-data').DataTable( {
       "processing": true, 
            "serverSide": true, 
            "ordering": false, 
             
            "ajax": {
                "url": "<?php echo $data_get['param']['table'] ?>/datatable",
                "type": "POST",
                "data" : function(data){
                    data.kode = $('.kode').val();
                    data.nama = $('.nama').val();
                    data.status_aktif = $('.status_aktif').val();
                }
            },
 
            "columnDefs": [
            { 
                "targets": [ 0], 
                "orderable": false, 
            },
            ],
    } );

    
    function riwayat_terhapus()
    {
        $('.status_aktif').val(0);
        table.ajax.reload();
        $('.btn-riwayat').html('<i class="icon-spinner"></i> Data Aktif');
        $('.btn-riwayat').attr('onclick', 'data_aktif()');
        $('.btn-riwayat').removeClass('btn-danger');
        $('.btn-riwayat').addClass('btn-success');    
    }
    function data_aktif()
    {
        $('.status_aktif').val(1);
        table.ajax.reload();
        $('.btn-riwayat').html('<i class="icon-trash"></i> Riwayat Terhapus');
        $('.btn-riwayat').attr('onclick', 'riwayat_terhapus()');
        $('.btn-riwayat').addClass('btn-danger');
        $('.btn-riwayat').removeClass('btn-success');    
    }

    function search()
    {
        table.ajax.reload();
        $('.modal-custom-search').modal('toggle');
    }
    $('#filter_submit').on('click',function(){
        table.ajax.reload();
    });  

    $('.bulk-check').on('click', function(e){
        e.stopImmediatePropagation();
        $('input:checkbox').not(this).prop('checked', this.checked);
        bulk_checkbox();
    })
    function print(){
        $('.total_data_print').text('('+$("input[name='get-check']:checked").length+')');
        if ($("input[name='get-check']:checked").length == 0) {
            $('.selected_data').attr('disabled', true);
        }else{
            $('.selected_data').attr('disabled', false);
        }
        $('.modal-print').modal('toggle');
    }
    function print_excel(){
        $('.total_data_print').text('('+$("input[name='get-check']:checked").length+')');
        if ($("input[name='get-check']:checked").length == 0) {
            $('.selected_data').attr('disabled', true);
        }else{
            $('.selected_data').attr('disabled', false);
        }
        $('.modal-excel').modal('toggle');
    }
    function print_pdf(){
        $('.total_data_print').text('('+$("input[name='get-check']:checked").length+')');
        if ($("input[name='get-check']:checked").length == 0) {
            $('.selected_data').attr('disabled', true);
        }else{
            $('.selected_data').attr('disabled', false);
        }
        $('.modal-pdf').modal('toggle');
    }
    function custom_search()
    {
        $('.modal-custom-search').modal('toggle');
    }
    function bulk_delete(){
        var check = [];
            if ($("input[name='get-check']:checked").length==0) {

                toastr.options.positionClass = "toast-bottom-right";
                toastr.options.progressBar = true;
                toastr.options.closeButton = true;
                toastr.error('PILIH DATA TERLEBIH DAHULU');
            }else{

                
                let pin = prompt("Masukkan PIN User:", "");
                if (pin == null || pin == "") {

                } else {
                    send_ajax('<?php echo $data_get['param']['table'] ?>/get_pin',{pin:pin}).then(function(data){
                        var response = JSON.parse(data);
                        if (response.status==200 && response.ans==true) {
                            $.each($("input[name='get-check']:checked"), function(){            
                                check.push($(this).val());
                            });
                            $.ajax({
                                url : '<?php echo $data_get['param']['table'] ?>/bulk_delete',
                                type: "POST",
                                data: {data_get:check},
                                success: function (data_delete) {
                                    var resp_delete = JSON.parse(data_delete);
                                    toastr.success(resp_delete.msg);

                                    $('.btn-bulk-delete').css('display', 'none');
                                    table.ajax.reload();
                                    

                                },
                                error: function (jXHR, textStatus, errorThrown) {
                                    alert(errorThrown);
                                }
                            });
                        }else{
                            alert('Pin yang anda masukkan salah')
                        }
                    });
                }
                
               
            }
    }
    function bulk_checkbox(id=""){
        var check = [];

        $.each($("input[name='get-check']:checked"), function(){            
            check.push($(this).val());
        });

        if (check.length > 0) {
            $('.btn-bulk-delete').css('display', '');
        }else{
            $('.btn-bulk-delete').css('display', 'none');
        }
        $('.btn-bulk-delete').html('<i class="icon-close2"></i> Hapus Data ('+check.length+')');

    }
    function delete_item(id="")
    {
        if (id != '') {
            let pin = prompt("Masukkan PIN User:", "");
            if (pin == null || pin == "") {
                    
            } else {

                send_ajax('<?php echo $data_get['param']['table'] ?>/get_pin',{pin:pin}).then(function(data){
                    var response = JSON.parse(data);
                    if (response.status==200 && response.ans==true) {
                        send_ajax("<?php echo $data_get['param']['table'] ?>/delete_item", {id:id}).then(function(data_delete){
                            var resp_delete = JSON.parse(data_delete);
                            toastr.success(resp_delete.msg);
                            table.ajax.reload();
                        })
                    }else{
                            alert('Pin yang anda masukkan salah')
                    }
                })
            }
        }
        return false;
    }

    function change_status(id="", status="")
    {
        if (id != '') {
            send_ajax("<?php echo $data_get['param']['table'] ?>/change_status", {id:id, status:status}).then(function(data_delete){
                var resp_delete = JSON.parse(data_delete);
                toastr.success(resp_delete.msg);
                table.ajax.reload();
            })
        
        }
        return false;
    }
</script>