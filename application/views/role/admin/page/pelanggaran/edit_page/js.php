
	<script type="text/javascript">
		initialData = {
			id: '<?= $data_get['santri']['id'] ?>', // ID dari PHP
			text: '<?= $data_get['santri']['nama'] ?>' // Nama dari PHP
		};
		initialDataTatib = {
			id: '<?= $data_get['tatib']['id'] ?>', // ID dari PHP
			text: '<?= $data_get['tatib']['nama'] ?>' // Nama dari PHP
		};
		initialDataPengurus = {
			id: '<?= $data_get['pengurus']['id'] ?>', // ID dari PHP
			text: '<?= $data_get['pengurus']['nama'] ?>' // Nama dari PHP
		};
		initialDataPelapor = {
			id: '<?= $data_get['pelapor']['id'] ?>', // ID dari PHP
			text: '<?= $data_get['pelapor']['nama'] ?>' // Nama dari PHP
		};
		
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
		 
		var selectSantri = $(".select-santri");
		var option = new Option(initialData.text, initialData.id, true, true);
		selectSantri.append(option).trigger('change');


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

		
		var selectTatib = $(".select-tatib");
		var option = new Option(initialDataTatib.text, initialDataTatib.id, true, true);
		selectTatib.append(option).trigger('change');

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

		
		var selectPelapor = $(".select-pelapor");
		var option = new Option(initialDataPelapor.text, initialDataPelapor.id, true, true);
		selectPelapor.append(option).trigger('change');

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

		var selectPengurus = $(".select-pengurus");
		var option = new Option(initialDataPengurus.text, initialDataPengurus.id, true, true);
		selectPengurus.append(option).trigger('change');

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