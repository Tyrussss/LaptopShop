<%-- 
    Document   : register
    Created on : 17 Sept 2021, 17:01:58
    Author     : nguye
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

	<!-- META ============================================= -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<meta name="robots" content="" />
	
	<!-- DESCRIPTION -->
	<meta name="description" content="My Learning" />
	
	<!-- OG -->
	<meta property="og:title" content="Learning online" />
	<meta property="og:description" content="EduChamp : Education HTML Template" />
	<meta property="og:image" content="" />
	<meta name="format-detection" content="telephone=no">
	
	<!-- FAVICONS ICON ============================================= -->
	<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />
	
	<!-- PAGE TITLE HERE ============================================= -->
	<title>Register</title>
	
	<!-- MOBILE SPECIFIC ============================================= -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.min.js"></script>
	<script src="assets/js/respond.min.js"></script>
 
	<![endif]-->
         
	
	<!-- All PLUGINS CSS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/assets.css">
        <link rel="stylesheet" type="text/css" href="assets/css/thanhbinhstyle.css">
	
	<!-- TYPOGRAPHY ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/typography.css">
	
	<!-- SHORTCODES ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">
	
	<!-- STYLESHEETS ============================================= -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">
        
       
	
</head>
<body id="bg">
<div class="page-wraper">
	<div id="loading-icon-bx"></div>
	<div class="account-form">
		<div class="account-head">
                     <!--style="background-image:url(assets/images/background/bg2.jpg);"-->
                     <a href="index.jsp"><img src="assets/images/background/register.jpg" width="100%" alt=""></a>
		</div>
		<div class="account-form-inner">
                    
			<div class="account-container">
                            <!--<div class="regishome"><a href="index.jsp">Home</a></div>-->
                            <br>
				<div class="heading-bx left">
					<h2 class="title-head">Register <span>Now</span></h2>
					<p>Login Your Account <a href="login.jsp">Click here</a></p>
                                        <p style="color:red">
                                        <c:if test="${not empty requestScope.errorMessage}" >
                                            ${requestScope.errorMessage}
                                        </c:if>
                                            </p>
				</div>	
				<form class="contact-bx"  action="RegisterServlet" name="form1" onsubmit="return CheckData()" method="post" >
					<div class="row placeani">
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Full Name</label>
                                                                        <input name="Fullname" type="text" id="Fullname" class="form-control">
								</div>
							</div>
						</div>
                                            
                                            <div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Date of birth</label>
                                                                        <input name="DateofBirth" type="text" onfocus="(this.type='date')" id="DateofBirth" class="form-control">
								</div>
							</div>
						</div>
                                            
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Email Address</label>
									<input name="Email" type="email" id="Email"  class="form-control">
								</div>
							</div>
						</div>
                                            
                                            <div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Phone</label>
									<input name="Phone" type="tel" id="Phone"  class="form-control">
								</div>
							</div>
						</div>
                                            
                                            <div class="col-lg-12">
							<div class="form-group">
								<div class="input-group">
									<label>Username</label>
									<input name="Username" type="text" id="Username"  class="form-control">
								</div>
							</div>
						</div>
                                            
						<div class="col-lg-12">
							<div class="form-group">
								<div class="input-group"> 
									<label>Your Password</label>
									<input name="Password" type="password" id="Password"  class="form-control">
								</div>
							</div>
						</div>
						<div class="col-lg-12 m-b30">
							<input name="submit" type="submit" value="Submit" class="btn button-md">
						</div>
						<div class="col-lg-12">
							<h6>Sign Up with Social media</h6>
							<div class="d-flex">
								<a class="btn flex-fill m-r5 facebook" href="#"><i class="fa fa-facebook"></i>Facebook</a>
								<a class="btn flex-fill m-l5 google-plus" href="#"><i class="fa fa-google-plus"></i>Google Plus</a>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- External JavaScripts -->
<script src="assets/js/binhjs.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/vendors/bootstrap/js/popper.min.js"></script>
<script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
<script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
<script src="assets/vendors/counter/waypoints-min.js"></script>
<script src="assets/vendors/counter/counterup.min.js"></script>
<script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
<script src="assets/vendors/masonry/masonry.js"></script>
<script src="assets/vendors/masonry/filter.js"></script>
<script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
<script src="assets/js/functions.js"></script>
<script src="assets/js/contact.js"></script>
<script src='assets/vendors/switcher/switcher.js'></script>
</body>

</html>
