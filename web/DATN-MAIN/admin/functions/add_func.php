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

        $sql = "INSERT INTO Sach VALUES('$bookID','$publisher','$bookType',$discount, '$bookName',$desc,'$book_pic_files',$price,1,$outstanding,'',NULL)";

        $query_run = mysqli_query($mysqli, $sql);
        if($query_run) {
            $_SESSION[] = "Thêm sách thành công";
            header("Location: add.php");
            exit(0);
        }
        else {
            $_SESSION[] = "Thêm sách thất bại";
            header("Location: add.php");
            exit(0);
        }
    }
?>