<link href="<?php echo base_url('inc/select2/') ?>/select2.css" rel="stylesheet" />
<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/forms/selects/select2.min.js"></script>
<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/visualization/echarts/echarts.min.js"></script>
<div class="row">
    <div class="panel panel-flat">
        <div class="panel-body">
            <div class="tabbable tab-content-bordered">
                <ul class="nav nav-tabs nav-tabs-highlight">
                    <li class="active"><a href="#bordered-tab1" data-toggle="tab">Laporan Seminggu Terakhir</a></li>
                    <li><a href="#bordered-tab2" data-toggle="tab">Laporan RM Harian</a></li>\
                    
                </ul>

                <div class="tab-content">
                    <div class="tab-pane has-padding active" id="bordered-tab1">
                        
                        <div class="content-index" style="padding: 1%;background:gray;">

                        </div>
                    </div>

                    <div class="tab-pane has-padding" id="bordered-tab2">
                        <div class="row">
                            
                            <div class="col-md-6">
                                <div class="panel panel-body">
                                    
                                    <form id="app-presence-daily" class="form-horizontal" action="Presensi/get_presence_daily" method="POST">
                                        <div class="form-group">
                                                <label class="col-lg-3 control-label">Tanggal : <i class="text-danger">*</i></label>
                                                <div class="col-lg-9">
                                                    <input type="date" placeholder="" value="<?= date('Y-m-d') ?>" required name="tanggal" class="form-control">
                                                </div>
                                        </div>

                                        <button type="button" onclick="get_presence_daily();" class="btn btn-primary btn-sm"><i class="icon-spinner"></i> Proses</button>
                                    </form>
                                </div>
                            </div>
                            
                        </div>
                        <div class="content-presensce-daily" style="padding: 1%;background:gray;">

                        </div>
                    </div>
                    <div class="tab-pane has-padding" id="bordered-tab2">
                        <div class="row">
                            
                            <div class="col-md-6">
                                <div class="panel panel-body">
                                    
                                    <form id="app-presence-range" class="form-horizontal" action="Presensi/get_presence_range" method="POST">
                                        <div class="form-group">
                                                <label class="col-lg-3 control-label">Tanggal Mulai: <i class="text-danger">*</i></label>
                                                <div class="col-lg-9">
                                                    <input type="date" value="<?= date('Y-m-d', strtotime('-1 days')) ?>" placeholder="" required name="tanggal_mulai" class="form-control">
                                                </div>
                                        </div>
                                        <div class="form-group">
                                                <label class="col-lg-3 control-label">Tanggal Sampai: <i class="text-danger">*</i></label>
                                                <div class="col-lg-9">
                                                    <input type="date" value="<?= date('Y-m-d') ?>" placeholder="" required name="tanggal_selesai" class="form-control">
                                                </div>
                                        </div>
                                        <div class="form-group">
                                                <label class="col-lg-3 control-label">Urut Berdasarkan: <i class="text-danger">*</i></label>
                                                <div class="col-lg-9">
                                                    <select class="form-control order_by" name="order_by">
                                                        <option value="KARYAWAN">Karyawan</option>
                                                        <option value="TANGGAL">Tanggal</option>
                                                    </select>
                                                </div>
                                        </div>

                                        <button type="button" onclick="get_presence_range();" class="btn btn-primary btn-sm"><i class="icon-spinner"></i> Proses</button>
                                    </form>
                                </div>
                            </div>
                            
                        </div>
                        <div class="content-presensce-range" style="padding: 1%;background:gray;">

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</div>
