<!DOCTYPE html>
<html>
<head>
<?php include('h.php');
error_reporting(error_reporting()&E_NOTICE)
?>
<head>
  <body>
    <div class="container">
  <?php include('navbar.php');?>
  <p></p>
    <div class="row">
        <!--คลิกไปเมนูของหน้าต่าง-->
      <div class="col-md-3">
        <?php include('menu_left.php');?>
      </div>

<!--คลิกไปหน้าจัดการadmin เพิ่มลบแก้ไข-->
<div class="col-md-9">
<p><a href="admin.php?p=s" class="btn-info btn-sm">เพิ่มรายชื่อผู้ดูแลระบบ</a></p>

<?php
$act = $_GET['p'];
if($act == 's'){
include('admin_form_add.php');
}elseif ($act == 'edit') {
include('admin_form_edit.php');
}
else {
include('admin_list.php');
}
?>
    </div>
    </div>
  </div>
  </body>
</html>