<!DOCTYPE html>
<html lang="vn">
<!-- Head -->

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=1366">

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
    <div class="containerr">
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
                                <!-- Click vào chuông hiện thông báo -->
                                <div class="header__notify">
                                    <header class="header__notify-header">
                                        <h3>Thông báo mới nhận</h3>
                                    </header>
                                    <ul class="header__notify-list">
                                        <li class="header__notify-item header__notify-item--viewed">
                                            <a class="header__notify-link" href="">
                                                <span> <img class="header__notify-img" src="./assets/images/logo.png"
                                                        alt="" class="header__notify-img">
                                                </span>
                                                <div class="header__notify-infor">
                                                    <span class="header__notify-name">Mắt Biếc Xuất Bản 2019</span>
                                                    <span class="header__notify-desc">Tác giả Nguyễn Nhật Ánh...</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="header__notify-item header__notify-item--viewed">
                                            <a class="header__notify-link" href="">
                                                <span> <img class="header__notify-img" src="./assets/images/logo.png"
                                                        alt="" class="header__notify-img">
                                                </span>
                                                <div class="header__notify-infor">
                                                    <span class="header__notify-name">Mắt Biếc Xuất Bản 2019</span>
                                                    <span class="header__notify-desc">Tác giả Nguyễn Nhật Ánh...</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="header__notify-item header__notify-item--viewed">
                                            <a class="header__notify-link" href="">
                                                <span> <img class="header__notify-img" src="./assets/images/logo.png"
                                                        alt="" class="header__notify-img">
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
                                </div>

                            </li>
                            <li class="header__navbar-item">
                                <a href="" class="header__navbar-item-link">
                                    <i class="header__navbar-icon fa-solid fa-circle-question"></i>
                                    Trợ Giúp
                                </a>
                            </li>
                            <li class="header__navbar-item header__navbar-item-bold header__navbar-item--separate">Đăng
                                Ký
                            </li>
                            <li class="header__navbar-item header__navbar-item-bold">Đăng Nhập</li>
                        </ul>
                    </div>

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
                                        <li class="header__cart-item">
                                            <img src="https://salt.tikicdn.com/cache/100x100/ts/review/9e/80/22/ff1656d3fbc597360c5cce278d4b838c.jpg.webp"
                                                alt="" class="header__cart-img">
                                            <div class="header__cart-item-info -wrap">
                                                <div class="header__cart-item-head">
                                                    <div class="header__cart-item-name">Thương nhớ Trà Long</div>
                                                    <div class="header__cart-item-price-wrap">
                                                        <span class="header__cart-item-price">100.000vnd</span>
                                                        <span class="header__cart-item-x">x</span>
                                                        <span class="header__cart-item-qnt">2</span>
                                                    </div>
                                                </div>
                                                <div class="header__cart-item-body">
                                                    <span class="header__cart-item-desc">Loại sản phẩm: Tiểu
                                                        thuyết</span>
                                                    <span class="header__cart-item-remove">Xóa</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="header__cart-item">
                                            <img src="https://salt.tikicdn.com/cache/100x100/ts/review/9e/80/22/ff1656d3fbc597360c5cce278d4b838c.jpg.webp"
                                                alt="" class="header__cart-img">
                                            <div class="header__cart-item-info -wrap">
                                                <div class="header__cart-item-head">
                                                    <div class="header__cart-item-name">Thương nhớ Trà Long</div>
                                                    <div class="header__cart-item-price-wrap">
                                                        <span class="header__cart-item-price">100.000vnd</span>
                                                        <span class="header__cart-item-x">x</span>
                                                        <span class="header__cart-item-qnt">2</span>
                                                    </div>
                                                </div>
                                                <div class="header__cart-item-body">
                                                    <span class="header__cart-item-desc">Loại sản phẩm: Tiểu
                                                        thuyết</span>
                                                    <span class="header__cart-item-remove">Xóa</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="header__cart-item">
                                            <img src="https://salt.tikicdn.com/cache/100x100/ts/review/9e/80/22/ff1656d3fbc597360c5cce278d4b838c.jpg.webp"
                                                alt="" class="header__cart-img">
                                            <div class="header__cart-item-info -wrap">
                                                <div class="header__cart-item-head">
                                                    <div class="header__cart-item-name">Thương nhớ Trà Long</div>
                                                    <div class="header__cart-item-price-wrap">
                                                        <span class="header__cart-item-price">100.000vnd</span>
                                                        <span class="header__cart-item-x">x</span>
                                                        <span class="header__cart-item-qnt">2</span>
                                                    </div>
                                                </div>
                                                <div class="header__cart-item-body">
                                                    <span class="header__cart-item-desc">Loại sản phẩm: Tiểu
                                                        thuyết</span>
                                                    <span class="header__cart-item-remove">Xóa</span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <a href="#" class="header__cart-view-cart btn btn-primary">Xem Giỏ Hàng</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Menu  -->
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
            <!-- Slideshow -->
            <div class="wrap-slideshow">
                <div class="owl-slideshow owl-carousel owlCarousel">
                    <div><img src="./assets/images/slide.png" alt=""></div>
                    <div><img src="./assets/images/banner_02.png" alt=""></div>
                    <div><img src="./assets/images/slide1.png" alt=""></div>
                    <div><img src="./assets/images/slideshow_02.png" alt=""></div>

                </div>
            </div>
            <!-- Đối tác nhà xuất bản -->
            <div class="wrap-partner">
                <div class="wrap-content">
                <div class="title-text">ĐỐI TÁC CỦA CHÚNG TÔI</div>
                    <div class="wrap-slide-partner">
                        <div class="owl-partner owl-carousel owlCarousel">
                            <div><img src="./assets/images/doi-tac/brand-1-5394-2516.jpg" alt=""></div>
                            <div><img src="./assets/images/doi-tac/brand-2-9477-7504.jpg" alt=""></div>
                            <div><img src="./assets/images/doi-tac/brand-3-1828-5079.jpg" alt=""></div>
                            <div><img src="./assets/images/doi-tac/brand-4-3020-1744.jpg" alt=""></div>
                            <div><img src="./assets/images/doi-tac/brand-5-3471-2234.jpg" alt=""></div>
                            <div><img src="./assets/images/doi-tac/brand-6-8551-1039.jpg" alt=""></div>
                            <div><img src="./assets/images/doi-tac/brand-7-2941-8624.jpg" alt=""></div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Sản phẩm nổi bật -->
            <div class="wrap-spnb">
                <div class="wrap-content">
                <div class="title-text">SẢN PHẨM NỔI BẬT</div>
                    <div class="wrap-slide-spnb">
                        <div class="owl-spnb owl-carousel owlCarousel">

                            <?php
                                require_once "config.php";

                                $sql1 = "SELECT * FROM Sach WHERE MaLoaiSach = 'GK' AND NoiBat = 1";

                                if($result1 = $mysqli->query($sql1)){
                                    if($result1->field_count > 0){
                                        while($row = $result1->fetch_array()){
                                        ?>
                                            <div class="product">
                                                <a href="#" class="box-product">
                                                    <div class="">
                                                        <img alt="ảnh lỗi" src='./assets/images/sach/GK/<?php echo $row['HinhAnh'] ?>' width="200" height="300"></img>
                                                    </div>
                                                    <div class="infor-product">
                                                    <?php
                                                        echo '<div class="name-product">' . $row['TenSach'] . '</div>';
                                                        echo '<div class="price-product">' . $row['DonGia'] . ' đ</div>';
                                                    ?>
                                                    </div>
                                                </a>
                                            </div>
                                        <?php
                                        }
                                    } else {
                                        echo '<div class="alert alert-danger"><em>Không có dữ liệu sách.</em></div>';
                                    }
                                } else{
                                    echo "Oops! Đã xảy ra lỗi, Vui lòng thử lại lần sau.";
                                }
                            ?>

                            <!-- Ví dụ spnb -->
                            <!--<div class="product">
                                <a href="" class="box-product">
                                    <div class="image-product"></div>
                                    <div class="infor-product">
                                        <div class="name-product">Iphone 14 pro max 256gb</div>
                                        <div class="price-product"> 29.000.000 vnd</div>
                                    </div>
                                </a>
                            </div>
                            <div class="product">
                                <a href="" class="box-product">
                                    <div class="image-product"></div>
                                    <div class="infor-product">
                                        <div class="name-product">Iphone 14 pro max 256gb</div>
                                        <div class="price-product"> 29.000.000 vnd</div>
                                    </div>
                                </a>
                            </div>
                            <div class="product">
                                <a href="" class="box-product">
                                    <div class="image-product"></div>
                                    <div class="infor-product">
                                        <div class="name-product">Iphone 14 pro max 256gb</div>
                                        <div class="price-product"> 29.000.000 vnd</div>
                                    </div>
                                </a>
                            </div>-->
                            <!-- end ví dụ -->
                        </div>
                    </div>
                </div>
            </div>


            <!-- Sản phẩm -->
            <div class="wrap-product padding50">
                <div class="wrap-content">
                    <div class="product-list">
                        <?php
                        // Include config file
                        require_once "config.php";

                        $sql2 = "SELECT * FROM Sach WHERE MaLoaiSach = 'GK'";

                        if($result = $mysqli->query($sql2)){
                            if($result->field_count > 0){
                                while($row = $result->fetch_array()){
                                    ?>
                        <div class="product">
                            <a href="#" class="box-product">
                                <div class="">
                                    <img alt="ảnh lỗi" src='./assets/images/sach/GK/<?php echo $row['HinhAnh'] ?>'
                                        width="200" height="300"></img>
                                </div>
                                <div class="infor-product">
                                    <?php
                                        echo '<div class="name-product">' . $row['TenSach'] . '</div>';
                                        echo '<div class="price-product">' . $row['DonGia'] . ' đ</div>';
                                    ?>
                                </div>
                            </a>
                        </div>
                        <?php
                            }
                            } else{
                                echo '<div class="alert alert-danger"><em>Không có dữ liệu sách.</em></div>';
                            }
                        } else{
                            echo "Oops! Đã xảy ra lỗi, Vui lòng thử lại lần sau.";
                        }
                    ?>
                    </div>
                </div>
            </div>


            <!-- Footer -->
            <div class="footer">

            </div>
        </div>
    </div>
</body>
<script>
$('.owl-slideshow').owlCarousel({
    loop: true,
    margin: 10,
    nav: false,
    responsive: {
        0: {
            items: 1
        },
    }
})
$('.owl-partner').owlCarousel({
    loop: true,
    margin: 10,
    nav: false,
    responsive: {
        0: {
            items: 6
        },
    }
})
$('.owl-spnb').owlCarousel({
    loop: true,
    margin: 10,
    nav: false,
    responsive: {
        0: {
            items: 4
        },
    }
})
</script>

</html>