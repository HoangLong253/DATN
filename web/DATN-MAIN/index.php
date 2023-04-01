<!DOCTYPE html>
<html lang="vn">
<!-- Head -->
<head>
    <?php include './templates/layout/head.php'?>
    <?php include './templates/layout/css.php'?>
</head>
<!-- Body -->
<body>
    <div class="containerr">
        <div class="main">
            <!-- Header -->
            <?php include './templates/layout/header.php'?>
            <!-- Menu  -->
            <?php include './templates/layout/menu.php'?>
            <!-- Slideshow -->
            <?php include './templates/layout/slideshow.php'?>
            <!-- Đối tác -->
            <?php include './templates/layout/partner.php'?>
            <!-- Main -->
            <?php include './templates/layout/main.php'?>
            <!-- Footer -->
            <?php include './templates/layout/footer.php'?>
    </div>
</body>
<?php include './templates/layout/js.php'?>
</html>

<!--<div class="product-list">
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
                                    <img alt="ảnh lỗi" src='../assets/images/sach/TK/unknown-file-.jpg' width="150"
                                        height="200"></img>
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
                                                                echo '<span class="price-product">' . $row['GiaGiam'] . ' đ</span>';
                                                                echo '<span class="price-product"> <del> ' . $row['DonGia'] . ' đ </del></span>';
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
                    </div>-->