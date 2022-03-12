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
        <title>Trang Tin</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
        <link href="css/tintuc.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>    
        <div class="container page-wrapper">
            <div class="row">
                <div class="col-md-9">
                    <div class="section">
                        <div class="section-title">
                            <span>Tin Tức</span>
                        </div>
                        <div class="section-body">
                            <c:forEach items="${listN}" var="o" >
                                <h1 class="post-title">${o.title}</h1>
                                <div class="post-content">
                                    <h6>${o.shortDes}</h6>
                                </div>
                                <figure>
                                    <img src="${o.thumbnail}" class="thumb">
                                </figure>
                                <div class="post-content">
                                    <p>${o.content}</p>                                                            
                                </div>
                            </c:forEach>
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
    </body>
</html>