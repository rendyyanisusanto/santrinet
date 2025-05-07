
	<script type="text/javascript">
		$('.anggota-id').select2();	
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

		$('.anggota-id').on('select2:select', function(e){
			
			send_ajax('users/get_detail_user/'+$(this).val(),{}).then(function(data){
				var resp = JSON.parse(data);
				if (resp.status == 200) {
					$('.name').val(resp.data.karyawan.nama)
					$('.email').val(resp.data.karyawan.email)
				}else{
					alert(resp.msg);
				}
			})
		})
		function get_detail(){
			id = $('.groups_id').val();
			send_ajax('Users/get_details/'+id).then(function(data){
				$('.content-details').html(data);
			})
		}
	</script>