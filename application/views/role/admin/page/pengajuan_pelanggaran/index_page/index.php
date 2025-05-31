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
      min-height: 220px;
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
    <a href="Pelanggaran/add_page" class="app-item btn btn-success btn-tambah">
      <i class="glyphicon glyphicon-plus"></i> Tambah Pelanggaran Santri
    </a>
  </div>
  <div class="col-sm-6 text-right">
    <form method="GET" class="form-inline" action="">
      <div class="form-group">
        <input type="text" name="q" class="form-control" placeholder="Cari nama siswa...">
      </div>
      <button type="submit" class="btn btn-primary">
        <i class="icon-search"></i> Cari
      </button>
    </form>
  </div>
</div>
  <!-- Card Grid -->
  <div class="row">
    <div class="content-data">

    </div>
    <!-- 6x Card (contoh) -->
    

  </div>