<script type="text/javascript">
	change_page("profil");
	function change_page(name){
		send_ajax("Setting/"+name, {}).then(function(data){
			$('.content-setting').html(data);
		});
	}

</script>