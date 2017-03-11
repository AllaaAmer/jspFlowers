<%-- 
    Document   : index
    Created on : Mar 6, 2017, 7:18:03 AM
    Author     : alaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Flowers</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <link href="assets/css/bootstrap.css" rel="stylesheet"/>
        <!-- Customize styles -->
        <link href="style.css" rel="stylesheet"/>
        <!-- font awesome styles -->
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
        <link rel="shortcut icon" href="assets/ico/favicon.ico">
    </head>
    <body>

        <!-- header -->
        <%@include file="header.jsp" %>
        <jsp:include  page="HomeServlet" />

        <!-- 
        Body Section 
        -->
        <div class="row">
            <div class="span12">
                <div class="well np" >
                    <div id="myCarousel" class="carousel slide homCar" >
                        <div class="carousel-inner"  >
                            <div class="item" >
                                <img style="width:100%;" src="assets/img/7.jpg" alt="bootstrap ecommerce templates">
                                <div class="carousel-caption">
                                    <h4>“The earth laughs in flowers”</h4><br/><br/><br/><br/>
                                    <p><span>― Ralph Waldo Emerson</span></p>
                                </div>
                            </div>
                            <div class="item">
                                <img style="width:100%" src="assets/img/4.jpg" alt="bootstrap ecommerce templates">
                                <div class="carousel-caption">
                                    <h4>“I must have flowers, always, and always.” </h4><br/><br/><br/><br/>
                                    <p><span>― Claude Monet</span></p>
                                </div>
                            </div>
                            <div class="item active" >
                                <img style="width:100%" src="assets/img/5.jpg" alt="bootstrap ecommerce templates">
                                <div class="carousel-caption">
                                    <h4>“Butterflies are self propelled flowers.” </h4><br/>
                                    <p><span>― Robert A. Heinlein</span></p>
                                </div>
                            </div>
                            <div class="item" >
                                <img style="width:100%;" src="assets/img/3.jpg" alt="bootstrap templates">
                                <div class="carousel-caption">
                                    <h4>“Every flower is a soul blossoming in nature.”  </h4><br/>
                                    <p><span>― Gérard de Nerval</span></p>
                                </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div id="sidebar" class="span3">
                <div class="well well-small">
                    <ul class="nav nav-list">
                        <c:forEach items="${requestScope.categories}" var="category">
                            <li><a href="products.html"><span><img src="assets/img/icons/cat.png" width=""></span>&nbsp;&nbsp;<c:out value="${category.name}"></c:out></a></li>     
                                    </c:forEach>
                        <li style="border:0"> &nbsp;</li>
                        <li> <a class="totalInCart" href="cart.html"><strong>Total Amount  <span class="badge badge-warning pull-right" style="line-height:18px;">$448.42</span></strong></a></li>
                    </ul>
                </div>
                <div class="well well-small alert alert-warning cntr">
                    <h2>50% Discount</h2>
                    <p> only valid for online order. <br><br><a class="defaultBtn" href="#">Click here </a> </p>
                </div>
                <a class="shopBtn btn-block" href="#">Upcoming Bouquets <br><small>Click to view</small></a>
                <br/><br/>
                <!--                <ul class="nav nav-list promowrapper">
                                    <li style="border:0"> &nbsp;</li>
                                    <li>
                                        <div class="thumbnail">
                                            <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                            <img src="assets/img/bootstrap-template.png" alt="bootstrap template">
                                            <div class="caption">
                                                <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                                            </div>
                                        </div>
                                    </li>
                                </ul>-->
            </div>
            <div class="span9">
                <!--
                Bouquets
                -->
                <div class="well well-small">
                    <a href="AllBouquets.jsp" title="Show All Bouquets" ><h3><img src="assets/img/icons/bouquet.png" >&nbsp; Bouquets </h3></a>
                    <hr class="soften"/>
                    <div class="row-fluid">
                        <div id="newProductCar" class="carousel slide">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <ul class="thumbnails">
                                        <c:forEach items="${requestScope.products}" var="product" begin="6" end="9">
                                            <li class="span3">
                                                <div class="thumbnail">
                                                    <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                    <a href="#" class="tag"></a>
                                                    <a href="product_details.html"><img src="${product.images.get(0).url}" alt=""></a>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                                <div class="item">
                                    <ul class="thumbnails">
                                        <c:forEach items="${requestScope.products}" var="product" begin="3" end="6">
                                            <li class="span3">
                                                <div class="thumbnail">
                                                    <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                    <a  href="product_details.html"><img src="${product.images.get(0).url}" alt=""></a>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#newProductCar" data-slide="prev">&lsaquo;</a>
                            <a class="right carousel-control" href="#newProductCar" data-slide="next">&rsaquo;</a>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <ul class="thumbnails">
                            <c:forEach items="${requestScope.products}" var="product" end="2" >
                                <li class="span4">
                                    <div class="thumbnail">
                                        <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                        <a href="product_details.html"><img src=" ${product.images.get(0).url}" alt=""></a>
                                        <div class="caption cntr">

                                            <p>${product.name}</p>
                                            <p><strong> $ ${product.price}</strong></p>
                                            <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>

                                            <br class="clr">
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <!--
                Flowers
                -->
                <div class="well well-small">
                    <h3><a class="btn btn-mini pull-right" href="AllFlowers.jsp" title="View More"><img src="assets/img/icons/more.png" ></a> <a href="AllFlowers.jsp" title="Show All Flowers"><img src="assets/img/icons/rose.png" >&nbsp; Flowers </a></h3>
                    <hr class="soften"/>
                    <div class="row-fluid">
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
                    </div>
                </div>

                <div class="well well-small">
                    <a class="btn btn-mini pull-right" href="products.html" title="View More"><img src="assets/img/icons/more.png" ></a></a>
                    High Rating 
                </div>


            </div>


        </div>

        <!-- Footer -->
        <%@include file="footer.jsp" %>