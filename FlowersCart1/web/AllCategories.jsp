<%-- 
    Document   : AllCategories
    Created on : Mar 10, 2017, 8:54:46 PM
    Author     : alaa
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categories</title>
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
         <h3 class="cntr"><img src="assets/img/icons/rose.png" >&nbsp; Flowers </h3>
        <ul class="thumbnails">
            <c:forEach items="${requestScope.flowers}" var="flower">
                <li class="span4">
                    <div class="thumbnail">
                        <a class="zoomTool" href="product_details.html" title="add to cart"></span> BOUQUETS </a>
                        <a  href="product_details.html"><img src="${flower.image.url}" alt=""></a>
                        <div class="caption cntr">
                            <p><strong> ${flower.name}</strong></p>
                            <p> ${flower.country}</p>
                        </div>
                    </div>
                </li>
            </c:forEach>
        </ul>	

        <!-- Footer -->
        <%@include file="footer.jsp" %>
