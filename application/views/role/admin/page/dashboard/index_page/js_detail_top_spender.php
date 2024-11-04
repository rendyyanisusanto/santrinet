<script type="text/javascript">
	get_so();
	function get_so(){
		let id = $('.cust-id').val();

		send_ajax("Dashboard/get_so_top_spender/"+id, {}).then(function(data){
			$('.get-so').html(data);
		})
	}
</script>