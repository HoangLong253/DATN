<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=1366">
        <title>Admin</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/a">
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/fonts.css">
        <link rel="stylesheet" href="..\assets\fontawesome-free-6.3.0-web\css\all.css">
        <link rel="stylesheet" href="..\assets\fontawesome-free-6.3.0-web\css\regular.css">
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
            <a class="nav-link nav_btn_admin" href="">
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

            </div>
        </div>
    </body>
</html>