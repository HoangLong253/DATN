<!DOCTYPE html>
<html lang="en">
<!-- Head -->

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookStore</title>
    <link rel="stylesheet" href="./assets/font/..">
    <link rel="stylesheet" href="./assets/bootstrap-5.0.2-dist/..">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/css/fonts.css">
    <link rel="stylesheet" href="./assets/fontawesome-free-6.3.0-web/css/all.min.css">
    <link rel="stylesheet" href="./assets/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="./assets/OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css">
    <script src="./assets/OwlCarousel2-2.3.4/docs/assets/vendors/jquery.min.js"></script>
    <script src="./assets/OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>


</head>
<!-- Body -->

<body>
    <div class="main">
        <!-- Header -->
        <div class="header">
            <div class="wrap-content">
                <div class="header__navbar">
                    <ul class="header__navbar-list">
                        <a href="https://bom.so/pPF8sq" class="header__navbar-item header__navbar-item--separate ">
                            <i class="header__navbar-icon fa-solid fa-location-dot"></i>
                            125/2 Hoà Hưng, P12, Q10, TP HCM
                        </a>

                        <li class="header__navbar-item">
                            <span class="header__navbar-title--no-pointer">Kết nối</span>
                            <a href="https://bom.so/tyvGGr" class="header__navbar-icon-link">
                                <i class="header__navbar-icon fa-brands fa-facebook"></i>
                            </a>
                            <a href="" class="header__navbar-icon-link">
                                <i class="header__navbar-icon fa-brands fa-square-instagram"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="header__navbar-list">
                        <li class="header__navbar-item">
                            <a href="" class="header__navbar-item-link">
                                <i class="header__navbar-icon fa-solid fa-bell"></i>
                                Thông Báo
                            </a>
                            <!--<div class="header__notify">
                                <header class="header__notify-header">
                                    <h3>Thông báo mới nhận</h3>
                                </header>
                                <ul class="header__notify-list">
                                    <li class="header__notify-item header__notify-item--viewed">
                                        <a class="header__notify-link" href="">
                                            <span> <img class="header__notify-img" src="./assets/images/logo.png" alt="" class="header__notify-img">
                                            </span>
                                            <div class="header__notify-infor">
                                                <span class="header__notify-name">Mắt Biếc Xuất Bản 2019</span>
                                                <span class="header__notify-desc">Tác giả Nguyễn Nhật Ánh...</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="header__notify-item header__notify-item--viewed">
                                        <a class="header__notify-link" href="">
                                            <span> <img class="header__notify-img" src="./assets/images/logo.png" alt="" class="header__notify-img">
                                            </span>
                                            <div class="header__notify-infor">
                                                <span class="header__notify-name">Mắt Biếc Xuất Bản 2019</span>
                                                <span class="header__notify-desc">Tác giả Nguyễn Nhật Ánh...</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="header__notify-item header__notify-item--viewed">
                                        <a class="header__notify-link" href="">
                                            <span> <img class="header__notify-img" src="./assets/images/logo.png" alt="" class="header__notify-img">
                                            </span>
                                            <div class="header__notify-infor">
                                                <span class="header__notify-name">Mắt Biếc Xuất Bản 2019</span>
                                                <span class="header__notify-desc">Tác giả Nguyễn Nhật Ánh...</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <div class="header__notify-footer">
                                    <a href="" class="header__notify-footer-btn">Xem tất cả</a>
                                </div>
                            </div>-->
                        </li>
                        <li class="header__navbar-item">
                            <a href="" class="header__navbar-item-link">
                                <i class="header__navbar-icon fa-solid fa-circle-question"></i>
                                Trợ Giúp
                            </a>
                        </li>
                        <li class="header__navbar-item header__navbar-item-bold header__navbar-item--separate">Đăng Ký
                        </li>
                        <li class="header__navbar-item header__navbar-item-bold">Đăng Nhập</li>
                    </ul>
                </div>
                <!--<div class="header__main">
                    <div class="header__main-logo">
                        <img class="header__main-logo-img " src="./assets/images/logo.png" alt="">
                    </div>

                    <div class="header__main-cpnname">

                    </div>

                    <div class="header__main-search">
                        
                    </div>

                    <div class="header__main-cart">

                    </div>
                </div> -->
                <!-- Header with search -->
                <div class="header-with-search ">
                    <div class="header__logo d-flex ">
                        <img class="header__logo-img " src="./assets/images/logo.png" alt="">
                        <div class="header__cpnname">Delicate Dragon BookStore
                        </div>
                    </div>
                    <div class="header__search">
                        <div class="header__search-input-wrap">
                            <input type="text" class="header__search-input" placeholder="Nhập từ khóa để tìm kiếm">
                            <!-- Search history -->
                            <div class="header__search-history">
                                <h3 class="header__search-history-heading">Lịch sử tìm kiếm</h3>
                                <ul class="header__search-history-list">
                                    <li class="header__search-history-items">
                                        <a href="">Thương nhớ Trà Long</a>
                                    </li>
                                    <li class="header__search-history-items">
                                        <a href="">Cô gái đến từ hôm qua</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <button class="header__search-btn">
                            <i class="header__search-btn-icon fa-solid fa-magnifying-glass"></i>
                        </button>
                    </div>
                    <!-- Cart -->
                    <!-- FadeIn chưa chuẩn -->
                    <div class="header__cart">
                        <div class="header__cart-wrap"><i class="header__cart-icon fa-solid fa-cart-shopping"></i>
                            <span class="header__cart-notice">
                                3
                            </span>
                            <!-- No cart: header__cart-list-no-cart-->
                            <div class="header__cart-list ">
                                <img src="./assets/images/no-cart.png" alt="" class="header__cart-no-cart-img">
                                <span class="header__cart-list-no-cart-msg">Chưa có sản phẩm</span>

                                <h4 class="header__cart-heading">Sản phẩm đã thêm</h4>
                                <ul class="header__cart-list-item">
                                    <!-- Cart item -->
                                    <!-- Tạm ngưng cart -->
                                    <li class="header__cart-item">
                                        <img src="" alt="" class="header__cart-img">
                                        <div class="header__cart-item-info -wrap">
                                            <div class="header__cart-item-info-head">
                                                <div class="header__cart-item-name">Thương nhớ Trà Long</div>
                                                <span class="header__cart-item-price">100.000vnd</span>
                                                <span class="header__cart-item-x">x</span>
                                                <span class="header__cart-item-qnt">2</span>
                                            </div>
                                            <div class="header__cart-item-body">
                                                <span class="header__cart-item-desc">Loại sản phẩm: Tiểu thuyết</span>
                                                <span class="header__cart-item-remove">Xóa</span>

                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <button class="btn btn-primary">Xem Giỏ Hàng</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- menu  -->
        <div class="wrap-menu">
            <div class="wrap-content">
                <ul class="d-flex justify-content-between align-items-center">
                    <li><a href="" class="active">Trang chủ</a></li>
                    <li class="line"></li>
                    <li><a href="">Giới Thiệu</a></li>
                    <li class="line"></li>
                    <li><a href="">Danh Mục</a></li>
                    <li class="line"></li>
                    <li><a href="">Tin Tức</a></li>
                    <li class="line"></li>
                    <li><a href="">Dịch Vụ</a></li>
                    <li class="line"></li>
                    <li><a href="">Tiêu Chí</a></li>
                    <li class="line"></li>
                    <li><a href="">Liên hệ</a></li>
                </ul>
            </div>
        </div>

        <div class="wrap-slideshow">
            <div class="owl-carousel owlCarousel">
                <div><img src="./assets/images/slide.png" alt=""></div>
                <div><img src="./assets/images/banner_02.png" alt=""></div>
                <div><img src="./assets/images/slide1.png" alt=""></div>
                <div><img src="./assets/images/slideshow_02.png" alt=""></div>

            </div>
        </div>

        <!-- Sản phẩm -->

        <!-- <div class="wrap-product padding50">
            <div class="wrap-content">
                <div class="product-list">
                    <div class="product">
                        <a href="" class="box-product">
                            <div class="image-product"></div>
                            <div class="infor-product">
                                <div class="name-product">Thương nhớ Trà Long</div>
                                <div class="price-product"> 100.000 vnd</div>
                            </div>
                        </a>
                    </div>

                    <div class="product">
                        <a href="" class="box-product">
                            <div class="image-product"></div>
                            <div class="infor-product">
                                <div class="name-product">Thương nhớ Trà Long</div>
                                <div class="price-product"> 100.000 vnd</div>
                            </div>
                        </a>
                    </div>

                    <div class="product">
                        <a href="" class="box-product">
                            <div class="image-product"></div>
                            <div class="infor-product">
                                <div class="name-product">Thương nhớ Trà Long</div>
                                <div class="price-product"> 100.000 vnd</div>
                            </div>
                        </a>
                    </div>
                    <div class="product">
                        <a href="" class="box-product">
                            <div class="image-product"></div>
                            <div class="infor-product">
                                <div class="name-product">Thương nhớ Trà Long</div>
                                <div class="price-product"> 100.000 vnd</div>
                            </div>
                        </a>
                    </div>

                    <div class="product">
                        <a href="" class="box-product">
                            <div class="image-product"></div>
                            <div class="infor-product">
                                <div class="name-product">Thương nhớ Trà Long</div>
                                <div class="price-product"> 100.000 vnd</div>
                            </div>
                        </a>
                    </div>
                    <div class="product">
                        <a href="" class="box-product">
                            <div class="image-product"></div>
                            <div class="infor-product">
                                <div class="name-product">Thương nhớ Trà Long</div>
                                <div class="price-product"> 100.000 vnd</div>
                            </div>
                        </a>
                    </div>
                    <div class="product">
                        <a href="" class="box-product">
                            <div class="image-product"></div>
                            <div class="infor-product">
                                <div class="name-product">Thương nhớ Trà Long</div>
                                <div class="price-product"> 100.000 vnd</div>
                            </div>
                        </a>
                    </div>
                    <div class="product">
                        <a href="" class="box-product">
                            <div class="image-product"></div>
                            <div class="infor-product">
                                <div class="name-product">Thương nhớ Trà Long</div>
                                <div class="price-product"> 100.000 vnd</div>
                            </div>
                        </a>
                    </div>

                </div>
            </div>
        </div> -->

        <!-- Containter -->
        <!-- <div class="container">
            <a href="books.php">
                Sách
            </a>
            <a href="employees.php">
                Nhân Viên
            </a>
            <a href="users.php">
                Người dùng
            </a>
        </div> -->
        <!-- Footer -->
        <div class="footer">

        </div>
    </div>

</body>
<script>
$('.owl-carousel').owlCarousel({
    loop: true,
    margin: 10,
    nav: true,
    responsive: {
        0: {
            items: 1
        },
    }
})
</script>

</html>