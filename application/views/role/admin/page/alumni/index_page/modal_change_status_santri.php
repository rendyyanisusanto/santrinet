<div class="modal modal-change-status">
	<div class="modal-dialog">
		<div class="modal-content">
			<form class="submit-change" action="<?= $data_get['param']['table'] ?>/convert_to_alumni">
			<div class="modal-body">
				<center><h3><b>Ubah Status Santri</b></h3></center>
				<input type="hidden" name="id" class="change_id">
				<label for="">Tahun Lulus</label>
				<input type="number" name="tahun_lulus" class="form-control">
				
				<label for="">Keterangan</label>
				<input type="text" name="keterangan" class="form-control">
			</div>
			<div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="icon-close2"></i> Close</button>
		        <button type="submit" class="btn btn-primary"><i class="icon-filter4"></i> Submit</button>
		      </div>
		  </form>
		</div>
	</div>
</div>