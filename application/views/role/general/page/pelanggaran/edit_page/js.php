
<script type="text/javascript">
		 initialData = {
			id: '<?= $data_get['santri']['id'] ?>', // ID dari PHP
			text: '<?= $data_get['santri']['nama'] ?>' // Nama dari PHP
		};

		$(".select-santri").select2({
			ajax: { 
				url: '<?= $data_get['param']['table'] ?>/get_santri_select',
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

		// Tambahkan data awal ke Select2
		var selectSantri = $(".select-santri");
		var option = new Option(initialData.text, initialData.id, true, true);
		selectSantri.append(option).trigger('change');

		// Pilih data awal sebagai nilai default
		selectSantri.trigger({
			type: 'select2:select',
			params: {
				data: initialData
			}
		});

		 initialDataPerawat = {
			id: '<?= $data_get['perawat']['id'] ?>', // ID dari PHP
			text: '<?= $data_get['perawat']['nama'] ?>' // Nama dari PHP
		};

		$(".select-perawat").select2({
			ajax: { 
				url: '<?= $data_get['param']['table'] ?>/get_perawat_select',
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

		// Tambahkan data awal ke Select2
		var selectperawat = $(".select-perawat");
		var option = new Option(initialDataPerawat.text, initialDataPerawat.id, true, true);
		selectperawat.append(option).trigger('change');

		// Pilih data awal sebagai nilai default
		selectperawat.trigger({
			type: 'select2:select',
			params: {
				data: initialDataPerawat
			}
		});


		 selectedObat = <?= json_encode($data_get['obat_terpilih']) ?>;

		$('.select-obat').select2({
			ajax: { 
				url: '<?= $data_get['param']['table'] ?>/get_obat_select',
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

		// Tambahkan data awal (multiple)
		 selectObat = $('.select-obat');
		selectedObat.forEach(function(item) {
			const option = new Option(item.text, item.id, true, true);
			selectObat.append(option);
		});

		// Memicu perubahan pada Select2 agar opsi terlihat
		selectObat.trigger('change');

		 selectedkeluhan = <?= json_encode($data_get['keluhan_terpilih']) ?>;

		$('.select-keluhan').select2({
			ajax: { 
				url: '<?= $data_get['param']['table'] ?>/get_keluhan_select',
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

		// Tambahkan data awal (multiple)
		 selectkeluhan = $('.select-keluhan');
		selectedkeluhan.forEach(function(item) {
			const option = new Option(item.text, item.id, true, true);
			selectkeluhan.append(option);
		});

		// Memicu perubahan pada Select2 agar opsi terlihat
		selectkeluhan.trigger('change');

		

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