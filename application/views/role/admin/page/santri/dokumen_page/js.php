
	<script type="text/javascript">
		$('.select').select2();
		$( "#app-submit" ).on('submit', function( e ) {
		    e.stopImmediatePropagation();
		    e.preventDefault();
		    // $('.se-pre-con').css('display','block');
		    var submitButton = $(this).find("button[type=submit]");
			submitButton.prop('disabled', true).text('Menyimpan...');

		       var form_data = new FormData(this);
		        send_ajax_file( $(this).attr('action'),form_data).then( function(data){
		            // $(".se-pre-con").fadeOut("slow");

		            var response = JSON.parse(data);
		            if (response.status == 200) {
			            toastr.success(response.msg);
			            set_content('<?php echo $data_get['param']['table'] ?>/get_data');
		            }else{
			            toastr.error(response.msg);
		            }

		        });
		    return false;
		});
		function add_document(){
			let uuid = generateUUID();
			let panel = '<div class="form-group">';
				panel +='					<div class="col-lg-4">';
				panel +='						<input type="text" placeholder="Nama Dokumen : cth, KTP, KK dll" name="dokumen['+uuid+'][name]" class="form-control">';
				panel +='					</div>';
				panel +='					<div class="col-lg-8">';
				panel +='						<input type="file" placeholder="" name="dokumen['+uuid+'][val]" class="form-control">';
				panel +='					</div>';
				panel +='				</div>';

			$('.additional-document').append(panel);
		}

		function delete_document(id){
            let pin = prompt("Masukkan PIN User:", "");
                if (pin == null || pin == "") {

                } else {
                    send_ajax('<?php echo $data_get['param']['table'] ?>/get_pin',{pin:pin}).then(function(data){
                        var response = JSON.parse(data);
                        if (response.status==200 && response.ans==true) {
                            send_ajax('Santri/delete_document/'+id, {}).then(function(data){
                                var response = JSON.parse(data);
                                    if (response.status == 200) {
                                        toastr.success(response.msg);
                                        $('.cl'+id).remove();
                                    }else{
                                        toastr.error(response.msg);
                                    }
                            })
                        }else{
                            alert('Pin yang anda masukkan salah')
                        }
                    });
                }
			
		}
	</script>