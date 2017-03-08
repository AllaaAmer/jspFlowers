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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <!-- Bootstrap styles -->
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

        <!-- 
        Body Section 
        -->

            <div class="span9">
                <div class="well np">
                    <div id="myCarousel" class="carousel slide homCar">
                        <div class="carousel-inner">
                            <div class="item">
                                <img style="width:100%" src="assets/img/bootstrap_free-ecommerce.png" alt="bootstrap ecommerce templates">
                                <div class="carousel-caption">
                                    <h4>Bootstrap shopping cart</h4>
                                    <p><span>Very clean simple to use</span></p>
                                </div>
                            </div>
                            <div class="item">
                                <img style="width:100%" src="assets/img/carousel1.png" alt="bootstrap ecommerce templates">
                                <div class="carousel-caption">
                                    <h4>Bootstrap Ecommerce template</h4>
                                    <p><span>Highly Google seo friendly</span></p>
                                </div>
                            </div>
                            <div class="item active">
                                <img style="width:100%" src="assets/img/carousel3.png" alt="bootstrap ecommerce templates">
                                <div class="carousel-caption">
                                    <h4>Twitter Bootstrap cart</h4>
                                    <p><span>Very easy to integrate and expand.</span></p>
                                </div>
                            </div>
                            <div class="item">
                                <img style="width:100%" src="assets/img/bootstrap-templates.png" alt="bootstrap templates">
                                <div class="carousel-caption">
                                    <h4>Bootstrap templates integration</h4>
                                    <p><span>Compitable to many more opensource cart</span></p>
                                </div>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
                    </div>
                </div>
                <!--
                New Products
                -->
                <div class="well well-small">
                    <h3>New Products </h3>
                    <hr class="soften"/>
                    <div class="row-fluid">
                        <div id="newProductCar" class="carousel slide">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <ul class="thumbnails">
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a href="#" class="tag"></a>
                                                <a href="product_details.html"><img src="assets/img/bootstrap-ring.png" alt="bootstrap-ring"></a>
                                            </div>
                                        </li>
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a href="#" class="tag"></a>
                                                <a  href="product_details.html"><img src="assets/img/i.jpg" alt=""></a>
                                            </div>
                                        </li>
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a href="#" class="tag"></a>
                                                <a  href="product_details.html"><img src="assets/img/g.jpg" alt=""></a>
                                            </div>
                                        </li>
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a  href="product_details.html"><img src="assets/img/s.png" alt=""></a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="item">
                                    <ul class="thumbnails">
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a  href="product_details.html"><img src="assets/img/i.jpg" alt=""></a>
                                            </div>
                                        </li>
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a  href="product_details.html"><img src="assets/img/f.jpg" alt=""></a>
                                            </div>
                                        </li>
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a  href="product_details.html"><img src="assets/img/h.jpg" alt=""></a>
                                            </div>
                                        </li>
                                        <li class="span3">
                                            <div class="thumbnail">
                                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                                <a  href="product_details.html"><img src="assets/img/j.jpg" alt=""></a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#newProductCar" data-slide="prev">&lsaquo;</a>
                            <a class="right carousel-control" href="#newProductCar" data-slide="next">&rsaquo;</a>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <ul class="thumbnails">
                            <li class="span4">
                                <div class="thumbnail">

                                    <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a href="product_details.html"><img src="assets/img/b.jpg" alt=""></a>
                                    <div class="caption cntr">
                                        <p>Manicure & Pedicure</p>
                                        <p><strong> $22.00</strong></p>
                                        <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                        <div class="actionList">
                                            <a class="pull-left" href="#">Add to Wish List </a> 
                                            <a class="pull-left" href="#"> Add to Compare </a>
                                        </div> 
                                        <br class="clr">
                                    </div>
                                </div>
                            </li>
                            <li class="span4">
                                <div class="thumbnail">
                                    <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a href="product_details.html"><img src="assets/img/c.jpg" alt=""></a>
                                    <div class="caption cntr">
                                        <p>Manicure & Pedicure</p>
                                        <p><strong> $22.00</strong></p>
                                        <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                        <div class="actionList">
                                            <a class="pull-left" href="#">Add to Wish List </a> 
                                            <a class="pull-left" href="#"> Add to Compare </a>
                                        </div> 
                                        <br class="clr">
                                    </div>
                                </div>
                            </li>
                            <li class="span4">
                                <div class="thumbnail">
                                    <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a href="product_details.html"><img src="assets/img/a.jpg" alt=""></a>
                                    <div class="caption cntr">
                                        <p>Manicure & Pedicure</p>
                                        <p><strong> $22.00</strong></p>
                                        <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                        <div class="actionList">
                                            <a class="pull-left" href="#">Add to Wish List </a> 
                                            <a class="pull-left" href="#"> Add to Compare </a>
                                        </div> 
                                        <br class="clr">
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--
                Featured Products
                -->
                <div class="well well-small">
                    <h3><a class="btn btn-mini pull-right" href="products.html" title="View more">VIew More<span class="icon-plus"></span></a> Featured Products  </h3>
                    <hr class="soften"/>
                    <div class="row-fluid">
                        <ul class="thumbnails">
                            <li class="span4">
                                <div class="thumbnail">
                                    <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a  href="product_details.html"><img src="assets/img/d.jpg" alt=""></a>
                                    <div class="caption">
                                        <h5>Manicure & Pedicure</h5>
                                        <h4>
                                            <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
                                            <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
                                            <span class="pull-right">$22.00</span>
                                        </h4>
                                    </div>
                                </div>
                            </li>
                            <li class="span4">
                                <div class="thumbnail">
                                    <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a  href="product_details.html"><img src="assets/img/e.jpg" alt=""></a>
                                    <div class="caption">
                                        <h5>Manicure & Pedicure</h5>
                                        <h4>
                                            <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
                                            <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
                                            <span class="pull-right">$22.00</span>
                                        </h4>
                                    </div>
                                </div>
                            </li>
                            <li class="span4">
                                <div class="thumbnail">
                                    <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                    <a  href="product_details.html"><img src="assets/img/f.jpg" alt=""/></a>
                                    <div class="caption">
                                        <h5>Manicure & Pedicure</h5>
                                        <h4>
                                            <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
                                            <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
                                            <span class="pull-right">$22.00</span>
                                        </h4>
                                    </div>
                                </div>
                            </li>
                        </ul>	
                    </div>
                </div>

                <div class="well well-small">
                    <a class="btn btn-mini pull-right" href="#">View more <span class="icon-plus"></span></a>
                    Popular Products 
                </div>
                <hr>
                <div class="well well-small">
                    <a class="btn btn-mini pull-right" href="#">View more <span class="icon-plus"></span></a>
                    Best selling Products 
                </div>
            </div>
        </div>

        <!-- Footer -->
        <%@include file="footer.jsp" %>