<script>
    $('#app-import').on('submit', function(e) {
        e.preventDefault(); // Mencegah reload halaman

        var formData = new FormData(this);

        $.ajax({
            url: $(this).attr('action'),
            type: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            dataType: 'json', // pastikan response dari controller berupa JSON
            success: function(res) {
                if (res.status === 'success') {
                    $('#handsontable-container').css('display', '');
                    $('.btn-submit-all').css('display','')
                    hot.loadData(res.data); 

                    document.getElementById('upload-warning').style.display = 'none';
                } else {
                    alert(res.message || 'Gagal memuat data.');
                }
            },
            error: function() {
                alert('Terjadi kesalahan saat mengunggah file.');
            }
        });
    });
    
    
    var container = document.getElementById('handsontable-container');
    window.hot = new Handsontable(container, {
        data: [],  // kosong di awal
        colHeaders: ['NIS', 'NIK', 'Nama', 'JK', 'Tempat Lahir', 'Tanggal Lahir', 'Alamat', 'Nama Ayah', 'No HP Ayah', 'Nama Ibu', 'No HP Ibu', 'Nama Wali', 'No HP Wali'],
        columns: [
            {data: 'nis', type: 'text'},
            {data: 'nik', type: 'text'},
            {data: 'nama', type: 'text'},
            {data: 'jenis_kelamin', type: 'text'},
            {data: 'tempat_lahir', type: 'text'},
            {data: 'tanggal_lahir', type: 'text'},
            {data: 'alamat', type: 'text'},
            {data: 'nama_ayah', type: 'text'},
            {data: 'no_hp_ayah', type: 'text'},
            {data: 'nama_ibu', type: 'text'},
            {data: 'no_hp_ibu', type: 'text'},
            {data: 'nama_wali', type: 'text'},
            {data: 'no_hp_wali', type: 'text'}
        ],
        rowHeaders: true,
        dropdownMenu: true,
        filters: true,
        contextMenu: true,
        stretchH: 'none',
        manualColumnResize: true,
        manualRowResize: true,
        licenseKey: 'non-commercial-and-evaluation' // sesuai lisensi Handsontable
    });

    $("#app-submit-form").on('submit', function(e) {
            e.preventDefault();
            e.stopImmediatePropagation();
            const form_data = new FormData(this);

            // 🔹 Ambil data dari Handsontable utama
            const structured = [];
            for (var i = 0; i < hot.countRows(); i++) {
                const row = hot.getSourceDataAtRow(i);
                structured.push({
                nis: row.nis,
                nik: row.nik,
                nama: row.nama,
                jenis_kelamin: row.jenis_kelamin || '',
                tempat_lahir: row.tempat_lahir || '',
                tanggal_lahir: row.tanggal_lahir || '',
                alamat: row.alamat || '',
                nama_ayah: row.nama_ayah || '',
                no_hp_ayah: row.no_hp_ayah || '',
                nama_ibu: row.nama_ibu || '',
                no_hp_ibu: row.no_hp_ibu || '',
                nama_wali: row.nama_wali || '',
                no_hp_wali: row.no_hp_wali || '',
                });
            }

            // Tambahkan ke form_data
            form_data.append("data", JSON.stringify(structured));

            // Kirim via AJAX
            send_ajax_file($(this).attr('action'), form_data).then(function(data) {
                const response = JSON.parse(data);
                if (response.status == 200) {
                set_content('Santri/get_data');
                toastr.success(response.msg);
                } else {
                toastr.error(response.msg);
                }
            });

            return false;
            });
</script>
