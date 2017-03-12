<%-- 
    Document   : AllBouquets
    Created on : Mar 10, 2017, 8:54:46 PM
    Author     : alaa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bouquets</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Bootstrap styles -->
        <link href="assets/css/bootstrap.css" rel="stylesheet"/>
        <!-- Customize styles -->
        <link href="style.css" rel="stylesheet"/>
        <!-- font awesome styles -->
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
        <link rel="shortcut icon" href="assets/ico/favicon.ico">
    </head>
    <body>
        <%@include file="header.jsp" %>
        <jsp:include  page="HomeServlet" />
        <!-- 
        Body Section 
        -->
        <!--
        All Bouquets
        -->
        <h3 class="cntr"><img src="assets/img/icons/bouquet.png" >&nbsp; Bouquets</h3>
        <ul class="thumbnails">
            <c:forEach items="${requestScope.products}" var="product">
                <li class="span3">
                    <div class="thumbnail">
                        <a href="product_details.html" class="overlay"></a>
                        <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                        <a href="product_details.html"><img src="${product.images.get(0).url}" alt=""></a>
                        <div class="caption cntr">
                            <p>${product.name}</p>
                            <p><strong> $${product.price}</strong></p>
                            <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                            <br class="clr">
                        </div>
                    </div>
                </li>
            </c:forEach>
        </ul>

        <!-- Footer -->
        <%@include file="footer.jsp" %>
