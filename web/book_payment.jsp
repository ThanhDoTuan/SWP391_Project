
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Payment</title>
        <link rel="stylesheet" type="text/css" href="assets_1/css/style-starter.css">
        <link rel="stylesheet" href="https://npmcdn.com/flickity@2/dist/flickity.css">
        <link rel="stylesheet" type="text/css" href="assets_1/css/progress.css">

        <link rel="stylesheet" type="text/css" href="assets_1/css/ticket-booking.css">
        <script src="https://code.jquery.com/jquery-latest.js"></script>
        <!-- ..............For progress-bar............... -->
        <link rel="stylesheet" type="text/css" href="assets_1/css/e-ticket.css">

        <link rel="stylesheet" type="text/css" href="assets_1/css/payment.css" />
        <link href="https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700" rel="stylesheet">

    </head>

    <body>
        <header id="site-header" class="w3l-header fixed-top">

            <!--/nav-->
            <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
                <div class="container">
                    <h1><a class="navbar-brand" href="home.jsp">
                            FashionShop </a></h1>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    </div>

                    <div class="Login_SignUp" id="login_s">
                        <!-- style="font-size: 2rem ; display: inline-block; position: relative;" -->
                        <!-- <li class="nav-item"> -->
                        <a class="nav-link" href="sign_in.jsp"><i class="fa fa-user-circle-o"></i></a>
                        <!-- </li> -->
                    </div>
                    <!--                   <div class="Login_SignUp" id="login"
                                                 style="font-size: 2rem ; display: inline-block; position: relative;">
                                                 <li class="nav-item"> 
                                                <a class="nav-link" <c:if test= "${sessionScope.customer != null}">href="bill.jsp"</c:if> <c:if test= "${sessionScope.customer == null}">href="no_ticket.jsp"</c:if> ><i class="fa fa-ticket"></i></a>
                                                 </li> 
                                            </div>-->
                        <!-- toggle switch for light and dark theme -->
                        <div class="mobile-position">
                            <nav class="navigation">
                                <div class="theme-switch-wrapper">
                                    <label class="theme-switch" for="checkbox">
                                        <input type="checkbox" id="checkbox">
                                        <div class="mode-container">
                                            <i class="gg-sun"></i>
                                            <i class="gg-moon"></i>
                                        </div>
                                    </label>
                                </div>
                            </nav>
                        </div>
                    </div>
                </nav>
            </header>

            <div class="container" id="progress-container-id">
                <div class="row">
                    <div class="col">
                        <div class="px-0 pt-4 pb-0 mt-3 mb-3">
                            <form id="form" action="bill" method="POST">
                                <ul id="progressbar" class="progressbar-class">
                                    <li id="step1" class="not_active"></li>
                                    <li id="step2" class="not_active"></li>
                                    <li id="step3" class="not_active"></li>
                                    <li id="step4" class="active">Payment</li>
                                </ul>
                                <br>
                                    <input type="hidden" name="userId" value="${userId}"/>
                            <input type="hidden" name="movieId" value="${movieId}"/>
                            <input type="hidden" name="cityId" value="${cityId}"/>
                            <input type="hidden" name="cinemaId" value="${cinemaId}"/>
                            <input type="hidden" name="roomId" value="${roomId}"/>
                            <input type="hidden" name="date" value="${date}"/>
                            <input type="hidden" name="startTime" value="${startTime}"/>
                            <!-- Payment Page -->
                            <div id="payment_div">
                                <div class="payment-row">
                                    <div class="col-75">
                                        <div class="payment-container">
                                            <div class="payment-row">
                                                <div class="col-50">
                                                    <h3 id="payment-h3">Payment</h3>
                                                    <div class="payment-row payment">
                                                        <div class="col-50 payment">
                                                            <label for="card" class="method card">
                                                                <div class="icon-container">
                                                                    <i class="fa fa-cc-visa" style="color: navy"></i>
                                                                    <i class="fa fa-cc-amex" style="color: blue"></i>
                                                                    <i class="fa fa-cc-mastercard" style="color: red"></i>
                                                                    <i class="fa fa-cc-discover" style="color: orange"></i>
                                                                </div>
                                                                <div class="radio-input">
                                                                    <input type="radio" id="card" />
                                                                    Pay RS.200.00 with credit card
                                                                </div>
                                                            </label>
                                                        </div>
                                                        <div class="col-50 payment">
                                                            <label for="paypal" class="method paypal">
                                                                <div class="icon-container">
                                                                    <i class="fa fa-paypal" style="color: navy"></i>
                                                                </div>
                                                                <div class="radio-input">
                                                                    <input id="paypal" type="radio" checked>
                                                                    Pay $30.00 with PayPal
                                                                </div>
                                                            </label>
                                                        </div>
                                                    </div>

                                                    <div class="payment-row">
                                                        <div class="col-50">
                                                            <label for="cname">Cardholder's Name</label>
                                                            <input type="text" id="cname" name="cardname" placeholder="Firstname Lastname" required />
                                                        </div>
                                                        <div class="col-50">
                                                            <label for="ccnum">Credit card number</label>
                                                            <input type="text" id="ccnum" name="cardnumber" placeholder="xxxx-xxxx-xxxx-xxxx"
                                                                   required />
                                                        </div>
                                                    </div>
                                                    <div class="payment-row">
                                                        <div class="col-50">
                                                            <label for="expmonth">Exp Month</label>
                                                            <input type="text" id="expmonth" name="expmonth" placeholder="September" required />
                                                        </div>
                                                        <div class="col-50">
                                                            <div class="payment-row">
                                                                <div class="col-50">
                                                                    <label for="expyear">Exp Year</label>
                                                                    <input type="text" id="expyear" name="expyear" placeholder="yyyy" required />
                                                                </div>
                                                                <div class="col-50">
                                                                    <label for="cvv">CVV</label>
                                                                    <input type="text" id="cvv" name="cvv" placeholder="xxx" required />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button name="next-step" class="next-step pay-btn"/>Confirm Payment</button>
                            <input type="button" name="previous-step" class="cancel-pay-btn" value="Cancel Payment"
                                   onclick="location.href = 'home.jsp';" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        let prevId = "CT1";
        window.onload = function () {
        document.getElementById("screen-next-btn").disabled = true;
        document.getElementById("screen-next-btn-1").disabled = true;
        };
        function timeFunction() {
        document.getElementById("screen-next-btn-1").disabled = false;
        }
        function placeFunction() {
        document.getElementById("screen-next-btn").disabled = false;
        }
        function myFunction(id) {
        document.getElementById(prevId).style.background = "rgb(243, 235, 235)";
        document.getElementById(id).style.background = "#df0e62";
        prevId = id;
        }
        function myF(id) {
        alert(id);
        }
        function myDivFunction(get) {
        var x = document.getElementById("myDiv");
        var y = document.getElementById("myDiv_1");
        var z = document.getElementById("myDiv_2");
        var a = document.getElementById("myDiv_3");
        var b = document.getElementById("myDiv_4");
        var c = document.getElementById("myDiv_5");
        var d = document.getElementById("myDiv_6");
        if (id === "CT1") {
        x.style.display = "block";
        z.style.display = "block";
        y.style.display = "none";
        a.style.display = "none";
        b.style.display = "none";
        c.style.display = "none";
        d.style.display = "none";
//                document.getElementById(id).style.background = "#df0e62";
        }
        if (id === "CT2") {
        x.style.display = "none";
        z.style.display = "none";
        y.style.display = "block";
        a.style.display = "none";
        b.style.display = "none";
        c.style.display = "none";
        d.style.display = "none";
        }
        if (id === "CT3") {
        x.style.display = "none";
        z.style.display = "none";
        y.style.display = "none";
        a.style.display = "block";
        b.style.display = "none";
        c.style.display = "none";
        d.style.display = "none";
        }
        if (id === "CT4") {
        x.style.display = "none";
        z.style.display = "none";
        y.style.display = "none";
        a.style.display = "none";
        b.style.display = "block";
        c.style.display = "none";
        d.style.display = "none";
        }
        if (id.equals("CT5") {
        x.style.display = "none";
        z.style.display = "none";
        y.style.display = "none";
        a.style.display = "none";
        b.style.display = "none";
        c.style.display = "block";
        d.style.display = "none";
        }
        if (id.equals("CT6") {
        x.style.display = "none";
        z.style.display = "none";
        y.style.display = "none";
        a.style.display = "none";
        b.style.display = "none";
        c.style.display = "none";
        d.style.display = "block";
        }
        get.style.background = "rgb(243, 235, 235)";
        document.getElementById(id).style.background = "#df0e62";
        prevId = id;
        }

    </script>

    <script src="https://npmcdn.com/flickity@2/dist/flickity.pkgd.js"></script>
    <script type="text/javascript" src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
    </script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="assets_1/js/theme-change.js"></script>

    <script type="text/javascript" src="assets_1/js/ticket-booking.js"></script>

</html>
