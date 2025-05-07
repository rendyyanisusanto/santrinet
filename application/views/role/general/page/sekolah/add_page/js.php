
	<script type="text/javascript">
		get_city();
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
			            toastr.success('Data berhasil ditambahkan, Refresh untuk melihat perubahan');
			            set_content('<?php echo $data_get['param']['table'] ?>/get_data');
		            }else{
			            toastr.error('Data gagal ditambahkan, Refresh untuk melihat perubahan');
		            }

		        });
		    return false;
		});
		function get_city()
		{
			var dt = $('.idprovince_fk').val();

			send_ajax('master_data_suplier/get_city', {id:dt}).then(function(data){
				$('.select-city').html(data);
			});
		}
	</script>