<!-- <script src="<?php echo base_url('inc/limitless/global_assets/')?>js/plugins/editors/ckeditor/ckeditor.js"></script> -->
<center><h4 style="font-weight: bold;">Setting Profil Sistem</h4></center>
<form class="form-horizontal" action="Setting/update_data_profil" id="app-submit" method="POST">
	<fieldset>

	<input type="hidden" name="page" value="profil">
              <div class="form-group">
                <label class="col-lg-3 control-label">Nama APLIKASI:</label>
                <div class="col-lg-6">
                  <input type="text" name="nama" value="<?php echo $data_get['profil']['nama'] ?>" class="form-control" required placeholder="Input here......">
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Nama Sistem:</label>
                <div class="col-lg-6">
                  <input type="text" name="nama_website" value="<?php echo $data_get['profil']['nama_website'] ?>" class="form-control" required placeholder="Input here......">
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Alamat:</label>
                <div class="col-lg-6">
                  <input type="text" name="alamat" class="form-control" value="<?php echo $data_get['profil']['alamat'] ?>" required placeholder="Input here......">
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Kota:</label>
                <div class="col-lg-6">
                  <input type="text" name="kota" class="form-control" value="<?php echo $data_get['profil']['kota'] ?>" required placeholder="Input here......">
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Negara:</label>
                <div class="col-lg-6">
                  <input type="text" name="negara" value="<?php echo $data_get['profil']['negara'] ?>" class="form-control" required placeholder="Input here......">
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">No HP:</label>
                <div class="col-lg-6">
                  <input type="text" name="no_hp" class="form-control" value="<?php echo $data_get['profil']['no_hp'] ?>" required placeholder="Input here......">
                </div>
              </div>
              
              <div class="form-group">
                <label class="col-lg-3 control-label">Logo:</label>
                <div class="col-lg-6">
                  <input type="file" name="logo" class="form-control" placeholder="Input here......">
                </div>
              </div>

              <div class="form-group">
                <label class="col-lg-3 control-label">Favicon:</label>
                <div class="col-lg-6">
                  <input type="file" name="icon" class="form-control" placeholder="Input here......">
                </div>
              </div>

              <div class="form-group">
                <label class="col-lg-3 control-label">Singkatan Website:</label>
                <div class="col-lg-6">
                  <input type="text" name="singkatan" value="<?php echo $data_get['profil']['singkatan'] ?>" class="form-control" required placeholder="Input here......">
                </div>
              </div>


              <div class="form-group">
                <label class="col-lg-3 control-label">Tagline:</label>
                <div class="col-lg-6">
                  <input type="text" name="tagline" class="form-control" value="<?php echo $data_get['profil']['tagline'] ?>" required placeholder="Input here......">
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Email (email):</label>
                <div class="col-lg-6">
                  <input type="text" name="email" value="<?php echo $data_get['profil']['email'] ?>" required class="form-control" required placeholder="Input here......">
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Pemilik:</label>
                <div class="col-lg-6">
                  <input type="text" name="pemilik" value="<?php echo $data_get['profil']['pemilik'] ?>"  required class="form-control" required placeholder="Input here......">
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Facebook:</label>
                <div class="col-lg-6">
                  <input type="text" name="facebook"  value="<?php echo $data_get['profil']['facebook'] ?>" required class="form-control" required placeholder="Input here......">
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Instagram:</label>
                <div class="col-lg-6">
                  <input type="text" name="instagram"  value="<?php echo $data_get['profil']['instagram'] ?>" required class="form-control" required placeholder="Input here......">
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Twitter:</label>
                <div class="col-lg-6">
                  <input type="text" name="twitter"  value="<?php echo $data_get['profil']['twitter'] ?>" required class="form-control" required placeholder="Input here......">
                </div>
              </div>
              <div class="form-group">
                <label class="col-lg-3 control-label">Youtube:</label>
                <div class="col-lg-6">
                  <input type="text" name="youtube"  value="<?php echo $data_get['profil']['youtube'] ?>" required class="form-control" required placeholder="Input here......">
                </div>
              </div>
<hr>

	<button type="submit" class="btn btn-success"><i class="icon-floppy-disk"></i> Simpan Data</button>
            </fieldset> 
</form>
<script type="text/javascript">
	$( "#app-submit" ).on('submit', function( e ) {
		    e.stopImmediatePropagation();
		    e.preventDefault();


		       var form_data = new FormData(this);
		        send_ajax_file( $(this).attr('action'),form_data).then( function(data){
		           

		            var response = JSON.parse(data);
		            if (response.status == 200) {
			            toastr.success('Data berhasil ditambahkan, Refresh untuk melihat perubahan');
			            change_page(response.page);
		            }else{
			            toastr.error('Data gagal ditambahkan, Refresh untuk melihat perubahan');
		            }

		        });
		    return false;
		});
</script>