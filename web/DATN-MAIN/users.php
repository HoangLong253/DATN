<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Người dùng</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="admin\css\base.css">
    <link rel="stylesheet" href="admin\css\fonts.css">
    <link rel="stylesheet" href="admin\css\mau.css">
    <link rel="stylesheet" href="assets\fontawesome-free-6.3.0-web\css\all.css">
    <link rel="stylesheet" href="assets\fontawesome-free-6.3.0-web\css\regular.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .wrapper1{
            width: 1600px;
            margin: 0 auto;
        }
        table tr td:last-child{
            width: 200px;
        }
    </style>
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();   
        });
    </script>
</head>
<body>
<div class="wrapper">
        <aside class="main-sidebar sidebar-dark-primary elevation-4 text-sm">
            <a class="brand-link" href="http://localhost:60/admin">
                <img class="brand-image" src="./assets/images/logo.png" alt="">
                <div class="header__cpnname">
                    Trang Admin
                </div>
            </a>
            <a class="nav-link nav_btn_admin" href="http://localhost:60/admin">
                Trang chủ
            </a>
            <a class="nav-link nav_btn_admin" href="books.php">
                Sách
            </a>
            <a class="nav-link nav_btn_admin" href="employees.php">
                Nhân Viên
            </a>
            <a class="nav-link nav_btn_admin" href="users.php">
                Người dùng
            </a>
            </aside>
            <div class="content-wrapper">
                <!-- Header -->
                <nav class="main-header navbar navbar-expand navbar-white navbar-light text-sm">

                    <!-- Left navbar links -->
                    <ul class="navbar-nav">
                        <li class="nav-item nav-item-hello d-sm-inline-block">
                            <a class="nav-link"><span class="text-split">Xin chào, admin!</span></a>
                        </li>
                    </ul>

                    <!-- Đăng xuất -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item d-sm-inline-block">
                            <a href="../" target="_blank" class="nav-link"><i class="fas fa-reply"></i></a>
                        </li>
                        <li class="nav-item d-sm-inline-block">
                            <a id="dropdownSubMenu-info" href="#" class="nav-link dropdown-toggle">
                                <i class="fas fa-cogs"></i>
                            </a>
                        </li>
                        <li class="nav-item d-sm-inline-block">
                            <a href="" class="nav-link">
                                <i class="fas fa-sign-out-alt mr-1"></i>
                                Đăng xuất
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="wrapper1">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mt-5 mb-3 clearfix">
                                    <h2 class="pull-left">Danh sách người dùng</h2>
                                    <a href="create.php" class="btn btn-success pull-right"><i class="fa fa-plus"></i>Thêm</a>
                                </div>
                                <?php
                    // Include config file
                    require_once "config.php";
                    
                    // Attempt select query execution
                    $sql = "SELECT * FROM NguoiDung";
                    if($result = $mysqli->query($sql)){
                        if($result->num_rows > 0){
                            echo '<table class="table table-bordered table-striped">';
                                echo "<thead>";
                                    echo "<tr>";
                                        echo "<th>Mã người dùng</th>";
                                        echo "<th>Họ tên người dùng</th>";
                                        echo "<th>Email</th>";
                                        echo "<th>Số điện thoại</th>";
                                        echo "<th>Trạng thái</th>";
                                        echo "<th>Chức năng</th>";
                                    echo "</tr>";
                                echo "</thead>";
                                echo "<tbody>";
                                while($row = $result->fetch_array()){
                                    echo "<tr>";
                                        echo "<td>" . $row['MaNgDung'] . "</td>";
                                        echo "<td>" . $row['HoTen'] . "</td>";
                                        echo "<td>" . $row['Email'] . "</td>";
                                        echo "<td>" . $row['SDT'] . "</td>";
                                        /*echo "<td>" . $row['TrangThai'] . "</td>";*/
                                        ?>
                                            <td>
                                                <input type="checkbox" id="TrangThai" name="TrangThai" value="yes"<?php if($row['TrangThai']) echo "checked" ?> onclick="return false;"/>
                                            </td>
                                        <?php
                                        echo "<td>";
                                            echo '<a href="update.php" class="mr-3" title="Update Record" data-toggle="tooltip"><span class="fa fa-pencil"></span></a>';
                                            echo '<a href="delete.php" title="Delete Record" data-toggle="tooltip"><span class="fa fa-trash"></span></a>';
                                        echo "</td>";
                                    echo "</tr>";
                                }
                                echo "</tbody>";                            
                            echo "</table>";
                            // Free result set
                            unset($result);
                        } else{
                            echo '<div class="alert alert-danger"><em>Không có dữ liệu người dùng.</em></div>';
                        }
                    } else{
                        echo "Oops! Đã xảy ra lỗi, Vui lòng thử lại lần sau.";
                    }
                    
                    // Close connection
                    unset($pdo);
                    ?>
                </div>
                </div>        
                </div>
                </div>
            </div>
        </div>
</body>
</html>