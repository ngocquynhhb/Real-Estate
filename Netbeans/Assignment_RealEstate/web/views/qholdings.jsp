<%-- 
    Document   : qholdings
    Created on : Mar 7, 2022, 3:29:56 PM
    Author     : kjuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Q Holdings</title>
    <link href="../css/qholdings.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" type="image/jpg" href="img/favicon/favicon-32x32.png" />
</head>
    
    
<body>
    <!-- header -->
    <jsp:include page="header.jsp"></jsp:include>

    <!-- Main -->
    <main>
        <!-- Trang Chủ -->
        <section class="trangchu d-flex" id="trangchu">
            <img class="trangchu-image" src="img/trangchu/trangchu1.jpg" alt="trangchu">
            <div class="container">
                <div class="trangchu-wrapper">
                    <div class="col">
                        <h1>Q Holdings</h1>
                        <hr>
                        <h2>Kiến Tạo Giá Trị Sống</h2>
                        <h4>Là đơn vị dẫn đầu trong lĩnh vực kinh doanh bất động sản tại Khu công nghệ cao Hòa Lạc,
                            Q Holdings tập trung cung cấp dịch vụ Tư vấn Thiết kế và Thi công, Tư vấn đầu tư và Phát
                            triển dự án.
                            Q Holdings cam kết cung cấp cho khách hàng những giải pháp và dịch vụ toàn diện,
                            không ngừng gia tăng giá trị, lợi ích tối đa cho mọi khách hàng. </h4>
                        <a href="#lienhe" class="btn">Liên Hệ Ngay</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- brand -->
        <section class="brand pt-100">
            <div class="container">
                <div class="brand-wrapper d-flex">
                    <img src="img/Brand-logos/logofpt.png" alt=" brand logo">
                    <img src="img/Brand-logos/logocen.png" alt=" brand logo">
                    <img src="img/Brand-logos/logonext.png" alt=" brand logo">
                    <img src="img/Brand-logos/logovin.png" alt=" brand logo">
                    <img src="img/Brand-logos/logovt.png" alt=" brand logo">
                </div>

            </div>
        </section>
        <!-- Dự Án -->
        <section class="duan ptb-100" id="duan">
            <div class="container">
                <!-- section title -->
                <div class="title-section">
                    <h2>Dự Án</h2>
                </div>
                <div class="duan-wrapper d-flex">
                    <!-- Dự Án 1 -->
                    <div class="duan-item">
                        <img src="img/duan/aduan1.png" alt="duan image" class="img-fluid">
                        <div class="duan-content ">
                            <h3 class="d-flex">MC HOUSE <span>$ &nbsp; 99.999</span></h3>
                        </div>
                    </div>
                    <!-- Dự Án 2  -->
                    <div class="duan-item">
                        <img src="img/duan/aduan2.png" alt="duan image" class="img-fluid">
                        <div class="duan-content ">
                            <h3 class="d-flex">MC MANSION <span>$ &nbsp; 99.999</span></h3>
                        </div>
                    </div>
                    <!-- Dự Án 3  -->
                    <div class="duan-item">
                        <img src="img/duan/aduan3.png" alt="duan image" class="img-fluid">
                        <div class="duan-content ">
                            <h3 class="d-flex">MC VILLAS <span>$ &nbsp; 99.999</span></h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--Về Chúng Tôi-->
        <section class="vechungtoi " id="vechungtoi">
            <div class="container">
                <div class="vechungtoi-wrapper d-flex">
                    <div class="vechungtoi-img">
                        <img src="img/vechungtoi/vechungtoi2.png" alt="vechungtoi image" class="img-fluid">
                    </div>
                    <div class="vechungtoi-content">
                        <h2>Về Chúng Tôi</h2>
                        <p>Minh Chí Holdings là thành quả của sự ấp ủ sau nhiều năm tham gia vào thị trường bất động sản
                            của CEO Q.
                            Là một thương hiệu trẻ trên thị trường Bất động sản.</p>
                        <p>Q ý thức được rằng chất lượng sản phẩm,
                            dịch vụ chính là chìa khoá vạn năng mở cánh cửa thành công và
                            xây dựng một niềm tin vững chắc từ khách hàng. </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Tin Tức -->
        <section class="tintuc ptb-100" id="tintuc">
            <div class="container">
                <!-- section title -->
                <div class="title-section">
                    <h2>Tin Tức</h2>
                </div>
                <div class="slide-active">
                    <div class="card">
                        <div class="card-img">
                            <img src="img/tintuc/tintuc2.png" alt="tintuc">
                        </div>
                        <div class="card-content">
                            <h4>Tin Tức - Hoà Lạc</h4>
                            <hr>
                            <h1>Tổng quan đô thị Vệ...</h1>
                            <p>Hòa Lạc là đô thị vệ tinh lớn nhất trong số 5 đô thị vệ tinh của Hà Nội,
                                có vai trò đặc biệt trong chiến lược phát triển của Thủ đô.
                                Khu CNC Hoà Lạc là trung tâm nghiên cứu phát triển và
                                ứng dụng công nghệ cao cấp Quốc gia.
                            </p>
                            <a href="news" class="btn">Đọc Thêm</a>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </main>
    <!-- Liên Hệ  -->
    <section class="lienhe ptb-100" id="lienhe">
        <div class="container">
            <h5>Liên Hệ</h5>
            <form id="basic-form" action="" method="post">
                <div class="lienhe-inner d-flex">
                    <div class="input-block form-item">
                        <label >Họ</label>
                        <input type="text" name="ho" required>
                    </div>
                    <div class="input-block form-item">
                        <label >Tên</label>
                        <input type="text" name="ten" required>
                    </div>
                    <div class="input-block form-item">
                        <label >Email</label>
                        <input type="email" name="email" required>
                    </div>
                    <div class="input-block form-item">
                        <label >Số Điện Thoại</label>
                        <input type="text" name="sdt" required>

                    </div>

                    <div class="textarea form-item">
                        <label>Nội Dung</label>
                        <textarea name="noidung" required></textarea>
                    </div>
                    <div class="submit-btn form-item">
                        <button type="submit" value="submit" class="btn btn-blue"> Gửi Thông Tin</button>
                    </div>
              </div>       
            </form>
        </div>
    </section>
    <!-- footer -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Scroll up -->
    <a href="javascript:void(0)" class="scrollup show">
        <img src="img/arrow-up.svg" alt="arrow up">
    </a>
</body>
 <!-- JS up -->
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="https://unpkg.com/scrollreveal"></script>
<script src="https://cdn.jsdelivr.net/gh/cferdinandi/gumshoe/dist/gumshoe.polyfills.min.js"></script>
<script src="js/main.js" type="text/javascript"></script>
</html>
