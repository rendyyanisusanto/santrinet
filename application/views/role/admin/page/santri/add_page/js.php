
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
		$(document).ready(function () {
			$('#role_pengurus').change(function () {
				if ($(this).is(':checked')) {
					$('#lembaga_pengurus').show();
				} else {
					$('#lembaga_pengurus').hide();
				}
			});
		});

		function add_document(){
			let uuid = generateUUID();
			let panel = '<div class="form-group">';
				panel +='					<div class="col-lg-3">';
				panel +='						<input type="text" placeholder="" name="dokumen['+uuid+'][name]" class="form-control">';
				panel +='					</div>';
				panel +='					<div class="col-lg-6">';
				panel +='						<input type="file" placeholder="" name="dokumen['+uuid+'][val]" class="form-control">';
				panel +='					</div>';
				panel +='				</div>';

			$('.additional-document').append(panel);
		}
	</script>