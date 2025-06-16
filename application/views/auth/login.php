<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title><?= $title['nama_website'] ?? 'Login' ?></title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <style>
    body {
      margin: 0;
      height: 100vh;
      background: linear-gradient(to bottom, #14532d, #1f2937);
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: 'Roboto', sans-serif;
      color: white;
    }

    .login-wrapper {
      width: 100%;
      max-width: 400px;
      padding: 20px;
      text-align: center;
    }

    .login-logo img {
      width: 120px;
      margin-bottom: 20px;
    }

    .login-title {
      font-size: 1.5rem;
      font-weight: bold;
    }

    .login-subtitle {
      font-size: 0.95rem;
      margin-bottom: 30px;
    }

    .form-label {
      text-align: left;
      display: block;
      margin-bottom: 5px;
      color: #e5e7eb;
      font-size: 0.9rem;
    }

    .form-control {
      margin-bottom: 15px;
      border-radius: 6px;
    }

    .btn-yellow {
      background-color: #facc15;
      color: #000;
      font-weight: bold;
    }

    .btn-yellow:hover {
      background-color: #eab308;
    }

    .warning {
      font-size: 0.85rem;
      color: #f87171;
      margin-bottom: 15px;
    }
  </style>
</head>
<body>

  <div class="login-wrapper">
    <div class="login-logo">
      <img src="<?= base_url('inc/media/icon.png') ?>" alt="Logo">
    </div>
    <div class="login-title">Santri Pasir – APP</div>
    <div class="login-subtitle">Back Office</div>

    <form action="<?= base_url('auth/login') ?>" method="POST" class="text-start">

      <?php if ($this->session->flashdata('message')): ?>
        <div class="warning text-center">⚠️ <?= $this->session->flashdata('message') ?></div>
      <?php endif; ?>

      <label class="form-label" for="username">Username</label>
      <input type="text" id="username" name="identity" class="form-control" placeholder="Username" required>

      <label class="form-label" for="password">Password</label>
      <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>

      <button type="submit" class="btn btn-yellow w-100 mt-2">Login</button>
    </form>
  </div>

</body>
</html>
