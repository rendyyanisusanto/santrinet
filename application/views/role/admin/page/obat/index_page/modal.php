<div class="modal modal-custom-search">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<center><h3><b>Custom Search</b></h3></center>
				<label>Kode</label>
				<input type="text" name="kode" class="kode form-control" >
				<br>
				<label>Nama</label>
				<input type="text" name="nama" class="nama form-control" >
				
			</div>
			<div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-close2"></i> Close</button>
		        <button type="button" onclick="search();" class="btn btn-primary"><i class="icon-filter4"></i> Filter</button>
		      </div>
		</div>
	</div>
</div>

<div class="modal modal-print">
	<div class="modal-dialog modal-xs">
		<div class="modal-content">
			<form class="submit-print" action="<?= $data_get['param']['table'] ?>/print_web">
			<div class="modal-body">
				<center><h3><b>Print</b></h3></center>
				<div class="form-group pt-15">
					<label class="text-semibold">Data yang akan dicetak</label>
					<div class="radio">
						<label>
							<div class="choice"><span><input type="radio" name="cetak" class="styled cetak" checked="" value="last_data"></span></div>
							10 Data Terakhir
						</label>
					</div>
					<div class="radio">
						<label>
							<div class="choice"><span><input type="radio" name="cetak" value="selected_data" class="styled selected_data cetak"></span></div>
							<b class="total_data_print"></b> Data Terpilih
						</label>
					</div>

					

					<div class="alert alert-warning">
						<b>Info :</b>
						<p>Untuk fitur cetak yang lebih lengkap ada pada menu Laporan</p>
					</div>
				</div>
				
			</div>
			<div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-close2"></i> Close</button>
		        <button type="submit" class="btn btn-primary"><i class="icon-printer"></i> Cetak</button>
		    </div>
		    </form>
		</div>
	</div>
</div>

<div class="modal modal-excel">
	<div class="modal-dialog modal-xs">
		<div class="modal-content">
			<form class="submit-excel" action="<?= $data_get['param']['table'] ?>/print_excel">
			<div class="modal-body">
				<center><h3><b>Print</b></h3></center>
				<div class="form-group pt-15">
					<label class="text-semibold">Data yang akan dicetak (Excel)</label>
					<div class="radio">
						<label>
							<div class="choice"><span><input type="radio" name="cetak_excel" class="styled cetak" checked="" value="last_data"></span></div>
							10 Data Terakhir
						</label>
					</div>
					<div class="radio">
						<label>
							<div class="choice"><span><input type="radio" name="cetak_excel" value="selected_data" class="styled selected_data cetak"></span></div>
							<b class="total_data_print"></b> Data Terpilih
						</label>
					</div>

					

					<div class="alert alert-warning">
						<b>Info :</b>
						<p>Untuk fitur cetak yang lebih lengkap ada pada menu Laporan</p>
					</div>
				</div>
				
			</div>
			<div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-close2"></i> Close</button>
		        <button type="submit" class="btn btn-primary"><i class="icon-file-excel"></i> Cetak</button>
		    </div>
		    </form>
		</div>
	</div>
</div>

<div class="modal modal-pdf">
	<div class="modal-dialog modal-xs">
		<div class="modal-content">
			<form class="submit-pdf" action="<?= $data_get['param']['table'] ?>/print_pdf">
			<div class="modal-body">
				<center><h3><b>Print</b></h3></center>
				<div class="form-group pt-15">
					<label class="text-semibold">Data yang akan dicetak (PDF)</label>
					<div class="radio">
						<label>
							<div class="choice"><span><input type="radio" name="cetak_pdf" class="styled cetak" checked="" value="last_data"></span></div>
							10 Data Terakhir
						</label>
					</div>
					<div class="radio">
						<label>
							<div class="choice"><span><input type="radio" name="cetak_pdf" value="selected_data" class="styled selected_data cetak"></span></div>
							<b class="total_data_print"></b> Data Terpilih
						</label>
					</div>

					

					<div class="alert alert-warning">
						<b>Info :</b>
						<p>Untuk fitur cetak yang lebih lengkap ada pada menu Laporan</p>
					</div>
				</div>
				
			</div>
			<div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-close2"></i> Close</button>
		        <button type="submit" class="btn btn-primary"><i class="icon-file-pdf"></i> Cetak</button>
		    </div>
		    </form>
		</div>
	</div>
</div>