<script type="text/javascript">
	function select_table(){
		let table = $('.table').val()

		$('.btn-template').attr('href', '<?= base_url("inc/excel_template/import_"); ?>'+table+'.xlsx')
	}
	$('#app-import').on('submit', function(e){
       	var form_data = new FormData(this);
       	blockui('.panel-proses');
		send_ajax_file($(this).attr('action'), form_data).then(function(data){
			$('.panel-proses').html(data);
			setTimeout(function(a){
				unblockui('.panel-proses');
			}, 1000);
		});

		return false;
	});

	$('#app-submit-form').on('submit', function(e){
		e.stopImmediatePropagation();
		// blockui('.panel-proses');
		send_ajax($(this).attr('action'), $(this).serialize()).then(function(data){
            var response = JSON.parse(data);
		    if (response.status == 200) {
			    toastr.success(response.msg);
			    set_content('<?php echo $data_get['param']['table'] ?>/get_data');
		    }else{
			    toastr.error(response.msg);
		    }
			set_content('<?php echo $data_get['param']['table'] ?>/get_data');
		});

		return false;
	})
</script>