

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Edit Products</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets_1/css/erud_form.css"/>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" type="text/css" href="assets_1/css/swiper.min.css">

        <link rel="stylesheet" type="text/css" href="assets_1/css/style-starter.css">
        <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
              rel="stylesheet">
        <script>
            $(document).ready(function () {
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();
                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function () {
                    if (this.checked) {
                        checkbox.each(function () {
                            this.checked = true;
                        });
                    } else {
                        checkbox.each(function () {
                            this.checked = false;
                        });
                    }
                });
                checkbox.click(function () {
                    if (!this.checked) {
                        $("#selectAll").prop("checked", false);
                    }
                });
                $("table .delete").on('click', function () {
                    var id = $(this).parent().find('#id').val();
                    $("#deleteEmployeeModal #id").val(id);
                });


                $("table .delete").on('click', function () {
                    var id = $(this).parent().find('#id').val();
                    $("#deleteEmployeeModal #id").val(id);
                });

                $("table .edit").on('click', function () {
                    var id = $(this).parent().find('#id').val();
                    var name = $(this).parent().find('#name').val();
                    var original_price = $(this).parent().find('#original_price').val();
                    var sale_price = $(this).parent().find('#sale_price').val();
                    var detail = $(this).parent().find('#detail').val();
                    var brief = $(this).parent().find('#brief').val();
                    var updateDate = $(this).parent().find('#updateDate').val();
                    var status = $(this).parent().find('#status').val();
                    var sex = $(this).parent().find('#sex').val();
                    var avatar = $(this).parent().find('#avatar').val();
                    var category_id = $(this).parent().find('#category_id').val();
                    var season = $(this).parent().find('#season').val();
                    var quantity = $(this).parent().find('#quantity').val();

                    $("#editEmployeeModal #id").val(id);
                    $("#editEmployeeModal #name").val(name);
                    $("#editEmployeeModal #original_price").val(original_price);
                    $("#editEmployeeModal #sale_price").val(sale_price);
                    $("#editEmployeeModal #detail").val(detail);
                    $("#editEmployeeModal #brief").val(brief);
                    $("#editEmployeeModal #updateDate").val(updateDate);
                    $("#editEmployeeModal #status").val(status);
                    $("#editEmployeeModal #sex").val(sex);
                    $("#editEmployeeModal #image").val(avatar);
                    $("#editEmployeeModal #category_id").val(category_id);
                    $("#editEmployeeModal #season").val(season);
                    $("#editEmployeeModal #quantity").val(quantity);  



                });
//                $("table .edit").on('click', function () {
//                    var id = $(this).parent().find('#id').val();
//                    //                    $("#editEmployeeModal #id").val(id);
//                    //                    alert(id);
//                    $.ajax({
//                        type: 'GET',
//                        url: '${pageContext.request.contextPath}/update',
//                        data: {action: 'find', id: id},
//                        success: function (result) {
//                            $("#editEmployeeModal #title").val(result.title);
//                        }
//                    });
//                });
            });
