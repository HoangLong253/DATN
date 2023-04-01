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
                        <div class="product-sale-oustanding ">
                            <span class="sale-lb img_hover">-<?php echo $row['PhanTramGiam'] * 100?>%</span>
                        </div>
                        <?php 
                                                         }
                                                    ?>
                        <div class="images-product scale-img img_hover">
                            <img alt="ảnh lỗi" src='./assets/images/sach/GK/<?php echo $row['HinhAnh'] ?>' width="150"
                                height="200"></img>
                        </div>
                        <div class="infor-products">
                            <?php
                                                        if($row['PhanTramGiam'] != 0) {
                                                        ?>
                            <div class="infor-product">
                                <?php
                                                                echo '<div class="name-product">' . $row['TenSach'] . '</div>';
                                                                echo '<div class="price-product "><div class="price-after ">' . $row['GiaGiam'] . 'đ</div></div>';
                                                                echo '<div class="price-before"><del>' . $row['DonGia'] . 'đ</del></div>'
                                                                 
                                                                ?>
                            </div>
                            <?php
                                                    } else {
                                                        ?>
                            <div class="infor-product">
                                <?php
                                                                echo '<div class="name-product">' . $row['TenSach'] . '</div>';
                                                                echo '<div class="price-product price-after">' . $row['DonGia'] . ' đ</div>';
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
<div class="wrap-content">
<div>STYLE SẢN PHẨM CỦA CHÚNG TA TUI NGHĨ NÊN LÀM THẾ NÀY</div>
<div>LONG LO VỤ TRUY VẤN RA CÁC TÊN DANH MỤC CẤP 1 KÈM SẢN PHẨM CỦA NÓ HA</div>
 <img src="./assets/images/Capture.PNG" alt="">
 <DIV>CÒN PHÂN TRANG HAY NÚT "XEM TẤT CẢ" KHI >8 SẢN PHẨM MÌNH BÀN SAU</DIV>
</div>
<!-- Video News -->
<div class="wrap-video-news">
 <div class="wrap-content">
 <div class="main-title-text">TIN TỨC & VIDEO</div>
    <div class="wrap-vidnews-items">
    <div class="wrap-video">
        <div class="fotorama" data-nav="thumbs" data-autoplay="true" data-width="100%"
        data-height="100%" data-thumbwidth="145" data-thumbheight="90" >
            <a href="https://youtu.be/Q2T2JuQgob4"></a>
            <a href="https://youtu.be/WdCMqN2ukaA"></a>
            <a href="https://youtu.be/kWCEaNgTCdY"></a>
            <a href="https://youtu.be/CyKmrNhXM3o"></a>
            <!--<a href="https://www.youtube.com/watch?v=QkZBz2xfXtk"></a>
            <a href="https://www.youtube.com/watch?v=vNV3Jvcij90"></a>-->
        </div>
    </div>
    <!--<div class="wrap-news">
        <div class="news-slick">
            <div class="news-box">
                <div class="news-img"><img src="https://thumbs.dreamstime.com/b/beautiful-sunset-over-water-tree-silhouette-nature-landscape-amazing-orange-yellow-sky-night-scene-wallpaper-birds-flying-154424473.jpg" alt=""></div>
                <div class="news-text">
                    <div class="news-name">Lorem ipsum dolor sit amet.</div>
                    <div class="news-desc">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius repellat aliquam quidem, voluptatem sed nostrum recusandae.</div>
                     <div class="news-content"></div> 
                </div>
            </div>
            <div class="news-box">
                <div class="news-img"><img src="https://thumbs.dreamstime.com/b/beautiful-sunset-over-water-tree-silhouette-nature-landscape-amazing-orange-yellow-sky-night-scene-wallpaper-birds-flying-154424473.jpg" alt=""></div>
                <div class="news-text">
                    <div class="news-name">Lorem ipsum dolor sit amet.</div>
                    <div class="news-desc">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius repellat aliquam quidem, voluptatem sed nostrum recusandae.</div>
                    
                </div>
            </div>
            <div class="news-box">
                <div class="news-img"><img src="https://thumbs.dreamstime.com/b/beautiful-sunset-over-water-tree-silhouette-nature-landscape-amazing-orange-yellow-sky-night-scene-wallpaper-birds-flying-154424473.jpg" alt=""></div>
                <div class="news-text">
                    <div class="news-name">Lorem ipsum dolor sit amet.</div>
                    <div class="news-desc">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius repellat aliquam quidem, voluptatem sed nostrum recusandae.</div>
                    
                </div>
            </div>
            <div class="news-box">
                <div class="news-img"><img src="https://thumbs.dreamstime.com/b/beautiful-sunset-over-water-tree-silhouette-nature-landscape-amazing-orange-yellow-sky-night-scene-wallpaper-birds-flying-154424473.jpg" alt=""></div>
                <div class="news-text">
                    <div class="news-name">Lorem ipsum dolor sit amet.</div>
                    <div class="news-desc">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius repellat aliquam quidem, voluptatem sed nostrum recusandae.</div>
                    
                </div>
            </div>
            <div class="news-box">
                <div class="news-img"><img src="https://thumbs.dreamstime.com/b/beautiful-sunset-over-water-tree-silhouette-nature-landscape-amazing-orange-yellow-sky-night-scene-wallpaper-birds-flying-154424473.jpg" alt=""></div>
                <div class="news-text">
                    <div class="news-name">Lorem ipsum dolor sit amet.</div>
                    <div class="news-desc">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius repellat aliquam quidem, voluptatem sed nostrum recusandae.</div>
                    
                </div>
            </div>
            <div class="news-box">
                <div class="news-img"><img src="https://thumbs.dreamstime.com/b/beautiful-sunset-over-water-tree-silhouette-nature-landscape-amazing-orange-yellow-sky-night-scene-wallpaper-birds-flying-154424473.jpg" alt=""></div>
                <div class="news-text">
                    <div class="news-name">Lorem ipsum dolor sit amet.</div>
                    <div class="news-desc">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius repellat aliquam quidem, voluptatem sed nostrum recusandae.</div>
                    
                </div>
            </div>
        </div>
    </div>-->
    </div>
 </div>
</div>
<!-- <div class="news-content"></div> -->