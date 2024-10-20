<!doctype html>
<html lang="en" data-bs-theme="auto">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ครัว 5 สหาย (5Friends Kitchen)</title>
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #D3D3D3;
        }
        .navbar, .bg-dark {
            background-color: #808080 !important;
        }
        .navbar-brand, .nav-link, .text-white {
            color: #000000 !important;
        }
        .btn-secondary {
            background-color: #808080;
            border-color: #808080;
        }
        .text-muted, .lead, h1, h2 {
            color: #000000 !important;
        }
        footer {
            background-color: #808080;
            color: #808080;
        }
        .featurette-divider {
            border-top: 5px solid #000000;
        }
    </style>
</head>
<body>
<header data-bs-theme="dark">
    <div class="navbar navbar-dark bg-dark shadow-sm">
        <a href="#" class="navbar-brand d-flex align-items-center">
            <strong>ครัว 5 สหาย (5Friends Kitchen)</strong>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</header>

<div class="container mt-5">
    <h1 class="text-center">แก้ประเภทสินค้า</h1>
    
    <form method="post" action="">
        <div class="form-group">
            <label for="c_name">ชื่อประเภทสินค้า:</label>
            <input type="text" class="form-control" id="c_name" name="c_name" value="" required>
        </div>

        <a href="type.php" class="btn btn-secondary">กลับไปหน้าหลัก</a>
        <button type="submit" class="btn btn-primary" name="update">บันทึก</button>
    </form>
</div>

<?php
include_once("connectdb.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Sanitize and retrieve form data
    $c_id = intval($_POST['c_id']); // Make sure to use the correct ID
    $c_name = mysqli_real_escape_string($conn, $_POST['c_name']); // Sanitize input

    // Update the category in the database
    $sql = "UPDATE category SET c_name = '$c_name' WHERE c_id = '$c_id'";

    if (mysqli_query($conn, $sql)) {
        echo "<div class='alert alert-success text-center'>อัปเดตข้อมูลสำเร็จ!</div>";
    } else {
        echo "<div class='alert alert-danger text-center'>เกิดข้อผิดพลาดในการอัปเดต: " . mysqli_error($conn) . "</div>";
    }
}
?>

<script src="../assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
