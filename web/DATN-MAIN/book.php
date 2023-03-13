<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .wrapper{
            width: 1000px;
            margin: 0 auto;
        }
        table tr td:last-child{
            width: 120px;
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
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="mt-5 mb-3 clearfix">
                        <h2 class="pull-left">Chi tiết sách</h2>
                        <a href="create.php" class="btn btn-success pull-right"><i class="fa fa-plus"></i> Thêm</a>
                    </div>
                    <?php
                    // Include config file
                    require_once "config.php";
                    
                    // Attempt select query execution
                    $sql = "SELECT * FROM Sach s join NhaXuatBan nxb on s.MaNXB = nxb.MaNXB";
                    if($result = $mysqli->query($sql)){
                        if($result->num_rows > 0){
                            echo '<table class="table table-bordered table-striped">';
                                echo "<thead>";
                                    echo "<tr>";
                                        echo "<th>Hình ảnh</th>";
                                        echo "<th>Tên sách</th>";
                                        echo "<th>Nhà xuất bản</th>";
                                        echo "<th>Nổi bật</th>";
                                        echo "<th>Đơn giá</th>";
                                        echo "<th>Trạng thái</th>";
                                        echo "<th>Chức năng</th>";
                                    echo "</tr>";
                                echo "</thead>";
                                echo "<tbody>";
                                while($row = $result->fetch_array()){
                                    echo "<tr>";
                                        echo "<td>" . $row['HinhAnh'] . "</td>";
                                        echo "<td>" . $row['TenSach'] . "</td>";
                                        echo "<td>" . $row['TenNXB'] . "</td>";
                                        echo "<td>" . $row['NoiBat'] . "</td>";
                                        echo "<td>" . $row['DonGia'] . "</td>";
                                        echo "<td>" . $row['TrangThai'] . "</td>";
                                        echo "<td>";
                                            echo '<a href="read.php" class="mr-3" title="View Record" data-toggle="tooltip"><span class="fa fa-eye"></span></a>';
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
                            echo '<div class="alert alert-danger"><em>Không có dữ liệu sách.</em></div>';
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
</body>
</html>