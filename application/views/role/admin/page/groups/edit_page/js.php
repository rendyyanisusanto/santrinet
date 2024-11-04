
	<script type="text/javascript">
		$( "#app-submit" ).on('submit', function( e ) {
		    e.stopImmediatePropagation();
		    e.preventDefault();
		    // $('.se-pre-con').css('display','block');


		       var form_data = new FormData(this);
		        send_ajax_file( $(this).attr('action'),form_data).then( function(data){
		            // $(".se-pre-con").fadeOut("slow");

		            var response = JSON.parse(data);
		            if (response.status == 200) {
			            toastr.success('Data berhasil ditambahkan, Refresh untuk melihat perubahan');
			            set_content('<?php echo $data_get['param']['table'] ?>/get_data');
		            }else{
			            toastr.error('Data gagal ditambahkan, Refresh untuk melihat perubahan');
		            }

		        });
		    return false;
		});

		function set_check(method, num){
			if ($('.select_all'+num).is(':checked')) {
				$('.'+method+num).prop('checked', true);
			}else{
				$('.'+method+num).prop('checked', false);
				// alert();
			}
		}
		function set_check_all(num){
			if ($('.select_all_menu'+num).is(':checked')) {
				$('.chk'+num).prop('checked', true);
			}else{
				$('.chk'+num).prop('checked', false);
				// alert();
			}
		}
	</script>