<%-- 
    Document   : trangtin
    Created on : Mar 10, 2022, 9:28:27 PM
    Author     : kjuel
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

    <head>
        <meta charset="UTF-8">
        <title>${news.title}</title>
        <link rel="shortcut icon" type="image/jpg" href="img/favicon/favicon-32x32.png" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <link href="css/tintuc.css" rel="stylesheet" type="text/css"/>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
        <body>    
            <div class="container page-wrapper pt-100">
                <div class="row">
                    <div class="col-md-9">
                        <div class="section">
                            <div class="section-title">
                                <span>Tin Tức</span>
                            </div>
                            <div class="section-body">
                                <h1 class="post-title">${news.title}</h1>
                            <div class="post-content">
                                <h6>${news.shortDes}</h6>
                            </div>
                            <figure>
                                <img src="${news.thumbnail}" class="thumb">
                            </figure>
                            <div class="post-content">
                                <p>${news.content}</p>                                                            
                            </div>
                            <div class="post-comment">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="page-header">
                                                <h2><small class="pull-right">45 bình luận</small> Bình luận </h2>
                                            </div> 
                                            <div class="comment">
                                                <div class="textarea form-item">
                                                    <img src="#"> <h3> Ngọc Quỳnh </h3>
                                                    <textarea name="noidung" required></textarea>
                                                </div>
                                                <div class="submit-btn form-item">
                                                    <button type="submit" value="submit" class="btn btn-blue"> Gửi Thông Tin</button>
                                                </div>
                                            </div>   
                                            <hr>
                                            <div class="comments-list">
                                                <div class="media">
                                                    <p class="pull-right"><small>5 ngày trước</small></p>
                                                    <a class="media-left" href="#">
                                                        <img src="#">
                                                    </a>
                                                    <div class="media-body">

                                                        <h4 class="media-heading user_name">Ngọc Quỳnh</h4>
                                                        Uầy!!! Bài viết thật bổ ích.

                                                        <p><small><a href="">Thích</a> - <a href="">Chia sẻ</a></small></p>
                                                    </div>
                                                </div>
                                                <div class="media">
                                                    <p class="pull-right"><small>5 ngày trước</small></p>
                                                    <a class="media-left" href="#">
                                                        <img src="#">
                                                    </a>
                                                    <div class="media-body">

                                                        <h4 class="media-heading user_name">Ngọc Quỳnh</h4>
                                                        Uầy!!! Bài viết thật bổ ích.

                                                        <p><small><a href="">Thích</a> - <a href="">Chia sẻ</a></small></p>
                                                    </div>
                                                </div>
                                                <div class="media">
                                                    <p class="pull-right"><small>5 ngày trước</small></p>
                                                    <a class="media-left" href="#">
                                                        <img src="#">
                                                    </a>
                                                    <div class="media-body">

                                                        <h4 class="media-heading user_name">Ngọc Quỳnh</h4>
                                                        Uầy!!! Bài viết thật bổ ích.

                                                        <p><small><a href="">Thích</a> - <a href="">Chia sẻ</a></small></p>
                                                    </div>
                                                </div>
                                                <div class="media">
                                                    <p class="pull-right"><small>5 ngày trước</small></p>
                                                    <a class="media-left" href="#">
                                                        <img src="#">
                                                    </a>
                                                    <div class="media-body">

                                                        <h4 class="media-heading user_name">Ngọc Quỳnh</h4>
                                                        Uầy!!! Bài viết thật bổ ích.

                                                        <p><small><a href="">Thích</a> - <a href="">Chia sẻ</a></small></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="section related-section">
                        <div class="section-title">
                            <span>Tin Nóng</span>
                        </div>
                        <div class="section-body">
                            <c:forEach items="${listN}" var="o">
                                <div class="row">
                                    <div class="col-md-5">
                                        <img src="${o.thumbnail}" class="thumb">
                                    </div>
                                    <div class="col-md-7">
                                        <span class="related-title">${o.title}</span>
                                    </div>
                                </div>                               
                            </c:forEach>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="section list-section">
                        <h2 class="section-title">
                            <span>Thể Loại</span>
                        </h2>
                        <c:forEach items="${listC}" var="o">
                            <ul class="section-body latest-list">
                                <li class="list-title"><a href="#"> ${o.nameCa}</a></li>                             
                            </ul>
                        </c:forEach>
                    </div> 
                </div>                
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>