
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default" >
			<div class="panel-heading">
				<div class="panel-title">
					<a href="<?php echo $data_get['param']['table'] ?>/add_page" style="color:white;" class="btn btn-primary app-item"><i class="icon-plus3"></i> Tambah <?php echo $data_get['param']['title'] ?></a>
				</div>
			</div>
			<div class="panel-body" >
				<div class="table-responsive">
                    <table class="table table-framed table-xxs">
                    <tbody>
                        <?php
                        $kategori_sekarang = ''; // Variabel untuk melacak kategori saat ini
                        foreach ($data_get['tatib'] as $tatib) {
                            if ($kategori_sekarang != $tatib['kategori_kode']) {
                                // Menampilkan kategori baru jika kategori berubah
                                if ($kategori_sekarang != '') {
                                    echo "</ul>"; // Tutup daftar jika kategori selesai
                                }
                                $kategori_sekarang = $tatib['kategori_kode'];
                                // Menampilkan kategori sebagai header
                                echo "<tr style='background-color: {$tatib['kategori_color']};'>";
                                echo "<td colspan='2'><strong>{$tatib['kategori_kode']} - {$tatib['kategori_nama']}</strong></td>";
                               
                                echo "</tr>";
                            }
                            // Menampilkan setiap tatib dalam kategori dengan indentasi
                            echo "<tr><td>&nbsp;&nbsp;&nbsp;<a style='color: black;' href='Tatib/edit_page/{$tatib['tatib_id']}' class='app-item'>{$tatib['tatib_kode']}. {$tatib['tatib_nama']} - <b> Poin {$tatib['tatib_poin']} </b></a></td> <td width='1%'><button onclick='delete_item({$tatib['tatib_id']});' type='button' class='btn btn-danger btn-xs'><i class='icon-close2'></i></button></td></tr>";
                        }
                        ?>
                    </tbody>
                    </table>
				</div>
			</div>
		</div>
		
	</div>
</div>
