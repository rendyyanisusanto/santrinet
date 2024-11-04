<script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/visualization/echarts/echarts.min.js"></script>
<!-- <div class="content-dashboard" style="padding: 2%;background: gray;border-radius: 5px;"> -->
	<div style="margin-bottom: 1%" class="text-right">
		<button type="button" onclick="showModal();" class="btn btn-primary btn-sm"><i class="icon-filter3"></i>Filter</button>
	</div>
	<div class="content-stats"></div>
	<div class="content-graph"></div>
	<div class="content-trans"></div>
<!-- </div> -->

<div class="modal modal-filter-penjualan">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<center><h3><b>Filter</b></h3></center>
				<label>Tampilan Grafik Penjualan</label>
				<select class="form-control showName" name="showName">
					<option value="1">Hari</option>
					<option value="2">Bulan</option>
					<option value="3">Tahun</option>
				</select>
				<br>
				<label>Data Grafik Penjualan</label>
				<select class="form-control dataDetail" name="dataDetail">
					<option value="1">Total Penjualan (Rupiah)</option>
					<option value="2">Jumlah Penjualan</option>
				</select>
				<br>
				<label>Tanggal Mulai</label>
				<input type="date" name="dateStart" class="form-control dateStart" >
				<br>
				<label>Tanggal Selesai</label>
				<input type="date" name="dateEnd" class="form-control dateEnd" >
				<br>
			</div>
			<div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-close2"></i> Close</button>
		        <button type="button" onclick="filter_data();" class="btn btn-primary"><i class="icon-filter4"></i> Filter</button>
		      </div>
		</div>
	</div>
</div>