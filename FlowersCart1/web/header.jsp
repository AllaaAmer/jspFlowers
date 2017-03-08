
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Logged In Header -->
<c:if test="${sessionScope.LoggedIn}" >   

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="topNav">
            <div class="container">
                <div class="alignR">
                    <div class="pull-left socialNw">
                        <a href="#"><span class="icon-twitter"></span></a>
                        <a href="#"><span class="icon-facebook"></span></a>
                        <a href="#"><span class="icon-youtube"></span></a>
                        <a href="#"><span class="icon-tumblr"></span></a>
                    </div>
                    <a href="index.html"> <span class="icon-home"></span> Home <c:out value="${session.LoggedIn}" /></a> 
                    <a href="#"><span class="icon-user"></span> My Account</a> 
                    <a href="contact.html"><span class="icon-envelope"></span> Contact us</a>

                    <a href="cart.html"><span class="icon-shopping-cart"></span> 0 Item(s) - 
                        <span class="badge badge-warning"> $0.0</span></a>
                </div>
            </div>
        </div>
    </div>

    <!--
    Lower Header Section 
    -->
    <div class="container">
        <div id="gototop"> </div>
        <header id="header">
            <div class="row">
                <div class="span4">
                    <h1>
                        <a class="logo" href="index.html"><span>Twitter Bootstrap ecommerce template</span> 
                            <img src="assets/img/logo-bootstrap-shoping-cart.png" alt="bootstrap sexy shop">
                        </a>
                    </h1>
                </div>
                <div class="span4">
                </div>
                <div class="span4 alignR">
                    <p><br> <strong> Support (24/7) :  0800 1234 678 </strong><br><br></p>
                    <span class="btn btn-mini">[ 0 ] <span class="icon-shopping-cart"></span></span>
                    <span class="btn btn-warning btn-mini">$</span>
                    <span class="btn btn-mini">&pound;</span>
                    <span class="btn btn-mini">&euro;</span>
                </div>
            </div>
        </header>

        <!--
        Navigation Bar Section 
        -->
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container">
                    <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <div class="nav-collapse">
                        <ul class="nav">
                            <li class="active"><a href="index.html">Home </a></li>
                            <li class=""><a href="list-view.html">List View</a></li>
                            <li class=""><a href="grid-view.html">Grid View</a></li>
                            <li class=""><a href="three-col.html">Three Column</a></li>
                            <li class=""><a href="four-col.html">Four Column</a></li>
                            <li class=""><a href="general.html">General Content</a></li>

                        </ul>
                        <form action="#" class="navbar-search pull-left">
                            <input type="text" placeholder="Search" class="search-query span2">
                        </form>
                        <ul class="nav pull-right">
                            <li >
                                <a href="LogoutServlet"> <span class="icon-arrow-right" />  Log out </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </c:if>
    <!-----*******************************************************************************************************-->
    <!-- Not Logged In Header -->

    <c:if test="${!sessionScope.LoggedIn}">

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="topNav">
                <div class="container">
                    <div class="alignR">
                        <div class="pull-left socialNw">
                            <a href="#"><span class="icon-twitter"></span></a>
                            <a href="#"><span class="icon-facebook"></span></a>
                            <a href="#"><span class="icon-youtube"></span></a>
                            <a href="#"><span class="icon-tumblr"></span></a>
                        </div>
                        <a href="index.html"> <span class="icon-home"></span> Home</a> 

                        <a href="register.jsp"><span class="icon-edit"></span> Free Register </a> 
                        <a href="contact.html"><span class="icon-envelope"></span> Contact us</a>
                        <a href="cart.html"><span class="icon-shopping-cart"></span> 2 Item(s) - <span class="badge badge-warning"> $448.42</span></a>
                    </div>
                </div>
            </div>
        </div>

        <!--
        Lower Header Section 
        -->
        <div class="container">
            <div id="gototop"> </div>
            <header id="header">
                <div class="row">
                    <div class="span4">
                        <h1>
                            <a class="logo" href="index.html"><span>Twitter Bootstrap ecommerce template</span> 
                                <img src="assets/img/logo-bootstrap-shoping-cart.png" alt="bootstrap sexy shop">
                            </a>
                        </h1>
                    </div>

                    <div class="span4"> 
                    </div>

                    <div class="span4 alignR">
                        <p><br> <strong> Support (24/7) :  0800 1234 678 </strong><br><br></p>
                        <span class="btn btn-mini">[ 2 ] <span class="icon-shopping-cart"></span></span>
                        <span class="btn btn-warning btn-mini">$</span>
                        <span class="btn btn-mini">&pound;</span>
                        <span class="btn btn-mini">&euro;</span>
                    </div>
                </div>
            </header>

            <!--
            Navigation Bar Section 
            -->
            <div class="navbar">
                <div class="navbar-inner">
                    <div class="container">
                        <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <div class="nav-collapse">
                            <ul class="nav">
                                <li class="active"><a href="index.html">Home	</a></li>
                                <li class=""><a href="list-view.html">List View</a></li>
                                <li class=""><a href="grid-view.html">Grid View</a></li>
                                <li class=""><a href="three-col.html">Three Column</a></li>
                                <li class=""><a href="four-col.html">Four Column</a></li>
                                <li class=""><a href="general.html">General Content</a></li>
                            </ul>
                            <form action="#" class="navbar-search pull-left">
                                <input type="text" placeholder="Search" class="search-query span2">
                            </form>
                            <ul class="nav pull-right">
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-lock"></span> Login <b class="caret"></b></a>
                                    <div class="dropdown-menu">
                                        <form class="form-horizontal loginFrm" method="post" action="LoginServlet">
                                            <div class="control-group">
                                                <input type="text" class="span2"name="inputEmail" placeholder="Email">
                                            </div>
                                            <div class="control-group">
                                                <input type="password" class="span2" name="inputPassword" placeholder="Password">
                                            </div>
                                            <div class="control-group">
                                                <label class="checkbox">
                                                    <input type="checkbox"> Remember me
                                                </label>
                                                <button type="submit" class="shopBtn btn-block">Sign in</button>
                                            </div>
                                        </form>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
        <!-- 
        Body Section 
        -->

        <div class="row">
            <div id="sidebar" class="span3">
                <div class="well well-small">
                    <ul class="nav nav-list">
                        <li><a href="products.html"><span class="icon-chevron-right"></span>Fashion</a></li>
                        <li><a href="products.html"><span class="icon-chevron-right"></span>Watches</a></li>
                        <li><a href="products.html"><span class="icon-chevron-right"></span>Fine Jewelry</a></li>
                        <li><a href="products.html"><span class="icon-chevron-right"></span>Fashion Jewelry</a></li>
                        <li><a href="products.html"><span class="icon-chevron-right"></span>Engagement & Wedding</a></li>
                        <li><a href="products.html"><span class="icon-chevron-right"></span>Men's Jewelry</a></li>
                        <li><a href="products.html"><span class="icon-chevron-right"></span>Vintage & Antique</a></li>
                        <li><a href="products.html"><span class="icon-chevron-right"></span>Loose Diamonds </a></li>
                        <li><a href="products.html"><span class="icon-chevron-right"></span>Loose Beads</a></li>
                        <li><a href="products.html"><span class="icon-chevron-right"></span>See All Jewelry & Watches</a></li>
                        <li style="border:0"> &nbsp;</li>
                        <li> <a class="totalInCart" href="cart.html"><strong>Total Amount  <span class="badge badge-warning pull-right" style="line-height:18px;">$448.42</span></strong></a></li>
                    </ul>
                </div>

                <div class="well well-small alert alert-warning cntr">
                    <h2>50% Discount</h2>
                    <p> 
                        only valid for online order. <br><br><a class="defaultBtn" href="#">Click here </a>
                    </p>
                </div>
                <div class="well well-small" ><a href="#"><img src="assets/img/paypal.jpg" alt="payment method paypal"></a></div>

                <a class="shopBtn btn-block" href="#">Upcoming products <br><small>Click to view</small></a>
                <br>
                <br>
                <ul class="nav nav-list promowrapper">
                    <li>
                        <div class="thumbnail">
                            <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                            <img src="assets/img/bootstrap-ecommerce-templates.png" alt="bootstrap ecommerce templates">
                            <div class="caption">
                                <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                            </div>
                        </div>
                    </li>
                    <li style="border:0"> &nbsp;</li>
                    <li>
                        <div class="thumbnail">
                            <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                            <img src="assets/img/shopping-cart-template.png" alt="shopping cart template">
                            <div class="caption">
                                <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                            </div>
                        </div>
                    </li>
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
                </ul>

            </div>