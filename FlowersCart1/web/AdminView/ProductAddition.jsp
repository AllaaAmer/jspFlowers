
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Bootstrap -->
        <link href="../assets/css/bootstrap/bootstrapCSS/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome -->
        <link href="../assets/css/fontawesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="../assets/css/nprogress.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="../assets/css/pink.css" rel="stylesheet">

        <!-- bootstrap-progressbar -->
        <link href="../assets/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
        <!-- JQVMap -->
        <link href="../assets/css/jqvmap.min.css" rel="stylesheet"/>
        <!-- bootstrap-daterangepicker -->
        <link href="../assets/css/daterangepicker.css" rel="stylesheet">

        <!-- Custom Theme Style -->
        <link href="../assets/css/custom.min.css" rel="stylesheet">
    </head>
    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <div class="navbar nav_title" style="border: 0;">
                            <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Administrator Page</span></a>
                        </div>

                        <div class="clearfix"></div>

                        <!-- menu profile quick info -->
                        <div class="profile clearfix">
                            <div class="profile_pic">
                                <img src="../assets/img/img.jpg" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome,</span>
                                <h2>Adel Zaid</h2>
                            </div>
                        </div>
                        <!-- /menu profile quick info -->
                        <br />
                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                            <div class="menu_section">
                                <h3>General</h3>
                                <ul class="nav side-menu">
                                    <li><a><i class="fa fa-thumbs-o-up"></i> Products <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="ProductAddition.jsp">Add Product</a></li>
                                            <li><a href="index2.html">Edit Product</a></li>
                                            <li><a href="index3.html">Remove Product</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-users"></i> Users <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="form.html">View User</a></li>
                                            <li><a href="form_advanced.html">Add User</a></li>
                                            <li><a href="form_validation.html">Remove User</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-bars"></i>Category<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="general_elements.html">Add Category</a></li>
                                            <li><a href="media_gallery.html">Edit Category</a></li>
                                            <li><a href="typography.html">Remove Category</a></li>
                                        </ul>
                                    </li>

                            </div>

                        </div>
                        <!-- /sidebar menu -->

                        <!-- /menu footer buttons -->
                        <div class="sidebar-footer hidden-small">
                            <a data-toggle="tooltip" data-placement="top" title="Settings">
                                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="Lock">
                                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                            </a>
                        </div>
                        <!-- /menu footer buttons -->
                    </div>
                </div>

                <!-- top navigation -->
                <div class="top_nav">
                    <div class="nav_menu">
                        <nav>
                            <div class="nav toggle">
                                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                            </div>

                            <ul class="nav navbar-nav navbar-right">
                                <li class="">
                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src="../assets/img/img.jpg" alt="">Adel Zaid
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                                        <li><a href="javascript:;"> Profile</a></li>
                                        <li>
                                            <a href="javascript:;">
                                                <span class="badge bg-red pull-right">50%</span>
                                                <span>Settings</span>
                                            </a>
                                        </li>
                                        <li><a href="javascript:;">Help</a></li>
                                        <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                                    </ul>
                                </li>

                                <li role="presentation" class="dropdown">
                                    <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                        <i class="fa fa-envelope-o"></i>
                                        <span class="badge bg-green">6</span>
                                    </a>
                                    <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                        <li>
                                            <a>
                                                <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image"><img src="../assets/img/img.jpg" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="text-center">
                                                <a>
                                                    <strong>See All Alerts</strong>
                                                    <i class="fa fa-angle-right"></i>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- /top navigation -->

                <!-- page content -->
                <div class="right_col" role="main">
                    <div class="">

                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Add Flower <small>Enter your flower details</small></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_panel">
                                        <br />
                                        <form class="form-horizontal form-label-left input_mask" method="post" action="${pageContext.request.contextPath}/AddProductServlet">

                                            <div class="col-md-10 col-sm-6 col-xs-12 form-group has-feedback">
                                                <input type="text" class="form-control has-feedback-left" name="name" placeholder="Flower Name" required="true">
                                                <span class="fa fa-gift form-control-feedback left" aria-hidden="true"></span>
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 form-group has-feedback">
                                                <input type="number" class="form-control" name="price" placeholder="Price" required="true">
                                                <span class="fa fa-money form-control-feedback right" aria-hidden="true"></span>
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 form-group has-feedback">
                                                <input type="number" class="form-control has-feedback-left" name="quantity" placeholder="Quantity" required="true">
                                                <span class="fa fa-stack-exchange form-control-feedback left" aria-hidden="true"></span>
                                            </div>
                                            <div class="col-md-4 col-sm-12 col-xs-12 form-group has-feedback">
                                                <input type="number" class="form-control has-feedback-left" name="rating" placeholder="Rating" max="5" min="1">
                                                <span class="fa fa-star-half-o form-control-feedback left" aria-hidden="true"></span>
                                            </div>
                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                <textarea class="form-control" placeholder="Write The discription of your product here" name="description"></textarea>
                                            </div>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                                                    <button type="button" class="btn btn-danger">Cancel</button>
                                                    <button class="btn btn-success" type="reset" >Reset Data</button>
                                                    <button type="submit" class="btn btn-primary">Add Flower</button>
                                                </div>
                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <footer>
                    <div class="pull-right">
                        Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
                    </div>
                    <div class="clearfix"></div>
                </footer>
                <!-- /footer content -->
            </div>
        </div>

        <!-- jQuery -->
        <script src="../assets/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../assets/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="../assets/js/fastclick.js"></script>
        <!-- NProgress -->
        <script src="../assets/js/nprogress.js"></script>
        <!-- Chart.js -->
        <script src="../assets/js/Chart.min.js"></script>
        <!-- gauge.js -->
        <script src="../assets/js/gauge.min.js"></script>
        <!-- bootstrap-progressbar -->
        <script src="../assets/js/bootstrap-progressbar.min.js"></script>
        <!-- iCheck -->
        <script src="../assets/js/icheck.min.js"></script>
        <!-- Skycons -->
        <script src="../assets/js/skycons.js"></script>
        <!-- Flot -->
        <script src="../assets/js/jquery.flot.js"></script>
        <script src="../assets/js/jquery.flot.pie.js"></script>
        <script src="../assets/js/jquery.flot.time.js"></script>
        <script src="../assets/js/jquery.flot.stack.js"></script>
        <script src="../assets/js/jquery.flot.resize.js"></script>
        <!-- Flot plugins -->
        <script src="../assets/js/jquery.flot.orderBars.js"></script>
        <script src="../assets/js/jquery.flot.spline.min.js"></script>
        <script src="../assets/js/curvedLines.js"></script>
        <!-- DateJS -->
        <script src="../assets/js/date.js"></script>

        <!-- bootstrap-daterangepicker -->
        <script src="../assets/js/moment.min.js"></script>
        <script src="../assets/js/daterangepicker.js"></script>

        <!-- Custom Theme Scripts -->
        <script src="../assets/js/custom.min.js"></script>

    </body>
</html>
