<?php
    require('../config.php');
    session_start();

    if(isset($_POST['insert-book'])) {
        $bookID = mysqli_real_escape_string($mysqli, $_POST['bookid']);
        $bookName = mysqli_real_escape_string($mysqli, $_POST['bookname']);
        $publisher = mysqli_real_escape_string($mysqli, $_POST['publisher']);
        $bookType = mysqli_real_escape_string($mysqli, $_POST['booktype']);
        $price = mysqli_real_escape_string($mysqli, $_POST['price']);
        $discount = mysqli_real_escape_string($mysqli, $_POST['discount']);
        $outstanding = mysqli_real_escape_string($mysqli, $_POST['outstanding']);
        $desc = mysqli_real_escape_string($mysqli, $_POST['desc']);
        $book_pic_files = mysqli_real_escape_string($mysqli, $_POST['book_pic_files']);

        $sql1 = "INSERT INTO Sach VALUES('$bookID','$publisher','$bookType',$discount, '$bookName',$desc,'$book_pic_files',$price,1,$outstanding,'',NULL)";

        $query_run1 = mysqli_query($mysqli, $sql1);
        if($query_run1) {
            $_SESSION[] = "Thêm sách thành công";
            header("Location: book_add.php");
            exit(0);
        }
        else {
            $_SESSION[] = "Thêm sách thất bại";
            header("Location: book_add.php");
            exit(0);
        }
    } else if(isset($_POST['insert-employee'])) {
        $empID = mysqli_real_escape_string($mysqli, $_POST['emp_id']);
        $fullName = mysqli_real_escape_string($mysqli, $_POST['fullname']);
        $email = mysqli_real_escape_string($mysqli, $_POST['email']);
        $pass = mysqli_real_escape_string($mysqli, $_POST['pass']);
        $phone = mysqli_real_escape_string($mysqli, $_POST['phone']);
        //$isAdmin = mysqli_real_escape_string($mysqli, $_POST['isadmin']);

        $sql2 = "INSERT INTO 
        NhanVien(MaNV, HoTen, Email, MatKhau, SDT, TrangThai, LaAdmin, created_at, updated_at, deleted_at) 
        VALUES ('$empID', '$fullName', '$email', '$pass', '$phone', 1, 0, CURRENT_TIMESTAMP, '', '')";

        $query_run2 = mysqli_query($mysqli, $sql2);
        if($query_run2) {
            $_SESSION[] = "Thêm nhân viên thành công";
            header("Location: emp_add.php");
            exit(0);
        }
        else {
            $_SESSION[] = "Thêm nhân viên thất bại";
            header("Location: emp_add.php");
            exit(0);
        }
    } else if (isset($_POST['insert-user'])){
        $userID = mysqli_real_escape_string($mysqli, $_POST['userid']);
        $fullName = mysqli_real_escape_string($mysqli, $_POST['fullname']);
        $email = mysqli_real_escape_string($mysqli, $_POST['email']);
        $phone = mysqli_real_escape_string($mysqli, $_POST['phone']);

        $sql3 = "INSERT INTO      
        NguoiDung(MaNgDung, MaGioHang, HoTen, Email, SDT, TrangThai, created_at, updated_at, deleted_at)
        VALUES ('$userID', null, '$fullName', '$email', '$phone', 1,  CURRENT_TIMESTAMP, '', '')";

        $query_run3 = mysqli_query($mysqli, $sql3);
        if($query_run3) {
            $_SESSION[] = "Thêm người dùng thành công";
            header("Location: user_add.php");
            exit(0);
        }
        else {
            $_SESSION[] = "Thêm người dùng thất bại";
            header("Location: user_add.php");
            exit(0);
        }
    }
?>