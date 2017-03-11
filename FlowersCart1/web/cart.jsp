<%-- 
    Document   : cart
    Created on : Mar 9, 2017, 10:13:00 PM
    Author     : Sheko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Twitter Bootstrap shopping cart</title>
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
        <script src="cartPage.js" type="text/javascript"></script>

    </head>

    <body onload="calctotalprice()">
        <%@include file="header.jsp" %>
        <jsp:include  page="CartServlet" />

        <!--
        Body Section 
        -->
        <div class="row">
            <div class="well well-small">
                <h1>Check Out <small class="pull-right"> 2 Items are in the cart </small></h1>
                <hr class="soften"/>	

                <table class="table table-bordered table-condensed">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Description</th>                                
                            <th>Avail</th>
                            <th>Unit price</th>
                            <th>Quantity </th>
                            <th>Total</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach items="${userCart.products}"  var="product">
                            <tr>
                                <td><img width="100" src="assets/img/e.jpg" alt=""></td>
                                <td> Name:<c:out value="${product.name}"/><br>
                                    Description:<c:out value="${product.description}"/></td>
                                <td><span class="shopBtn"><span class="icon-ok"></span></span> </td>
                                <td><div id="price${product.id}"> <c:out value="${product.price}"/></td>
                                <td>
                                    <div class="input-append">
                                        <form><input class="btn btn-mini" type="number"style="max-width:34px"  name="quantity" value="1" min="1" max="${product.quantity}" onchange="calcProductPrice(${product.id}, this)"  ></form><form action="RemoveCartProductServlet" method="post"><input type="hidden" name="id" value="${product.id}"><button class="btn btn-mini btn-danger" type="submit" ><span class="icon-remove"></span></button></form>
                                    </div>
                                </td>
                                <td> <div id="ProducttotalPrice${product.id}" name="ProducttotalPrice"><c:out value="${product.price}"/></div></td>
                                <!--<td> <div id="ProducttotalPrice${product.id}" name="ProducttotalPrice">20</div></td>-->
                            </tr>
                        </c:forEach>
                        <tr>
                            < <td colspan="6" class="alignR">Total products:<div id="totalPrice"> </di></td>
                            <td class="label label-primary"></td>
                        </tr>
                    </tbody>
                </table><br/>
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <td> 
                                <form class="form-inline">
                                    <label style="min-width:159px"> VOUCHERS Code: </label> 
                                    <input type="text" class="input-medium" placeholder="CODE">
                                    <button type="submit" class="shopBtn"> ADD</button>
                                </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="table table-bordered">
                    <tbody>
                        <tr><td>ESTIMATE YOUR SHIPPING & TAXES</td></tr>
                        <tr> 
                            <td>
                                <form class="form-horizontal">
                                    <div class="control-group">
                                        <label class="span2 control-label" for="inputEmail">Country</label>
                                        <div class="controls">
                                            <input type="text" placeholder="Country">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="span2 control-label" for="inputPassword">Post Code/ Zipcode</label>
                                        <div class="controls">
                                            <input type="password" placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <button type="submit" class="shopBtn">Click to check the price</button>
                                        </div>
                                    </div>
                                </form> 
                            </td>
                        </tr>
                    </tbody>
                </table>		
                <a href="products.html" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Continue Shopping </a>
                <a href="login.html" class="shopBtn btn-large pull-right">Next <span class="icon-arrow-right"></span></a>

            </div>
        </div>
    </div>
    <%@include  file="footer.jsp" %>    
</body>
</html>
