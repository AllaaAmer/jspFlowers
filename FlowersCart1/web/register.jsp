<%-- 
    Document   : register
    Created on : Mar 8, 2017, 1:00:04 PM
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

        <!-- 
        Body Section 
        -->
        <div class="span1"></div>
        <div class="span10">
            <ul class="breadcrumb">
                <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                <li class="active">Registration</li>
            </ul>
            <h3 class="cntr"> Registration</h3>	
            <hr class="soft"/>
            <form class="form-horizontal" action="RegisterServlet" method="post">
                <div class="well">
                    <h3>Your Personal Details</h3>
                    <div class="control-group">
                        <label class="control-label" for="fname" required>First name <sup>*</sup></label>
                        <div class="controls">
                            <input type="text" name="fname" placeholder="First Name" required>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="lname">Last name <sup>*</sup></label>
                        <div class="controls">
                            <input type="text" name="lname" placeholder="Last Name" required>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="mail">Email <sup>*</sup></label>
                        <div class="controls">
                            <input type="email" name="mail" placeholder="Email" required>
                        </div>
                    </div>	  
                    <div class="control-group">
                        <label class="control-label" for="password">Password <sup>*</sup></label>
                        <div class="controls">
                            <input type="password" name="password" id="password" placeholder="Password" required>
                        </div>
                    </div>
                     <div class="control-group">
                        <label class="control-label" for="confirmPassword">Confirm Password <sup>*</sup></label>
                        <div class="controls">
                            <input type="password" name="confirmPassword" id="confirmpassword" placeholder="Confirm Password" required>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="birthday">Date of Birth <sup>*</sup></label>
                        <div class="controls">
                            <input type="date"  name="birthday" max="1980-12-31" min="2017-01-02" required/>
                        </div>
                    </div>
                </div>

                <div class="well">
                    <h3>Your Contact Details</h3>
                    <div class="control-group">
                        <label class="control-label input-group-addon" for="job">Job </label>
                        <div class="controls">
                            <input type="text" name="job" placeholder="Job"/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="phone">Phone <sup>*</sup></label>
                        <div class="controls">
                            <input type="tel" name="phone" placeholder="Phone" required>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="address">Address <sup>*</sup></label>
                        <div class="controls">
                            <input type="text" name="address" placeholder="Address" required>
                        </div>
                    </div>            
                </div>

                <div class="well">
                    <h3>Your Billing Data</h3>
                    <div class="control-group">
                        <label class="control-label" for="cridetlimit">Credit Limit <sup>*</sup></label>
                        <div class="controls">
                            <input type="number" name="cridetlimit" placeholder="Credit Limit" required>
                        </div>
                    </div>
                </div>
                <div class="well ">
                    <h3 >Your Interests</h3>
                    <div class="control-group">
                        <label class="control-label" for="inputCreditLimit">Interest </label>
                        <div class="controls">
                            <input type="text" name="interestsList" placeholder="Interest Name">
                            <input type="text" name="interestsList" placeholder="Interest Name">
                            <input type="text" name="interestsList" placeholder="Interest Name">
                            <input type="text" name="interestsList" placeholder="Interest Name">
                        </div>
                    </div>
                </div>
                <div class="span4"></div>
                <div class="control-group">
                        <div class="controls">
                            <input type="submit"  value="Register" class="exclusive btn-warning btn-large">
                        </div>
                 </div>
            </form>

        </div>
    </div>
    <!-- Footer -->
    <%@include file="footer.jsp" %>