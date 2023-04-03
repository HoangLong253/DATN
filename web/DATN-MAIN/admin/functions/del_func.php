<?php
    require('../config.php');
    if(isset($_POST['emp_del']))
    {
        $emp_id = mysqli_real_escape_string($mysqli, $_POST['emp_del']);

        $query1 = "DELETE FROM `nhanvien` WHERE `nhanvien`.`MaNV` = '$emp_id'";

        $query_run1 = mysqli_query($mysqli, $query1);
        if($query_run1) {
            $_SESSION[] = "Thêm sách thành công";
            header("Location: ../employees.php");
            exit(0);
        }
        else {
            $_SESSION[] = "Thêm sách thất bại";
            header("Location: ../employees.php");
            exit(0);
        }
    } else if (isset($_POST['user_del'])) {
        $userID = mysqli_real_escape_string($mysqli, $_POST['user_del']);

        $query2 = "DELETE FROM `nguoidung` WHERE `nguoidung`.`MaNgDung` = '$userID'";

        $query_run2 = mysqli_query($mysqli, $query2);
        if($query_run2) {
            $_SESSION[] = "Thêm sách thành công";
            header("Location: ../users.php");
            exit(0);
        }
        else {
            $_SESSION[] = "Thêm sách thất bại";
            header("Location: ../users.php");
            exit(0);
        }
    } else {
        $bookID = mysqli_real_escape_string($mysqli, $_POST['book_del']);

        $query3 = "DELETE FROM `sach` WHERE `sach`.`MaSach` = '$bookID'";

        $query_run3 = mysqli_query($mysqli, $query3);
        if($query_run3) {
            $_SESSION[] = "Thêm sách thành công";
            header("Location: ../books.php");
            exit(0);
        }
        else {
            $_SESSION[] = "Thêm sách thất bại";
            header("Location: ../books.php");
            exit(0);
        }
    }
?>