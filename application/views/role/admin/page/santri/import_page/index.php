<link rel="stylesheet" href="<?php echo base_url('inc/tables/handsontable.full.min.css'); ?>" />
<script src="<?php echo base_url('inc/tables/handsontable.full.min.js'); ?>"></script>

<form class="form-horizontal" 
      action="<?php echo $data_get['param']['table'] ?>/import_santri" 
      enctype="multipart/form-data" 
      id="app-import" 
      method="POST">

    <div class="row">
        <div class="col-md-6">

            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title"><i class="icon-import"></i> Import Data Siswa</h4>
                </div>

                <div class="panel-body">

                    <!-- Download Template -->
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Template:</label>
                        <div class="col-lg-9">
                            <a href="<?= base_url('inc/excel_template/template_santri.xls');?>" target="_blank" id="download_template" class="btn btn-success btn-sm">
                                <i class="icon-download"></i> Download Template
                            </a>
                        </div>
                    </div>

                    <!-- File Input -->
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Pilih File <span style="color: red">*</span></label>
                        <div class="col-lg-9">
                            <input type="file" name="file_upload" class="form-control file_excel" required accept=".xlsx,.xls,.csv">
                            <p class="help-block">Format yang diterima: .xlsx, .xls, .csv</p>
                        </div>
                    </div>

                    <hr>

                    <!-- Submit -->
                    <div class="form-group">
                        <div class="col-lg-offset-3 col-lg-9">
                            <button type="submit" class="btn btn-primary btn-submit">
                                <i class="icon-upload"></i> Proses File
                            </button>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>

</form>
<form class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/import_santri_submit" enctype="multipart/form-data" id="app-submit-form" method="POST">
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-body">
            <div id="upload-warning" style="color: red; margin-bottom: 10px;">
            ⚠️ Silakan upload file Excel terlebih dahulu.
            </div>
			<div id="handsontable-container" style="width: 100%; height: 400px; overflow: auto; display:none;"></div>

            <hr>
            <button class="btn btn-success btn-submit-all" style="display: none;" type="submit"><i class="icon-upload"></i> Import data ke database</button>

		</div>
	</div>
</div>
</form>