//            $(document).ready(function () {
//                console.log($.ajax);
//            });

        </script>
    </head>

    <body>
        <!-- header -->
        <header id="site-header" class="w3l-header fixed-top">
            <!--/nav-->
            <nav class="navbar navbar-expand-lg navbar-light fill px-lg-0 py-0 px-3">
                <div class="container">
                    <h1><a class="navbar-brand" href="home.jsp"><img src="assets_1/images/4058645.jpg" alt="" style="width: 70px">
                            MyFashionShop </a></h1>
                    <!-- if logo is image enable this   
                                            <a class="navbar-brand" href="#home.jsp">
                                                    <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                                            </a> -->
                    <button class="navbar-toggler collapsed" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                            aria-label="Toggle navigation">
                        <!-- <span class="navbar-toggler-icon"></span> -->
                        <span class="fa icon-expand fa-bars"></span>
                        <span class="fa icon-close fa-times"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="/home">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="movies">Product</a>
                            </li>

                            <li class="nav-item active">
                                <a class="nav-link" href="edit_movies">Manage Product</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Contact_Us.jsp">Contact</a>
                            </li>
                        </ul>

                        <!--/search-right-->
                        <!--/search-right-->

                        <div class="Login_SignUp" id="login"
                             style="font-size: 2rem ; display: inline-block; position: relative;">
                            <!-- <li class="nav-item"> -->
                            <a class="nav-link" href="sign_in"><i class="fa fa-user-circle-o"></i></a>
                            <!-- </li> -->
                        </div>
                        <!--                        <div class="Login_SignUp" id="login"
                                                     style="font-size: 2rem ; display: inline-block; position: relative;">
                                                     <li class="nav-item"> 
                                                    <a class="nav-link" href="bill"><i class="fa fa-ticket"></i></a>
                                                     </li> 
                                                </div>-->
                        <c:if test ="${sessionScope.userLogged != null || sessionScope.admin != null}">
                            <div>
                                <p>Welcome ${userName}<a href="logout">(Logout)</a></p>
                            </div>
                        </c:if>
                    </div>
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
        <!--/breadcrumbs -->
        <div class="w3l-breadcrumbs">
            <nav id="breadcrumbs" class="breadcrumbs">
                <div class="container page-wrapper">
                    <a href="home.jsp">Home</a> » <span class="breadcrumb_last" aria-current="page">Edit Products</span>
                </div>
            </nav>
        </div>
        <!-- /about-->
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>Product</b></h2>
                            </div>
                            <div class="col-sm-6">
                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                                <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
                            </div>
                        </div>
                    </div>
                    <label>
                        Show
                        <select class="custom-select custom-select-sm form-control form-control-sm" name="dtBasicExample_length" id="maxRows" aria-controls="dtBasicExample" style="width:32%">
                            <option value="5">5</option>
                            <option value="10">10</option>
                            <option value="15">15</option>
                        </select>
                        entries
                    </label>
                    <table class="table table-striped table-hover table-responsive">
                        <thead>
                            <tr>
                                <th>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="selectAll">
                                        <label for="selectAll"></label>
                                    </span>
                                </th>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Original Price</th>
                                <th>Update Date</th>
                                <th>Quantity</th>
                                <th>Season</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listProduct}" var="m">
                                <tr>
                                    <td>
                                        <span class="custom-checkbox">
                                            <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                            <label for="checkbox1"></label>
                                        </span>
                                    </td>
                                    <td>${m.getProduct_id()}</td>
                                    <td>${m.getProduct_name()}</td>
                                    <td>${m.getOriginal_prices()}</td>
                                    <td>${m.getUpdate_date()}</td>
                                    <td>${m.getQuantity()}</td>
                                    <td>${m.getSeason()}</td>
                                    <td>
                                        <a href="#editEmployeeModal"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                        <input type="hidden" name="id" id="id" value="${m.getProduct_id()}">
                                        <input type="hidden" name="name" id="name" value="${m.getProduct_name()}">
                                        <input type="hidden" name="original_price" id="original_price" value="${m.getOriginal_prices()}">
                                        <input type="hidden" name="sale_price" id="sale_price" value="${m.getSale_prices()}">
                                        <input type="hidden" name="detail" id="detail" value="${m.getProduct_detail()}">
                                        <input type="hidden" name="brief" id="brief" value="${m.getBrief_info()}">
                                        <input type="hidden" name="updateDate" id="updateDate" value="${m.getUpdate_date()}">
                                        <input type="hidden" name="status" id="status" value="${m.getStatus()}">
                                        <input type="hidden" name="sex" id="sex" value="${m.getSex()}">
                                        <input type="hidden" name="image" id="image" value="${m.getImage()}">
                                        <input type="hidden" name="category_id" id="category_id" value="${m.getCategory_id()}">
                                        <input type="hidden" name="season" id="season" value="${m.getSeason()}">
                                        <input type="hidden" name="quantity" id="quantity" value="${m.getQuantity()}">
                                        <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="clearfix">
                        <div class="hint-text">Showing <b>${endPage}</b> out of <b>${totalProduct}</b> entries</div>
                        <!--                        <ul class="pagination">
                                                    <li class="page-item"><a href="#">Previous</a></li>
                                                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                                                    <li class="page-item"><a href="#" clas  s="page-link">2</a></li>
                                                    <li class="page-item disabled"><a href="#" class="page-link">3</a></li>
                                                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                                                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                                                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                                                </ul>-->
                        <ul class="pagination">
                            <li class="page-item"><a href="#">Previous</a></li>
                                <c:forEach begin="1" end="${endPage}" var="i">
                                <li class="page-item"><a href="edit_products?index=${i}" class="page-link" active>${i}</a></li>
                                </c:forEach>
                            <li class="page-item"><a href="#" class="page-link">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>        
        </div>
        <!-- Add Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="add_product" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Original Price</label>
                                <input type="text" name="original_price" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Sale Price</label>
                                <input type="text" class="form-control" name="sale_price">
                            </div>
                            <div class="form-group">
                                <label>Detail</label>
                                <textarea name="detail" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Brief Information</label>
                                <textarea name="brief" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Update-Date</label>
                                <input type="date" name="updateDate" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Status</label>
                                <input type="text" name="status" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input type="text" name="quantity" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Genre</label>
                                <input type="text" name="sex" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <input type="text" name="category_id" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Season</label>
                                <input type="text" name="season" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input type="file" id="avatar" name="avatar" accept="image/png, image/jpeg, image/jpg" class="form-control" required>
                            </div>			
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="update_product" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" id="name" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Original Price</label>
                                <input type="text" name="original_price" id="original_price" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Sale Price</label>
                                <input type="text" class="form-control" name="sale_price" id="sale_price">
                            </div>
                            <div class="form-group">
                                <label>Detail</label>
                                <textarea name="detail" id="detail" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Brief Information</label>
                                <textarea name="brief" id="brief" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Update-Date</label>
                                <input type="date" name="updateDate" id="updateDate" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Status</label>
                                <input type="text" name="status" id="status" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input type="text" name="quantity" id="quantity" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Genre</label>
                                <input type="text" name="sex" id="sex" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <input type="text" name="category_id" id="category_id" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Season</label>
                                <input type="text" name="season" id="season" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input type="file" id="avatar" name="avatar" accept="image/png, image/jpeg, image/jpg" class="form-control">
                            </div>
                        </div>

                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                            <input type="hidden" name="id" id="id">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="delete_product" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" name="delete" value="Delete">
                            <input type="hidden" name="id" id="id">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <footer class="w3l-footer">
            <section class="footer-inner-main">
                <div class="footer-hny-grids py-5">
                    <div class="container py-lg-4">
                        <div class="text-txt">
                            <div class="right-side">
                                <div class="row footer-about">
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <a href="movies"><img class="img-fluid" src="assets_1/images/banner1.png"
                                                              alt=""></a>
                                    </div>
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <a href="movies"><img class="img-fluid" src="assets_1/images/banner2.png"
                                                              alt=""></a>
                                    </div>
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <a href="movies"><img class="img-fluid" src="assets_1/images/banner3.png"
                                                              alt=""></a>
                                    </div>
                                    <div class="col-md-3 col-6 footer-img mb-lg-0 mb-4">
                                        <a href="movies"><img class="img-fluid" src="assets_1/images/banner.png"
                                                              alt=""></a>
                                    </div>
                                </div>
                                <div class="row footer-links">


                                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                        <h6>Fashion</h6>
                                        <ul>
                                            <li><a href="#">Entertainment</a></li>
                                            <li><a href="#">Videos</a></li>
                                            <li><a href="#">Collections</a></li>
                                            <li><a href="#">Tailor</a></li>
                                            <li><a href="#">Upcoming Collections</a></li>
                                            <li><a href="Contact_Us.jsp">Contact Us</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                        <h6>Information</h6>
                                        <ul>
                                            <li><a href="home.jsp">Home</a> </li>
                                            <li><a href="about.html">About</a> </li>
                                            <li><a href="#">Fashion Show</a> </li>
                                            <li><a href="#">Blogs</a> </li>
                                            <li><a href="sign_in.html">Login</a></li>
                                            <li><a href="Contact_Us.jsp">Contact</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                        <h6>Locations</h6>
                                        <ul>
                                            <li><a href="movies">Asia</a></li>
                                            <li><a href="movies">France</a></li>
                                            <li><a href="movies">Taiwan</a></li>
                                            <li><a href="movies">United States</a></li>
                                            <li><a href="movies">Korea</a></li>
                                            <li><a href="movies">United Kingdom</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-3 col-sm-6 sub-two-right mt-5">
                                        <h6>Newsletter</h6>
                                        <form action="#" class="subscribe mb-3" method="post">
                                            <input type="email" name="email" placeholder="Your Email Address" required="">
                                            <button><span class="fa fa-envelope-o"></span></button>
                                        </form>
                                        <p>Enter your email and receive the latest news, updates and special offers from us.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <div class="below-section">
                    <div class="container">
                        <div class="copyright-footer">
                            <div class="columns text-lg-left">
                                <p>&copy; 2023 MyFashionShop. All rights reserved</p>
                            </div>

                            <ul class="social text-lg-right">
                                <li><a href="#facebook"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                                </li>
                                <li><a href="#linkedin"><span class="fa fa-linkedin" aria-hidden="true"></span></a>
                                </li>
                                <li><a href="#twitter"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                                </li>
                                <li><a href="#google"><span class="fa fa-google-plus" aria-hidden="true"></span></a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
                <!-- copyright -->
                <!-- move top -->
                <button onclick="topFunction()" id="movetop" title="Go to top">
                    <span class="fa fa-arrow-up" aria-hidden="true"></span>
                </button>
                <script>
                    // When the user scrolls down 20px from the top of the document, show the button
                    window.onscroll = function () {
                        scrollFunction()
                    };

                    function scrollFunction() {
                        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                            document.getElementById("movetop").style.display = "block";
                        } else {
                            document.getElementById("movetop").style.display = "none";
                        }
                    }

                    // When the user clicks on the button, scroll to the top of the document
                    function topFunction() {
                        document.body.scrollTop = 0;
                        document.documentElement.scrollTop = 0;
                    }
                </script>
                <!-- /move top -->

            </section>
        </footer>
        <script>
            $(document).ready(function () {
                $('#dtBasicExample').DataTable();
                $('.dataTables_length').addClass('bs-select');
            });
        </script>
    </body>

