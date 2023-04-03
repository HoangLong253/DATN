<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Admin</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="../assets/font/..">
        <link rel="stylesheet" href="../assets/bootstrap-5.0.2-dist/..">
        <link rel="stylesheet" href="../assets/css/mau.css">
        <link rel="stylesheet" href="../assets/css/base.css">
        <link rel="stylesheet" href="../assets/css/fonts.css">
        <link rel="stylesheet" href="../assets/fontawesome-free-6.3.0-web/css/all.min.css">
    </head>
    <body>
        <div class="wrapper">
            <aside class="main-sidebar sidebar-dark-primary elevation-4 text-sm">
                <a class="brand-link" href="http://localhost/DATN/web/DATN-MAIN/admin/">
                    <img class="brand-image" src="../assets/images/logo/logo.png" alt="">
                    <div class="header__cpnname">
                        Trang Admin
                    </div>
                </a>
            <a class="nav-link nav_btn_admin" href="../index.php">
                Trang chủ
            </a>
            <a class="nav-link nav_btn_admin" href="../books.php">
                Sách
            </a>
            <a class="nav-link nav_btn_admin" href="../employees.php">
                Nhân Viên
            </a>
            <a class="nav-link nav_btn_admin" href="../users.php">
                Người dùng
            </a>
            </aside>
            <div class="content-wrapper ">
                <!-- Header -->
                <nav class="navbar navbar-expand navbar-white navbar-light text-sm">

                    <!-- Left navbar links -->
                    <ul class="navbar-nav">
                        <li class="nav-item nav-item-hello d-sm-inline-block">
                            <a class="nav-link"><span class="text-split">Xin chào, admin!</span></a>
                        </li>
                    </ul>

                    <!-- Đăng xuất -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item d-sm-inline-block">
                            <a href="#" target="_blank" class="nav-link">
                                <i class="fas fa-reply"></i>
                            </a>
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
                <div class="container-fluid">
                    <div class="mt-5 mb-3 clearfix">
                        <h2 class="pull-left">Thêm sách</h2>
                    </div>
                    <form action="POST">
                        Mã sách:
                        <div>
                            <input type="text" name="bookid" placeholder="Nhập mã sách" value required>
                        </div> <br>

                        Tên sách:
                        <div>
                            <input type="text" name="bookname" placeholder="Nhập tên sách" value required>
                        </div> <br>
                        Nhà xuất bản:
                        <div>
                            <select name="publisher" id="publisher">
                                <?php
                                    require_once('../config.php');
                                    $sql1 = 'SELECT TenNXB FROM nhaxuatban';
                                    if($result1 = $mysqli->query($sql1)) {
                                        if($result1->num_rows > 0) {
                                            while($row = $result1->fetch_array()) {
                                                echo '<option>' . $row['TenNXB'] .'</option>';
                                            }
                                        }
                                    }
                                ?>
                            </select>
                        </div> <br>
                        Loại sách:
                        <div>
                            <select name="booktype" id="">
                                <?php
                                    require_once('../config.php');
                                    $sql2 = 'SELECT TenLoaiSach FROM loaisach';
                                    if($result2 = $mysqli->query($sql2)) {
                                        if($result2->num_rows > 0) {
                                            while($row = $result2->fetch_array()) {
                                                echo '<option>' . $row['TenLoaiSach'] .'</option>';
                                            }
                                        }
                                    }
                                ?>
                            </select>
                        </div> <br>
                        Đơn giá:
                        <div>
                            <input type="text" name="price" placeholder="Nhập đơn giá" value required>
                        </div> <br>

                        Phần trăm giảm:
                        <div>
                            <input type="text" name="discount" placeholder="Nhập phầm trăm giảm" value required>
                        </div> <br>

                        <div>
                            <input type="checkbox" name="outstanding" name="NoiBat" value="yes"/>
                            Nổi bật
                        </div> <br>
                        <div>
                            <textarea name="desc" cols="100" rows="10" placeholder="Nhập mô tả"></textarea>
                        </div> <br>
                        <div>
                            <label for="files">Thêm ảnh:</label> <br>
                            <input type="file" id="files" name="book_pic_files" multiple>
                        </div> <br>
                        <div> 
                            <button type="submit" name="insert-book" class="admin-btn btn-success">Thêm</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>