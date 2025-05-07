
	<script type="text/javascript">
		$(".select-bahan").select2({
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
		 $('.select-obat').select2({
	        ajax: { 
		           url: '<?php echo $data_get['param']['table'] ?>/get_obat_select',
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
		 $('.select-keluhan').select2({
	        ajax: { 
		           url: '<?php echo $data_get['param']['table'] ?>/get_keluhan_select',
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
		 $('.select-perawat').select2({
	        ajax: { 
		           url: '<?php echo $data_get['param']['table'] ?>/get_perawat_select',
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

		$( "#app-submit-obat" ).on('submit', function( e ) {
		    e.stopImmediatePropagation();
		    e.preventDefault();
		    // $('.se-pre-con').css('display','block');


		       var form_data = new FormData(this);
		        send_ajax_file( $(this).attr('action'),form_data).then( function(data){
		            // $(".se-pre-con").fadeOut("slow");

		            var response = JSON.parse(data);
		            if (response.status == 200) {
			            toastr.success(response.msg);
			            $('.modal-obat').modal('toggle');
		            }else{
			            toastr.error(response.msg);
		            }

		        });
		    return false;
		});

		function add_obat(){
			$('.modal-obat').modal('toggle');
		}

		$( "#app-submit-keluhan" ).on('submit', function( e ) {
		    e.stopImmediatePropagation();
		    e.preventDefault();
		    // $('.se-pre-con').css('display','block');


		       var form_data = new FormData(this);
		        send_ajax_file( $(this).attr('action'),form_data).then( function(data){
		            // $(".se-pre-con").fadeOut("slow");

		            var response = JSON.parse(data);
		            if (response.status == 200) {
			            toastr.success(response.msg);
			            $('.modal-keluhan').modal('toggle');
		            }else{
			            toastr.error(response.msg);
		            }

		        });
		    return false;
		});

		function add_keluhan(){
			$('.modal-keluhan').modal('toggle');
		}
	</script>