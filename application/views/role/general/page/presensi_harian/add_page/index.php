<style>
/* Global styling */
/* Panel styling */
.panel {
    background-color: #ffffff;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
    padding: 20px;
    margin-bottom: 20px;
}

/* Section headers */
.panel-header {
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 15px;
}

/* Input styling */
.input-group {
    display: flex;
    align-items: center;
    margin-bottom: 15px;
    gap: 10px;
}

.input-group label {
    flex: 0 0 100px;
    font-weight: bold;
}

.input-group input {
    flex: 1;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 14px;
    background-color: #f8f9fa;
}

/* Card container for mobile */
.card-container {
    display: flex;
    flex-wrap: wrap;
    gap: 15px;
    margin-top: 15px;
}

/* Card styling */
.card-presensi {
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 15px;
    width: 100%;
    display: flex;
    flex-direction: column;
}

/* Santri name styling */
.card-presensi .santri-nama {
    font-size: 16px;
    font-weight: bold;
    margin-bottom: 10px;
    text-align: center;
}

/* Radio group styling */
.radio-group {
    display: flex;
    justify-content: space-around;
    align-items: center;
    margin-top: 10px;
}

/* Radio button customization */
.radio-input {
    display: none;
}

.radio-custom {
    display: inline-block;
    width: 30px;
    height: 30px;
    border: 2px solid #ccc;
    border-radius: 50%;
    position: relative;
    cursor: pointer;
    transition: all 0.3s ease;
}

.radio-custom::after {
    content: '';
    width: 18px;
    height: 18px;
    border-radius: 50%;
    background-color: transparent;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    transition: background-color 0.3s ease;
}

.radio-input:checked + .radio-custom {
    border-color: var(--radio-color);
}

.radio-input:checked + .radio-custom::after {
    background-color: var(--radio-color);
}

/* Label for radio options */
.radio-label {
    display: block;
    margin-top: 5px;
    font-size: 14px;
    text-align: center;
}

/* Color for each option */
.radio-hadir {
    --radio-color: #28a745;
}

.radio-sakit {
    --radio-color: #007bff;
}

.radio-izin {
    --radio-color: #fd7e14;
}

.radio-alpha {
    --radio-color: #dc3545;
}
.btn-wrapper {
    text-align: center; /* Tombol di tengah */
    margin-top: 20px; /* Tambahkan jarak atas */
}

.btn {
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    color: #fff;
    border: none;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: background-color 0.3s ease, transform 0.2s ease;
    cursor: pointer;
}

.btn-sm {
    padding: 8px 16px;
    font-size: 14px;
}

/* Warna dan efek tombol hijau */
.btn-success {
    background-color: #28a745;
}

.btn-success:hover {
    background-color: #218838;
    transform: translateY(-2px);
}

.btn-success:active {
    background-color: #1e7e34;
    transform: translateY(0);
}
</style>

<div class="row">
    <div class="col-sm-12">
        <form id="app-submit" class="form-horizontal" action="<?php echo $data_get['param']['table'] ?>/simpan_data" method="POST">
        <div class="panel">
            <!-- Header -->
            <div class="panel-header">Presensi Santri</div>

            <!-- Input group -->
            <div class="input-group">
                <label for="tanggal">Tanggal:</label>
                <input type="date" id="tanggal" value="<?= $data_get['tanggal']; ?>" readonly name="tanggal" class="form-control">
            </div>
            <div class="input-group">
                <label for="kamar">Kamar:</label>
                <input type="text" id="kamar" disabled value="<?= $data_get['kamar']['nama']; ?>" class="form-control">
            </div>

            <div class="input-group">
                <label for="jadwal">Jadwal:</label>
                <input type="text" id="jadwal" disabled value="<?= $data_get['jadwal']['waktu_presensi']; ?>" class="form-control">
                <input type="hidden" id="jadwal_id" name="jadwal_id"  value="<?= $data_get['jadwal']['id']; ?>" class="form-control">
            </div>

            <hr>
            <!-- Card container -->
            <div class="card-container">
                <?php 
                foreach ($data_get['proses'] as $key => $value) : ?>
                    <div class="card-presensi">
                        <input type="hidden" name="presensi[<?= $key;?>][santri_id]" value="<?= $value['santri']['santri_id'];?>">
                        <div class="santri-nama"><?= $value['santri']['nama']; ?></div>
                        <div class="radio-group">
                            <?php 
                            $options = [
                                'HADIR' => ['label' => 'Hadir', 'class' => 'radio-hadir'],
                                'SAKIT' => ['label' => 'Sakit', 'class' => 'radio-sakit'],
                                'IJIN' => ['label' => 'Izin', 'class' => 'radio-izin'],
                                'ALPHA' => ['label' => 'Alpha', 'class' => 'radio-alpha']
                            ];
                            foreach ($options as $key_option => $option) : 
                                $isChecked = $key_option === 'HADIR' ? 'checked' : '';

                                if($value['kehadiran'] != ''){
                                    $isChecked = ($value['kehadiran'] === $key_option) ? 'checked' : '';
                                }
                            ?>
                                <div>
                                    <input type="radio" 
                                        name="presensi[<?= $key;?>][status_kehadiran]"
                                        id="<?= $key_option . '_' . $value['santri']['id'] ?>" 
                                        value="<?= $key_option ?>" 
                                        class="radio-input" 
                                        <?= $isChecked ?>>
                                    <label class="radio-custom <?= $option['class'] ?>" 
                                        for="<?= $key_option . '_' . $value['santri']['id'] ?>"></label>
                                    <span class="radio-label"><?= $option['label']; ?></span>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

            <hr>
            <div class="btn-wrapper">
                <button type="submit" class="btn btn-success btn-sm">
                    <i class="icon-floppy-disk"></i> Simpan Data
                </button>
            </div>
        </div>
        </form>
    </div>
</div>
