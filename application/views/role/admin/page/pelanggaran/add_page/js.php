
	<script type="text/javascript">
		$(".select-santri").select2({
		         ajax: { 
		           url: '<?php echo $data_get['param']['table'] ?>/get_santri_select',
		           type: "post",
		           dataType: 'json',
		           delay: 250,
		           data: function (params) {
		              return {
		                searchTerm: params.term // search term
		              };
		           },
		           processResults: function (response) {
		              return {
		                 results: response
		              };
		           },
		           cache: true
		         }
		    });
		 
		 $('.select-tatib').select2({
	        ajax: { 
		           url: '<?php echo $data_get['param']['table'] ?>/get_tatib_select',
		           type: "post",
		           dataType: 'json',
		           delay: 250,
		           data: function (params) {
		              return {
		                searchTerm: params.term,
						kategori_tatib_id: $('.kategori_tatib').val() || 1
		              };
		           },
		           processResults: function (response) {
		              return {
		                 results: response
		              };
		           },
		           cache: true
		         }
	    });

		$('.select-tatib').on('select2:select', function (e) {
			const data = e.params.data;
			
			send_ajax('<?php echo $data_get['param']['table'] ?>/get_sanksi/'+data.id, {}).then(function(data){
				var rsp = JSON.parse(data);

				$('.takzir').val(rsp.sanksi);
			});
		});

		 $('.select-pelapor').select2({
	        ajax: { 
		           url: '<?php echo $data_get['param']['table'] ?>/get_pelapor_select',
		           type: "post",
		           dataType: 'json',
		           delay: 250,
		           data: function (params) {
		              return {
		                searchTerm: params.term // search term
		              };
		           },
		           processResults: function (response) {
		              return {
		                 results: response
		              };
		           },
		           cache: true
		         }
	    });
		 $('.select-pengurus').select2({
	        ajax: { 
		           url: '<?php echo $data_get['param']['table'] ?>/get_pengurus_select',
		           type: "post",
		           dataType: 'json',
		           delay: 250,
		           data: function (params) {
		              return {
		                searchTerm: params.term // search term
		              };
		           },
		           processResults: function (response) {
		              return {
		                 results: response
		              };
		           },
		           cache: true
		         }
	    });

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

	</script>