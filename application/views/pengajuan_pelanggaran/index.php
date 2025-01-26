<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Pelanggaran</title>
    <link href="<?php echo base_url('inc/limitless/global_assets/'); ?>/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('inc/limitless/assets/'); ?>/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('inc/select2/') ?>/select2.css" rel="stylesheet" />
    <style>
        /* Background gradient animation */
        body {
            background: linear-gradient(120deg, #f093fb, #f5576c);
            background-size: 200% 200%;
            animation: gradient-animation 6s ease infinite;
            font-family: Arial, sans-serif;
        }

        @keyframes gradient-animation {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        .container {
            margin: 50px auto;
            max-width: 500px;
            background: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        h1.form-title {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
            color: #333333;
        }

        .form-group label {
            font-weight: bold;
            color: #555555;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #cccccc;
        }

        .btn-submit {
            background-color: #28a745;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            transition: 0.3s;
            width: 100%;
        }

        .btn-submit:hover {
            background-color: #218838;
        }

        @media (max-width: 768px) {
            .container {
                padding: 15px;
                margin: 20px;
            }

            h1.form-title {
                font-size: 20px;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1 class="form-title">Form Pelanggaran</h1>
        <form id="app-submit" class="form-horizontal" action="Pengajuan_pelanggaran/simpan_data" method="POST">
            <!-- Santri -->
            <div class="form-group">
                <label for="santri_id">Santri</label>
                <select id="select-santri" name="santri_id" class="form-control select2">
                    <option value="">Pilih Santri</option>
                </select>
            </div>

            <!-- Tanggal -->
            <div class="form-group">
                <label for="tanggal">Tanggal</label>
                <input type="date" id="tanggal" name="tanggal" class="form-control" value="<?= date('Y-m-d'); ?>">
            </div>

            
            <div class="form-group">
                <label for="tanggal">Pelanggaran</label>
                <input type="text" id="pelanggaran" name="pelanggaran" class="form-control" placeholder="contoh: Merokok di kamar">
            </div>

            <!-- Tatib -->
            <div class="form-group">
                <label for="tatib_id">Jenis Tatib</label>
                <select id="select-tatib" name="tatib_id" class="form-control select2">
                    <option value="">Pilih Pelanggaran</option>
                </select>
            </div>

            <!-- Pelapor -->
            <div class="form-group">
                <label for="pelapor_id">Pelapor</label>
                <select id="select-pelapor" name="pelapor_id" class="form-control select2">
                    <option value="">Pilih Pelapor</option>
                </select>
            </div>

            <!-- Kronologi -->
            <div class="form-group">
                <label for="kronologi">Kronologi</label>
                <textarea id="kronologi" name="kronologi" class="form-control" rows="4" placeholder="Jelaskan kronologi..."></textarea>
            </div>

            <!-- Foto -->
            <div class="form-group">
                <label for="foto">Foto</label>
                <input type="file" id="foto" name="foto" class="form-control">
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn-submit">Simpan</button>
        </form>
    </div>

    <script src="<?php echo base_url('inc/limitless/global_assets/'); ?>/js/core/libraries/jquery.min.js"></script>
    <script src="<?php echo base_url('inc/limitless/global_assets/'); ?>/js/core/libraries/bootstrap.min.js"></script>
    <script src="<?php echo base_url('inc/limitless/global_assets/') ?>js/plugins/forms/selects/select2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<link rel="stylesheet" href="<?php echo base_url('inc/core/core.css')?>?rnd=<?= uniqid() ?>">
	<script src="<?php echo base_url('inc/core/core.js')?>?rnd=<?= uniqid() ?>"></script>
    <script>
        $(document).ready(function () {
            // Initialize Select2
            $("#select-santri").select2({
		         ajax: { 
		           url: '<?= base_url('Pengajuan_pelanggaran/get_santri_select') ?>',
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

            $("#select-tatib").select2({
		         ajax: { 
		           url: '<?= base_url('Pengajuan_pelanggaran/get_tatib_select') ?>',
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

            $("#select-pelapor").select2({
		         ajax: { 
		           url: '<?= base_url('Pengajuan_pelanggaran/get_pelapor_select') ?>',
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
        });
        $("#app-submit").on("submit", function (e) {
            e.stopImmediatePropagation();
            e.preventDefault();

            var submitButton = $(this).find("button[type=submit]");
            submitButton.prop("disabled", true).text("Menyimpan...");

            var form_data = new FormData(this);

            send_ajax_file($(this).attr("action"), form_data).then(function (data) {
                var response = JSON.parse(data);

                // SweetAlert untuk keberhasilan
                if (response.status == 200) {
                    Swal.fire({
                        title: "Berhasil!",
                        text: response.message || "Data telah berhasil disimpan.",
                        icon: "success",
                        confirmButtonText: "OK",
                    }).then(() => {
                        // Redirect atau reset form jika diperlukan
                        location.reload(); // Contoh reload halaman
                    });
                } else {
                    // SweetAlert untuk kegagalan
                    Swal.fire({
                        title: "Gagal!",
                        text: response.message || "Terjadi kesalahan saat menyimpan data.",
                        icon: "error",
                        confirmButtonText: "OK",
                    });
                }

                submitButton.prop("disabled", false).text("Simpan");
            });
            return false;
        });


       
    </script>
</body>

</html>