</html>
<script src="assets_1/js/jquery-3.3.1.min.js"></script>
<!-- stats -->
<script src="assets_1/js/jquery.waypoints.min.js"></script>
<script src="assets_1/js/jquery.countup.js"></script>
<script type="text/javascript" src='assets_1/js/swiper.min.js'></script>
<script>
            $('.counter').countUp();
</script>
<!--/them                e-change-->
<script src="assets_1/js/theme-change.js"></script>
<script>
            const toggleSwitch = document.querySelector('.theme-switch input[type="checkbox"]');
            const currentTheme = localStorage.getItem('theme');

            if (currentTheme) {
                document.documentElement.setAttribute('data-theme', currentTheme);
                switchTextColor(currentTheme);
                if (currentTheme === 'dark') {
                    toggleSwitch.checked = true;
                }
            }

            function switchTextColor(currTheme) {

                if (currTheme === 'light') {
                    document.getElementById("swiper-container-h1").style.color = 'black';
                    document.getElementById("details-h3-1").sty
                    le.color = 'black';
                    document.getElementById("details-h3-2").style.color = 'black';
                    document.getElementById("details-h3-3").style.color = 'black';
                    document.getElementById("details-h3-4").style.color = 'black';
                    document.getElementById("details-h3-5").style.color = 'black';
                    document.getElementById("details-h3-6").style.color = 'black';
                } else {
                    document.getElementById("swiper-container-h1").style.color = 'white';
                    document.getElementById("details-h3-1").style.color = 'white';
                    document.getElementById("details-h3-2").style.color = 'white';
                    document.getElementById("details-h3-3").style.color = 'white';
                    document.getElementById("details-h3-4").style.color = 'white';
                    document.getElementById("details-h3-5").style.color = 'white';
                    document.getElementById("details-h3-6").style.color = 'white';
                }
            }
            toggleSwitch.addEventListener('change', switchTheme, false);
