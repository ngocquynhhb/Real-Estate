<%-- 
    Document   : tintuc
    Created on : Mar 9, 2022, 11:28:59 PM
    Author     : kjuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tin Tức</title>
        <link rel="shortcut icon" type="image/jpg" href="img/favicon/favicon-32x32.png" />
        <link href="css/tintuc.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <!-- header -->
    <header>
        <jsp:include page="header.jsp"></jsp:include>   
        </header>

        <body>     
            <!-- main-->
            <div class="container-fluid page-wrapper pt-100">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="section main-section">
                                <h2 class="section-title">
                                    <span><a style="color: white" href="category?cid=${listC.get(0).id}">Tin Tức Nổi Bật</a></span>
                            </h2>
                            <div class="section-body">
                                <div class="row">
                                    <div class="col-md-7 mb-4">
                                        <a href="detail?id=${listN.get(0).idNews}">
                                            <img class="thumb" src="${listN.get(0).thumbnail}"/>
                                        </a>
                                        <div class="main-title">
                                            <a href="detail?id=${listN.get(0).idNews}">
                                                ${listN.get(0).title}
                                            </a>
                                        </div>
                                    </div>
                                    <c:forEach items="${listN}" begin="1" end="3" var="o" >                           
                                        <div class="col-md-5">
                                            <div class="row">
                                                <div class="col-md-5 mb-4">
                                                    <a href="detail?id=${o.idNews}">
                                                        <img class="thumb" src="${o.thumbnail}">
                                                    </a>
                                                </div>
                                                <div class="col-md-7 mb-4">
                                                    <div class="list-title">
                                                        <a href="detail?id=${o.idNews}">
                                                            ${o.title}
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr>
                                        </div>   
                                    </c:forEach>   
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="section list-section">
                            <h2 class="section-title">
                                <span><a style="color: white" href="category?cid=${listC.get(1).id}">Tin Tức Mới Nhất</a></span>
                            </h2>
                            <div class="section-body latest-list">
                                <c:forEach items="${listN}" var="o">
                                    <div class="list-title">
                                        <a href="${o.idNews}">
                                            ${o.title}
                                        </a>
                                    </div>   
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>

                <br>

                <div class="row" style="margin-bottom:30px;">
                    <div class="col-md-4">
                        <div class="section cat-section">
                            <div class="section-title">
                                <span><a style="color: white" href="category?id=${listC.get(2).id}">Tin Tức - Hoà Lạc</a></span>
                            </div>
                            <div class="section-body">
                                <a href="single.html">
                                    <img class="thumb" style="border-radius:0;" src="img/trangchu/trangchu1.jpg">
                                </a>
                                <div class="list-title">
                                    <strong>
                                        <a href="single.html">
                                            Lorem ipsum dolor sit amet consectetur adipiscing
                                        </a>
                                    </strong>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="section cat-section">
                            <div class="section-title">
                                <span><a style="color: white" href="category?id=${listC.get(3).id}">Tin Tức Kiến Trúc - Xây Dựng</a></span>
                            </div>
                            <div class="section-body">
                                <a href="single.html">
                                    <img class="thumb" style="border-radius:0;" src="images/7.jpeg">
                                </a>
                                <div class="list-title">
                                    <strong>
                                        <a href="single.html">
                                            Lorem ipsum dolor sit amet consectetur adipiscing
                                        </a>
                                    </strong>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="section cat-section">
                            <div class="section-title">
                                <span><a style="color: white" href="category?id=${listC.get(4).id}">Tin Tức Bất Động Sản</a></span>
                            </div>
                            <div class="section-body">
                                <a href="single.html">
                                    <img class="thumb" style="border-radius:0;" src="images/8.jpeg">
                                </a>
                                <div class="list-title">
                                    <strong>
                                        <a href="single.html">
                                            Lorem ipsum dolor sit amet consectetur adipiscing
                                        </a>
                                    </strong>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                                <div class="list-title">
                                    <a href="single.html">
                                        Lorem ipsum dolor sit amet consectetur adipiscing
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- footer -->
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>


</html>
