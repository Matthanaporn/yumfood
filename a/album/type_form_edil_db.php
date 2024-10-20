<meta charset="UTF-8">
<?php
// 1. เชื่อมต่อ database: 
include('connectdb.php');  // ไฟล์เชื่อมต่อกับ database

// 2. สร้างตัวแปรสำหรับรับค่าที่นำมาแก้ไขจากฟอร์ม
$c_id = $_REQUEST["c_id"];
$c_name = $_REQUEST["c_name"];

// 3. ทำการปรับปรุงข้อมูลที่จะแก้ไขลงใน database 
$sql = "UPDATE category SET c_name='$c_name' WHERE c_id='$c_id'";

$result = mysqli_query($conn, $sql); // ใช้ $conn แทน $con ตามที่ประกาศใน connectdb.php

// 4. ปิดการเชื่อมต่อ database 
mysqli_close($conn);

// 5. จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม
if ($result) {
    echo "<script type='text/javascript'>";
    echo "alert('อัปเดตข้อมูลสำเร็จ');";
    echo "window.location = 'type.php';";
    echo "</script>";
} else {
    echo "<script type='text/javascript'>";
    echo "alert('เกิดข้อผิดพลาด กรุณาลองใหม่อีกครั้ง');";
    echo "</script>";
}
?>