</script>
<script src="assets_1/js/owl.carousel.js"></script>
<!-- script for banner slider-->
<script>
            $(document).ready(function () {
                $('.owl-team').owlCarousel({
                    loop: true,
                    margin: 20,
                    nav: false,
                    responsiveClass: true,
                    autoplay: false,
                    autoplayTimeout: 5000,
                    autoplaySpeed: 1000,
                    autoplayHoverPause: false,
                    responsive: {
                        0: {
                            items: 2,
                            nav: false
                        },
                        480: {
                            items: 2,
                            nav: true
                        },
                        667: {
                            items: 3,
                            nav: true
                        },
                        1000: {
                            items: 4,
                            nav: true
                        }
                    }
                })
            })
</script>


<script>
    var swiper = new Swiper('.swiper-container', {
        effect: 'coverflow',
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: 'auto',
        coverflowEffect: {
            rotate: 50,
            stretch: 0,
            depth: 100,
            modifier: 1,
            slideShadows: true,
        },
        pagination: {
            el: '.swiper-pagination',
        },
    });
</script>
<script>
    $(document).ready(function () {
        $('.owl-three').owlCarousel({
            loop: true,
            margin: 20,
            nav: false,
            responsiveClass: true,
            autoplay: true,
            autoplayTimeout: 5000,
            autoplaySpeed: 1000,
            autoplayHoverPause: false,
            responsive: {
                0: {
                    items: 2,
                    nav: false
                },
                480: {
                    items: 2,
                    nav: true
                },
                667: {
                    items: 3,
                    nav: true
                },
                1000: {
                    items: 6,
                    nav: true
                }
            }
        })
    })
</script>
<!-- for tesimonials carousel slider -->
<script>
    $(document).ready(function () {
        $(".owl-clients").owlCarousel({
            loop: true,
            margin: 40,
            responsiveClass: true,
            responsive: {
                0: {
                    items: 1,
                    nav: true
                },
                736: {
                    items: 2,
                    nav: false
                },
                1000: {
                    items: 3,
                    nav: true,
                    loop: false
                }
            }
        })
    })
</script>
<!-- script for owlcarousel -->
<!-- disable body scroll which navbar is in active -->
<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- disable body scroll which navbar is inactive -->

<!--/MENU-JS-->
<script>
    $(window).on("scroll", function () {
        var scroll = $(window).scrollTop();
        if (scroll >= 80) {
            $("#site-header").addClass("nav-fixed");
        } else {
            $("#site-header").removeClass("nav-fixed");
        }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
        $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
        if ($(window).width() > 991) {
            $("header").removeClass("active");
        }
        $(window).on("resize", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
        });
    });
</script>
<script src="assets_1/js/bootstrap.min.js"></script>