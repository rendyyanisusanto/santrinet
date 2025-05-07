<script>
document.querySelectorAll('.row-selectable').forEach(function (row) {
    row.addEventListener('click', function (event) {
        // Hapus kelas "selected" dari semua baris
        document.querySelectorAll('.row-selectable').forEach(function (r) {
            r.classList.remove('selected');
        });

        // Tambahkan kelas "selected" ke baris yang diklik
        this.classList.add('selected');

        // Periksa elemen yang diklik dalam baris
        const target = event.target;

        // Jika elemen yang diklik adalah input radio, centang input tersebut
        if (target.type === 'radio') {
            target.checked = true;
        } else {
            // Jika elemen lain yang diklik, centang radio button berdasarkan kolom
            const radios = this.querySelectorAll('.radio-input');
            const columnIndex = Array.from(this.children).indexOf(target.closest('td'));
            if (radios[columnIndex - 2]) { // -2 untuk menyesuaikan index kolom radio
                radios[columnIndex - 2].checked = true;
            }
        }
    });
});

$( "#app-submit" ).on('submit', function( e ) {
		    e.stopImmediatePropagation();
		    e.preventDefault();
		    // $('.se-pre-con').css('display','block');

		    // var submitButton = $(this).find("button[type=submit]");
			// submitButton.prop('disabled', true).text('Menyimpan...');
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