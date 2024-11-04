<script type="text/javascript">
	get_last_trans();
	get_top_spender();
	get_stok_limit();
	function get_last_trans(type ="", dataDetail="", datestart="", dateend=""){
		blockui('.panel-last-trans');

		setTimeout(function(e){
			send_ajax('dashboard/get_last_trans',{type:type, dataDetail:dataDetail, datestart:datestart, dateend:dateend}).then(function(data){
				$('.last-trans').html(data)
				unblockui('.panel-last-trans');
			});
		}, 1000)
	}
	
	function get_top_spender(type ="", dataDetail="", datestart="", dateend=""){
		blockui('.panel-top-spender');

		setTimeout(function(e){
			send_ajax('dashboard/get_top_spender',{type:type, dataDetail:dataDetail, datestart:datestart, dateend:dateend}).then(function(data){
				$('.top-spender').html(data)
				unblockui('.panel-top-spender');
			});
		}, 1000)
	}

	function get_stok_limit(type ="", dataDetail="", datestart="", dateend=""){
		blockui('.panel-stok-limit');

		setTimeout(function(e){
			send_ajax('dashboard/get_stok_limit').then(function(data){
				$('.stok-limit').html(data)
				unblockui('.panel-stok-limit');
			});
		}, 1000)
	}
</script>