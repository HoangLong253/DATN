<!-- Sản phẩm nổi bật -->
<div class="wrap-spnb">
                <div class="wrap-content">
                    <div class="main-title-text">SẢN PHẨM NỔI BẬT</div>
                    <div class="wrap-slide-spnb">
                        <div class="owl-spnb owl-carousel owlCarousel">
                            <?php
                                require_once "config.php";
                                $sql1 = "SELECT *, DonGia - (DonGia * PhanTramGiam) as 'GiaGiam' FROM Sach WHERE MaLoaiSach = 'GK' AND NoiBat = 1";
                                if($result1 = $mysqli->query($sql1)){
                                    if($result1->field_count > 0){
                                        while($row = $result1->fetch_array()){
                                        ?>
                            <div class="product">
                                <a href="#" class="box-product">
                                    <?php
                                                        if($row['PhanTramGiam'] != 0) {
                                                            ?>
                                    <div class="product-sale-oustanding">
                                        <span class="sale-lb">-<?php echo $row['PhanTramGiam'] * 100?>%</span>
                                    </div>
                                    <?php 
                                                         }
                                                    ?>
                                    <div class="images-product scale-img img_hover">
                                        <img alt="ảnh lỗi" src='./assets/images/sach/GK/<?php echo $row['HinhAnh'] ?>'
                                            width="150" height="200"></img>
                                    </div>
                                    <div class="infor-product">
                                        <?php
                                                        if($row['PhanTramGiam'] != 0) {
                                                        ?>
                                        <div class="infor-product">
                                            <?php
                                                                echo '<div class="name-product">' . $row['TenSach'] . '</div>';
                                                                echo '<div class="price-product">' . $row['GiaGiam'] . ' đ</div>';
                                                                echo '<div class="price-product"> <del> ' . $row['DonGia'] . ' đ </del></div>';
                                                                echo '<div class="price-product-flex"> </div>';
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
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sản phẩm -->
            <!-- <div class="wrap-product padding50">
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
 -->