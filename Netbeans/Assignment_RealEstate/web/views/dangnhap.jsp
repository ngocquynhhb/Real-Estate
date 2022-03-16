<%-- 
    Document   : dangnhap
    Created on : Mar 7, 2022, 3:27:10 PM
    Author     : kjuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng Nhập</title>
        <link rel="shortcut icon" type="image/jpg" href="img/favicon/favicon-32x32.png" />
        <link href="css/dangnhap.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div class="content-wrapper">
            <div class="content">
                <div class="dangnhap-wrapper shadow-box">
                    <div class="company-details ">

                        <div class="shadow"></div>
                        <div class="wrapper-1">
                            <div class="logo">
                                <div class="icon-logo">

                                </div>
                            </div>
                            <h1 class="title">Đăng Nhập</h1>
                            <div class="slogan">Q Holdings</div>
                        </div>

                    </div>
                    <div class="dangnhap-form ">
                        <div class="wrapper-2">
                            <div class="form-title">Đăng Nhập!</div>
                            <div class="form">
                                <form action="login" method="post">
                                    <br>
                                    <p class="text-danger" style="color: red" >${mess}</p>
                                    <p class="content-item">
                                        <label>Tài Khoản
                                            <input type="text" value="${username}" name="user" required>
                                        </label>
                                    </p>
                                    <p class="content-item">
                                        <label>Mật Khẩu
                                            <input type="password" value="${password}" name="pass" required>
                                        </label>
                                    </p>
                                    <br>
                                    <div class="form-group form-check">
                                        <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Nhớ tài khoản, mật khẩu</label>
                                    </div>
                                    <button type="submit" class="dangnhap">Đăng Nhập </button>
                                    <a href="signup" class="dangki">Đăng Kí Ngay</a>
                                </form>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>

    </body>

</html>
