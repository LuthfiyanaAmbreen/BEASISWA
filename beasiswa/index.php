<?php
session_start();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pendaftaran Beasiswa</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>

<body>
    <nav class="navbar navbar-expand-lg fixed-top bg-white shadow-sm">
    <div class="container">
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.php">Beasiswa</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?menu=pendaftaran">Pendaftaran</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?menu=hasil">Hasil</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?menu=tabel">Tabel Pendaftaran</a>
          </li>
        </ul>
      </div>
    </div>
</nav>


    <div class="container-fluid">
    <?php
    if (isset($_GET['menu'])) {
      $menu = $_GET['menu'];

      if ($menu == "pendaftaran") {
        include "pendaftaran.php";
      }
      elseif ($menu == "hasil") {
          include "hasil.php";
      }
      elseif ($menu == "tabel") {
        include "tabel_pendaftaran.php";
      }
      elseif ($menu == "simpan_data") {
        include "proses_pendaftaran.php";
      }
    } else {
      include "home.php";
    }
    ?>
  </div>
</body>

</html>