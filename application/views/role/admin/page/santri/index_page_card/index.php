<style>
    .card-siswa {
      border: 1px solid #ddd;
      border-radius: 8px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
      margin-bottom: 20px;
      padding: 15px 10px;
      text-align: center;
      background-color: #fff;
      transition: 0.2s ease-in-out;
      height: 220px;
    }
    .card-siswa:hover {
      box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    }
    .card-siswa img {
      border-radius: 10%;
      width: 100px;
      height: 100px;
      object-fit: cover;
      margin-bottom: 10px;
    }
    .card-siswa h5 {
      margin-top: 5px;
      margin-bottom: 10px;
      font-size: 14px;
    }
    .card-siswa .btn {
      margin: 1px;
    }
    .top-actions {
      margin-bottom: 20px;
    }
    .search-form .input-group {
      max-width: 300px;
    }
    .top-actions {
        margin-bottom: 20px;
    }

    .top-actions .form-inline .form-control {
        width: 200px;
    }

    .btn-tambah {
        font-weight: bold;
        padding: 6px 12px;
    }

    @media (max-width: 767px) {
        .top-actions .form-inline {
        margin-top: 10px;
        }
        .top-actions .form-inline .form-control {
        width: 100%;
        margin-bottom: 5px;
        }
        .top-actions .form-inline .btn {
        width: 100%;
        }
    }
  </style>
<div class="row top-actions">
  <div class="col-sm-6">
    <a href="tambah_siswa" class="btn btn-success btn-tambah">
      <i class="glyphicon glyphicon-plus"></i> Tambah Siswa
    </a>
  </div>
  <div class="col-sm-6 text-right">
    <form method="GET" class="form-inline" action="">
      <div class="form-group">
        <input type="text" name="q" class="form-control" placeholder="Cari nama siswa...">
      </div>
      <button type="submit" class="btn btn-primary">
        <i class="glyphicon glyphicon-search"></i> Cari
      </button>
    </form>
  </div>
</div>
  <!-- Card Grid -->
  <div class="row">

    <!-- 6x Card (contoh) -->
    <div class="col-xs-6 col-sm-4 col-md-2">
      <div class="card-siswa">
        <img src="https://placehold.co/400x600" alt="Foto Siswa">
        <h5>Adit Pratama</h5>
        <a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i></a>
        <a href="#" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-pencil"></i></a>
        <a href="#" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
      </div>
    </div>

    <div class="col-xs-6 col-sm-4 col-md-2">
      <div class="card-siswa">
        <img src="https://placehold.co/400x600" alt="Foto Siswa">
        <h5>Budi Santoso</h5>
        <a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i></a>
        <a href="#" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-pencil"></i></a>
        <a href="#" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
      </div>
    </div>

    <div class="col-xs-6 col-sm-4 col-md-2">
      <div class="card-siswa">
        <img src="https://placehold.co/400x600" alt="Foto Siswa">
        <h5>Citra Lestari</h5>
        <a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i></a>
        <a href="#" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-pencil"></i></a>
        <a href="#" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
      </div>
    </div>

    <div class="col-xs-6 col-sm-4 col-md-2">
      <div class="card-siswa">
        <img src="https://placehold.co/400x600" alt="Foto Siswa">
        <h5>Diana Putri</h5>
        <a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i></a>
        <a href="#" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-pencil"></i></a>
        <a href="#" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
      </div>
    </div>

    <div class="col-xs-6 col-sm-4 col-md-2">
      <div class="card-siswa">
        <img src="https://placehold.co/400x600" alt="Foto Siswa">
        <h5>Eko Riyadi</h5>
        <a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i></a>
        <a href="#" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-pencil"></i></a>
        <a href="#" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
      </div>
    </div>

    <div class="col-xs-6 col-sm-4 col-md-2">
      <div class="card-siswa">
        <img src="https://placehold.co/400x600" alt="Foto Siswa">
        <h5>Fajar Nugroho</h5>
        <a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i></a>
        <a href="#" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-pencil"></i></a>
        <a href="#" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
      </div>
    </div>

  </div>