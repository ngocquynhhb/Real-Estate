<%-- 
    Document   : header
    Created on : Mar 13, 2022, 1:20:31 PM
    Author     : kjuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Q Holdings</title>
    <link href="css/qholdings.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" type="image/jpg" href="img/favicon/favicon-32x32.png" />
</head>


<!-- header -->
<header>
    <div class="container">
        <nav class="nav d-flex">
            <a href="home" class="logo">                                   
                <img src="img/Brand-logos/logo4.png" alt="logo">
            </a>

            <!-- Toggle bar -->
            <div class="burger">
                <div class="toggle-open">
                    <img src="img/toggle-open.svg" alt="toggle open">
                </div>
                <div class="toggle-close">
                    <img src="img/toggle-close.svg" alt="toggle close">
                </div>
            </div>
            <div class="navigation-bar">
                <ul>
                    <li class="active"><a href="#trangchu">Trang Chủ</a></li>
                    <!--<li><a href="#duan">Dự Án</a></li>-->
                    <li><a href="#vechungtoi">Về Chúng Tôi </a></li>                      
                    <li><a href="news">Tin Tức</a></li>
                    <!--<li><a href="#lienhe">Liên Hệ</a></li>-->
                    <li><a href="signup">Đăng Kí</a></li> 
                    <c:if test="${sessionScope.acc == null}">
                        <li><a href="login" class="btn ">Đăng Nhập</a></li>
                    </c:if>
                    <c:if test="${sessionScope.acc.isAdmin == 1}">
                        <li><a href="manager">Quản Trị</a></li>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <li><a>${sessionScope.acc.user}</a></li>
                        <li><a href="logout" class="btn ">Đăng Xuất</a></li>
                    </c:if>  
                </ul>
            </div>
        </nav>
    </div>
</header>

<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="https://unpkg.com/scrollreveal"></script>
<script src="https://cdn.jsdelivr.net/gh/cferdinandi/gumshoe/dist/gumshoe.polyfills.min.js"></script>
<script src="js/main.js" type="text/javascript"></script>