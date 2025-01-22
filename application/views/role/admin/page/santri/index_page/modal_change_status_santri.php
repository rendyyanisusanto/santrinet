<div class="modal modal-change-status">
	<div class="modal-dialog">
		<div class="modal-content">
			<form class="submit-print" action="<?= $data_get['param']['table'] ?>/change_status_santri">
			<div class="modal-body">
				<center><h3><b>Ubah Status Santri</b></h3></center>
				<select class="form-control status_santri" name="status_santri">
					<option value="AKTIF">SANTRI AKTIF</option>
					<option value="ALUMNI">ALUMNI</option>
				</select>
			</div>
			<div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-close2"></i> Close</button>
		        <button type="submit" class="btn btn-primary"><i class="icon-filter4"></i> Submit</button>
		      </div>
		  </form>
		</div>
	</div>
</div>