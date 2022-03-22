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
                                                <h6> Bình luận </h6>
                                            </div> 
                                            <c:if test="${sessionScope.acc != null}">
                                                <form action="comment" method="get">
                                                    <div class="comment">
                                                        <div>
                                                            <div  class="form-item">
                                                                <h6>${sessionScope.acc.user} </h6>
                                                                <input type="text" name="content" value="" />
                                                                <input type="hidden" name="id" value="${requestScope.news.idNews}" />
                                                            </div>
                                                            <div class="submit-btn form-item">
                                                                <button type="submit" value="submit"> Bình luận</button>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </form>
                                                <hr>               
                                            </c:if>
                                            <c:if test="${sessionScope.acc == null}">
                                                <p>Hãy đăng nhập để bình luận
                                                    <button><a href="login"> Đăng Nhập </a> </button>
                                                </p>
                                                <hr> 
                                            </c:if>

                                            <div class="comments-list">
                                                <c:forEach items="${listCM}" var="o">
                                                    <div class="media">
                                                        <div class="media-body">
                                                            <p class="media-heading user_name">${o.createdBy}</p>
                                                            ${o.contentCm}
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