<script>
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
                            
			                set_content('<?php echo $data_get['param']['table'] ?>/get_data');
                        })
                    }else{
                            alert('Pin yang anda masukkan salah')
                    }
                })
            }
        }
        return false;
    }

</script>