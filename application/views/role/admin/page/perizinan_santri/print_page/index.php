<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Surat Izin Santri</title>
    <link rel="stylesheet" href="<?= base_url('assets/bootstrap/css/bootstrap.min.css') ?>">
    <style>
        body {
            font-family: "Times New Roman", Times, serif;
            margin: 50px;
            color: #000;
        }
        .kop {
            text-align: center;
            border-bottom: 3px double #000;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        .kop h3, .kop h4, .kop p {
            margin: 0;
        }
        .judul {
            text-align: center;
            text-decoration: underline;
            font-weight: bold;
            margin-top: 20px;
            margin-bottom: 30px;
        }
        .isi-surat {
            font-size: 16px;
            line-height: 1.7;
        }
        .ttd {
            margin-top: 60px;
            width: 100%;
        }
        .ttd .kanan {
            float: right;
            text-align: center;
            width: 250px;
        }
        .ttd .kiri {
            float: left;
            text-align: center;
            width: 250px;
        }
        @media print {
            .no-print {
                display: none;
            }
        }
    </style>
</head>
<body onload="window.print()">

<div class="kop">
    <h3><?= $profil_website['nama']?></h3>
    <h4><?= $profil_website['alamat']?></h4>
    <p>Telp. <?= $profil_website['no_hp']?> | Website: <?= $profil_website['nama_website']?></p>
</div>

<div class="judul">
    <h4>SURAT IZIN SANTRI</h4>
</div>

<div class="isi-surat">
    <p>Yang bertanda tangan di bawah ini menyatakan bahwa:</p>

    <table style="margin-left: 30px;">
        <tr>
            <td>Nama</td>
            <td>: <?= $santri['nama'] ?></td>
        </tr>
        <tr>
            <td>Kode Izin</td>
            <td>: <?= strtoupper($izin['kode']) ?></td>
        </tr>
        <tr>
            <td>Tanggal Izin</td>
            <td>: <?= date('d F Y', strtotime($izin['tanggal_izin'])) ?></td>
        </tr>
        <tr>
            <td>Tanggal Kembali</td>
            <td>: <?= date('d F Y', strtotime($izin['tanggal_kembali'])) ?></td>
        </tr>
        <tr>
            <td>Jenis Izin</td>
            <td>: <?= ucwords(strtolower(str_replace('_', ' ', $izin['jenis_izin']))) ?></td>
        </tr>
        <tr>
            <td>Alasan</td>
            <td>: <?= $izin['alasan'] ?></td>
        </tr>
        <tr>
            <td>Status</td>
            <td>: <?= ucwords(strtolower(str_replace('_', ' ', $izin['status_dokumen']))) ?></td>
        </tr>
    </table>

    <p style="margin-top: 20px;">
        Demikian surat ini dibuat untuk dipergunakan sebagaimana mestinya.
    </p>
</div>

<div class="ttd">
    <?php
        $is_sakit = strtolower(trim($ijin['jenis_ijin'])) === 'sakit';
    ?>
    <div class="kiri">
        <p>Mengetahui,</p>
        <p><strong>Ketua Kamar</strong></p>
        <br><br><br>
        <p><u>(................................)</u></p>
    </div>

    <div class="kanan">
        <p>&nbsp;</p>
        <p><strong><?= $is_sakit ? 'Kabid Kesehatan' : 'Kabid Asrama' ?></strong></p>
        <br><br><br>
        <p><u>(................................)</u></p>
    </div>
</div>


</body>
</html>
