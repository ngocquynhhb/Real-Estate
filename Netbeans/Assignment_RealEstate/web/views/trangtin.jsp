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
                                                <h6><small class="pull-right">45 bình luận</small> Bình luận </h6>
                                            </div> 
                                            <div class="comment">
                                                <div class="form-item">
                                                    <h6> Admin </h6>
                                                    <input  name="noidung">
                                                    
                                                </div>
                                                <div class="submit-btn form-item">
                                                    <button type="submit" value="submit"> Gửi Thông Tin</button>
                                                </div>
                                            </div>   
                                            <hr>
                                            <div class="comments-list">

                                                <c:forEach begin="1" end="3">
                                                    <div class="media">
                                                        <p class="pull-right"><small>5 ngày trước</small></p>
                                                        <div class="media-body">
                                                            <p class="media-heading user_name">Admin</p>
                                                            Uầy!!! Bài viết thật bổ ích.
                                                            <p><small><a href="">Thích</a> - <a href="">Chia sẻ</a></small></p>
                                                        </div>
                                                    </div> 
                                                </c:forEach>
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
                            <c:forEach items="${listN}" begin="7" end="11" var="o">
                                <div class="row">
                                    <div class="col-md-5">
                                        <a href="detail?id=${o.idNews}">
                                            <img class="thumb" src="${o.thumbnail}">
                                        </a>
                                    </div>
                                    <div class="col-md-7">
                                        <a href="detail?id=${o.idNews}">
                                            ${o.title}
                                        </a>
                                    </div>
                                </div> 
                                <hr>
                            </c:forEach>                            
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="section list-section">
                        <h2 class="section-title">
                            <span>Thể Loại</span>
                        </h2>
                        <c:forEach items="${listC}" var="o" >
                            <ul class="section-body latest-list">
                                <li class="list-title"><a href="category?cid=${o.id}"> ${o.nameCa}</a></li>                             
                            </ul>
                        </c:forEach>
                    </div> 
                </div>                
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>