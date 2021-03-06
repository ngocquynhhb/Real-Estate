<%-- 
    Document   : dangki
    Created on : Mar 7, 2022, 3:28:15 PM
    Author     : kjuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Kí</title>
    <link rel="shortcut icon" type="image/jpg" href="img/favicon/favicon-32x32.png" />
    <link href="css/dangki.css" rel="stylesheet" type="text/css"/>
</head>

<body>
    <div class="content-wrapper">
        <div class="content">
            <div class="dangki-wrapper shadow-box">
                <div class="company-details ">
                   
                    <div class="shadow"></div>
                    <div class="wrapper-1">
                        <h1 class="title">Đăng kí</h1>
                        <div class="slogan">Q Holdings</div>
                    </div>

                </div>
                <div class="dangki-form ">
                    <div class="wrapper-2">
                        <div class="form-title">Đăng Kí Ngay!</div>
                        <div class="form">
                            <form action="signup" method="post">
                                <p class="content-item">
                                    <label>Tài Khoản
                                        <input type="text" placeholder="abc" name="user" required>
                                    </label>
                                </p>

                                <p class="content-item">
                                    <label>Mật Khẩu
                                        <input type="password" placeholder="*****" name="pass" required>
                                    </label>
                                </p>

                                <p class="content-item">

                                    <label>Xác Minh Mật Khẩu
                                        <input type="password" placeholder="*****" name="repass" required>
                                    </label>
                                </p>


                                <button type="submit" class="dangki">Đăng Kí Ngay </button>
                                <a href="login" class="dangnhap">Đăng Nhập</a>
                            </form>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>

</body>

</html>
