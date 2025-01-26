
<script type="text/javascript">
	$(document).ready(function () {
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
			

			var initialOption = new Option('<?= $data_get['santri']['nama']?>', <?= $data_get['santri']['id']?>, true, true);
			$('.select-santri').append(initialOption).trigger('change');


		 $('.select-tatib').select2({
	        ajax: { 
		           url: '<?php echo $data_get['param']['table'] ?>/get_tatib_select',
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
		
		var initialOption = new Option('<?= $data_get['tatib']['kode']." - ".$data_get['tatib']['nama']?>', <?= $data_get['tatib']['id']?>, true, true);
			$('.select-tatib').append(initialOption).trigger('change');

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

		
		var initialOption = new Option('<?= $data_get['pelapor']['nama']?>', <?= $data_get['pelapor']['id']?>, true, true);
			$('.select-pelapor').append(initialOption).trigger('change');


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
			            set_content('<?php echo $data_get['param']['table'] ?>/pengajuan');
		            }else{
			            toastr.error(response.msg);
		            }

		        });
		    return false;
		});
	});
	</script>