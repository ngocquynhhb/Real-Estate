<%-- 
    Document   : theloai
    Created on : Mar 14, 2022, 1:00:28 AM
    Author     : kjuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Thể Loại</title>
        <link rel="shortcut icon" type="image/jpg" href="img/favicon/favicon-32x32.png" />
        <link href="css/tintuc.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>  
            <div class="container-fluid page-wrapper pt-100">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="section">
                                <div class="section-title">
                                    <span>${requestScope.cate.nameCa}</span>
                            </div>
                            <div class="section-body">
                                <c:forEach items="${listN}" begin="1" end="5" var="o">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <a href="detail?id=${o.idNews}">
                                                <img class="thumb" src="${o.thumbnail}">
                                            </a>
                                        </div>
                                        <div class="col-md-8">
                                            <h4 class="bold">
                                                <a href="detail?id=${o.idNews}">
                                                    ${o.title}
                                                </a>
                                            </h4>
                                            <p class="summary">${o.shortDes}</p>
                                        </div>
                                    </div>                          
                                    <hr>   
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="section related-section">
                            <div class="section-title">
                                <span>Related</span>
                            </div>
                            <div class="section-body">
                                <div class="row">
                                    <div class="col-md-5">
                                        <a href="single.html">
                                            <img src="images/10.jpeg" class="thumb">
                                        </a>
                                    </div>
                                    <div class="col-md-7">
                                        <a href="single.html" class="related-title">Lorem ipsum dolor sit amet consectetur adipiscing</a>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-5">
                                        <a href="single.html">
                                            <img src="images/11.jpeg" class="thumb">
                                        </a>
                                    </div>
                                    <div class="col-md-7">
                                        <a href="single.html" class="related-title">Lorem ipsum dolor sit amet consectetur adipiscing</a>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-5">
                                        <a href="single.html">
                                            <img src="images/1.jpeg" class="thumb">
                                        </a>
                                    </div>
                                    <div class="col-md-7">
                                        <a href="single.html" class="related-title">Lorem ipsum dolor sit amet consectetur adipiscing</a>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-5">
                                        <a href="single.html">
                                            <img src="images/4.jpeg" class="thumb">
                                        </a>
                                    </div>
                                    <div class="col-md-7">
                                        <a href="single.html" class="related-title">Lorem ipsum dolor sit amet consectetur adipiscing</a>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-md-5">
                                        <a href="single.html">
                                            <img src="images/7.jpeg" class="thumb">
                                        </a>
                                    </div>
                                    <div class="col-md-7">
                                        <a href="single.html" class="related-title">Lorem ipsum dolor sit amet consectetur adipiscing</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section list-section">
                            <h2 class="section-title">
                                <span>Latest</span>
                            </h2>
                            <div class="section-body latest-list">
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
        </div>
    </body>
</html>
