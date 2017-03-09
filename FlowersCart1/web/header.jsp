
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
                    <a href="index.jsp"> <span class="icon-home"></span> Home </a> 
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
                        <a class="logo" href="index.html">
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
                          <li class="active"><a href="index.jsp">Home	</a></li>
                                <li class=""><a href="list-view.html">Flowers </a></li>
                                <li class=""><a href="grid-view.html">Bouquets </a></li>
                                <li class=""><a href="three-col.html">Categories</a></li>
                                <li class=""><a href="four-col.html">Extras </a></li>

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
            <div class="topNav" style="background-color: white;">
                <div class="container" >
                    <div class="alignR">
                        <div class="pull-left socialNw">
                            <a href="#"><span class="icon-twitter"></span></a>
                            <a href="#"><span class="icon-facebook"></span></a>
                            <a href="#"><span class="icon-youtube"></span></a>
                            <a href="#"><span class="icon-tumblr"></span></a>
                        </div>
                        <a href="index.jsp"> <span class="icon-home"></span> Home</a> 

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
                    <div class="span6">
                        <h1>
                            <a class="logo" href="index.jsp">
                                <img src="assets/img/logo-bootstrap-shoping-cart.png" width="200px" height="10px">
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
                                <li class="active"><a href="index.jsp">Home	</a></li>
                                <li class=""><a href="list-view.html">Flowers </a></li>
                                <li class=""><a href="grid-view.html">Bouquets </a></li>
                                <li class=""><a href="three-col.html">Categories</a></li>
                                <li class=""><a href="four-col.html">Extras </a></li>
                              
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