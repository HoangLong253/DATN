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
            <?php include './templates/layout/header.php'?>

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
            
            <?php include './templates/layout/slideshow.php'?>

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
                                                    <div class="images-product scale-img">
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
                            <--<div class="product">
                                <a href="#" class="box-product">
                                    <div class="image-product">
                                        <img src="https://dictionary.cambridge.org/vi/images/thumb/book_noun_001_01679.jpg?version=5.0.305" alt="loi">
                                    </div>
                                    <div class="infor-product">
                                        <div class="name-product">Iphone 14 pro max 256gb</div>
                                        <div class="price-product"> 29.000.000 vnd</div>
                                    </div>
                                </a>
                            </div>
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

                        $sql2 = "SELECT *, DonGia - (DonGia * PhanTramGiam) as 'GiaGiam' FROM Sach order by sach.MaSach";

                        if($result = $mysqli->query($sql2)){
                            if($result->field_count > 0){
                                while($row = $result->fetch_array()){
                                    ?>
                                        <div class="product">
                                            <a href="#" class="box-product">
                                                <?php
                                                if($row['PhanTramGiam'] != 0) {
                                                   ?>
                                                    <div class="product-sale">
                                                        <span class="sale-lb">-<?php echo $row['PhanTramGiam'] * 100?>%</span>
                                                    </div>
                                                   <?php 
                                                } else {
                                                    echo "";
                                                }
                                                    switch ($row['MaLoaiSach']){
                                                        case 'GK' : {
                                                        ?>
                                                        <div class="image-product scale-img">
                                                            <img alt="ảnh lỗi" src='./assets/images/sach/GK/<?php echo $row['HinhAnh'] ?>'
                                                             width="200" height="300"></img>
                                                        </div>
                                                        <?php
                                                        break;
                                                        }
                                                        case 'TK' : {
                                                        ?>
                                                        <div class="image-product scale-img">
                                                            <img alt="ảnh lỗi" src='./assets/images/sach/TK/<?php echo $row['HinhAnh'] ?>'
                                                             width="200" height="300"></img>
                                                        </div>
                                                        <?php
                                                        break;
                                                        }
                                                        default: {
                                                        ?>
                                                        <td>
                                                            <img alt="ảnh lỗi" src='../assets/images/sach/TK/unknown-file-.jpg' width="150" height="200"></img>
                                                        </td>
                                                        <?php
                                                        break;
                                                        }
                                                    }
                                                ?>
                                                <?php
                                                    if($row['PhanTramGiam'] != 0) {
                                                        ?>
                                                            <div class="infor-product">
                                                                <?php
                                                                echo '<div class="name-product">' . $row['TenSach'] . '</div>';
                                                                echo '<div class="price-product">' . $row['GiaGiam'] . ' đ</div>';
                                                                echo '<div class="price-product"> <del> ' . $row['DonGia'] . ' đ </del></div>';
                                                                ?>
                                                            </div>
                                                        <?php
                                                    } else {
                                                        ?>
                                                            <div class="infor-product">
                                                                <?php
                                                                echo '<div class="name-product">' . $row['TenSach'] . '</div>';
                                                                echo '<div class="price-product">' . $row['DonGia'] . ' đ</div>';
                                                                ?>
                                                            </div>
                                                        <?php
                                                    }
                                                ?>
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