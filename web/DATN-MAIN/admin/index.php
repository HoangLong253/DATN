<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Admin</title>
        <!--<link rel="stylesheet" href="admin\css\style.css">-->
        <link rel="stylesheet" href="admin\css\base.css">
        <link rel="stylesheet" href="admin\css\fonts.css">
        <link rel="stylesheet" href="admin\css\mau.css">
        <link rel="stylesheet" href="assets\fontawesome-free-6.3.0-web\css\all.css">
        <link rel="stylesheet" href="assets\fontawesome-free-6.3.0-web\css\regular.css">
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
            <a class="nav-link" href="books.php">
                Sách
            </a>
            <br>
            <a class="nav-link" href="employees.php">
                Nhân Viên
            </a>
            <br>
            <a class="nav-link" href="users.php">
                Người dùng
            </a>
            </aside>
            <div class="content-wrapper ">
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
                            <a href="" class="nav-link">
                                <i class="fas fa-sign-out-alt mr-1"></i>
                                Đăng xuất
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>
        </div>
    </body>
</html>