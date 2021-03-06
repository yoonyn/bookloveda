<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    
<%@ page import="book.model.*" %>

<c:set value="${ vo }" var="vo" />


<!DOCTYPE html>
<html lang="en">
  <head>
  
	<script src="http://code.jquery.com/jquery-latest.js"></script> 
	
	
	
    <title>BookLove多 - deal Update Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
    
    
      <link rel="stylesheet" href="assets/css/style.css">
  </head>
  <body>
  


  	<div class="wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-6 d-flex align-items-center">
						<p class="mb-0 phone pl-md-2">
							<a href="#" class="mr-2"><span class="fa fa-phone mr-1"></span> 010-2222-2222</a> 
							<a href="#"><span class="fa fa-paper-plane mr-1"></span> bookloveda@gmail.com</a>
						</p>
					</div>
					<div class="col-md-6 d-flex justify-content-md-end">
						<div class="social-media mr-4">
			    		<p class="mb-0 d-flex">
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
			    		</p>
		        </div>
		        <div class="reg">
		        <c:if test="${ sessionScope.memID != null }">
		        <p class="mb-0"><font color="#33FF33">${memID }</font> &nbsp;&nbsp;&nbsp;<a href="./logout.book">Log Out</a></p>
		        </c:if>
		        <c:if test="${ sessionScope.memID == null }">
		        	<p class="mb-0"><a href="./signUp.book" class="mr-2">Sign Up</a> <a href="./loginForm.book">Log In</a></p>
		        </c:if>
		        </div>
					</div>
				</div>
			</div>
		</div>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="home.book">BookLove <span>多</span></a>
<!-- 	      
	      <div class="order-lg-last btn-group">
          <a href="#" class="btn-cart dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          	<span class="flaticon-shopping-bag"></span>
          	<div class="d-flex justify-content-center align-items-center"><small>3</small></div>
          </a>
          <div class="dropdown-menu dropdown-menu-right">
				    <div class="dropdown-item d-flex align-items-start" href="#">
				    	<div class="img" style="background-image: url(booklove/images/prod-1.jpg);"></div>
				    	<div class="text pl-3">
				    		<h4>Bacardi 151</h4>
				    		<p class="mb-0"><a href="#" class="price">$25.99</a><span class="quantity ml-3">Quantity: 01</span></p>
				    	</div>
				    </div>
				    <div class="dropdown-item d-flex align-items-start" href="#">
				    	<div class="img" style="background-image: url(booklove/images/prod-2.jpg);"></div>
				    	<div class="text pl-3">
				    		<h4>Jim Beam Kentucky Straight</h4>
				    		<p class="mb-0"><a href="#" class="price">$30.89</a><span class="quantity ml-3">Quantity: 02</span></p>
				    	</div>
				    </div>
				    <div class="dropdown-item d-flex align-items-start" href="#">
				    	<div class="img" style="background-image: url(booklove/images/prod-3.jpg);"></div>
				    	<div class="text pl-3">
				    		<h4>Citadelle</h4>
				    		<p class="mb-0"><a href="#" class="price">$22.50</a><span class="quantity ml-3">Quantity: 01</span></p>
				    	</div>
				    </div>
				    <a class="dropdown-item text-center btn-link d-block w-100" href="cart.html">
				    	View All
				    	<span class="ion-ios-arrow-round-forward"></span>
				    </a>
				  </div>
        </div> -->

	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="home.book" class="nav-link">Home</a></li>
	         
	          <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Resell</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="./bookDealList.book?category=1">문학</a>
                <a class="dropdown-item" href="./bookDealList.book?category=2">인문</a>
                <a class="dropdown-item" href="./bookDealList.book?category=3">사회/과학/예술</a>
                <a class="dropdown-item" href="./bookDealList.book?category=4">학습/수험서/자격증</a>
                <a class="dropdown-item" href="./bookDealList.book?category=5">만화/외국서적</a>
                <a class="dropdown-item" href="./bookDealList.book?category=6">기타</a>
              </div>
            </li>
             <li class="nav-item"><a href="./bookReviewList.book" class="nav-link">Review</a></li>
	          <li class="nav-item"><a href="./BookOfflineList.book" class="nav-link">Club-Offline</a></li>
	          <c:if test="${ sessionScope.memID != null }">
	          	<li class="nav-item"><a href="./contact.book" class="nav-link">My Page</a></li>
		        </c:if>
		        <c:if test="${ sessionScope.memID == null }">
		        <li class="nav-item"><a href="./loginForm.book" class="nav-link">My Page</a></li>
		        </c:if>
		        <li class="nav-item"><a href="./search.book" class="nav-link"><img alt="search" src="images/search2.png" width="20"></a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_22.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="home.book">Home <i class="fa fa-chevron-right"></i></a></span> <span><a href="product.html">Resell <i class="fa fa-chevron-right"></i></a></span> <span>${ vo.d_category } <i class="fa fa-chevron-right"></i></span></p>
            <h2 class="mb-0 bread">SUBJECT : ${ vo.d_subject }</h2>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
			<div class="container">
			
			
				<form action="DealUpdateAction.book" method="post">
				
				<input type="hidden" name="num" value=${ vo.d_no }>
				
				
								<div  style="width:1100px; background-color:white;  ">
								
									<div  style="width:1100px; background-color:white;padding: 50px;  ">
										<h3 class="mb-4">Resell</h3>
										<form method="POST" id="contactForm" name="contactForm" class="contactForm">
											<div class="row">
												
												<div class="col-md-12" style="padding-bottom: 10px;">
													<div class="form-group">
														<label class="label" for="subject">Subject</label>
														
														
				<input type="text"class="form-control"name="d_subject"id="subject" value="${ vo.d_subject }" required>
													</div>
												</div>
												
												
												<div class="col-md-6"style="padding-bottom: 10px;">
													<div class="form-group">
														<label class="label" for="name">MEMBER ID</label><br>
														 ${ vo.m_id }
													</div>
												</div>
												<div class="col-md-6"style="padding-bottom: 10px;"> 
													<div class="form-group">
														<label class="label" for="email">Category</label><br>
														
														<c:if test="${ vo.d_category == 1 }">
														<select name="d_category">
															<option value="1" selected="selected"> 문학 </option>
															<option value="2"> 인문 </option>
															<option value="3"> 사회/과학/예술 </option>
															<option value="4"> 학습/수험서/자격증 </option>
															<option value="5"> 만화/외국서적 </option>
															<option value="6"> 또 기타</option>
														</select>
														</c:if>
														
														<c:if test="${ vo.d_category == 2 }">
														<select name="d_category">
															<option value="1"> 문학 </option>
															<option value="2" selected="selected"> 인문 </option>
															<option value="3"> 사회/과학/예술 </option>
															<option value="4"> 학습/수험서/자격증 </option>
															<option value="5"> 만화/외국서적 </option>
															<option value="6"> 또 기타</option>
														</select>
														</c:if>
														
														<c:if test="${ vo.d_category == 3 }">
														<select name="d_category">
															<option value="1"> 문학 </option>
															<option value="2"> 인문 </option>
															<option value="3" selected="selected"> 사회/과학/예술 </option>
															<option value="4"> 학습/수험서/자격증 </option>
															<option value="5"> 만화/외국서적 </option>
															<option value="6"> 또 기타</option>
														</select>
														</c:if>
														
														<c:if test="${ vo.d_category == 4 }">
														<select name="d_category">
															<option value="1"> 문학 </option>
															<option value="2"> 인문 </option>
															<option value="3"> 사회/과학/예술 </option>
															<option value="4" selected="selected"> 학습/수험서/자격증 </option>
															<option value="5"> 만화/외국서적 </option>
															<option value="6"> 또 기타</option>
														</select>
														</c:if>
														
														<c:if test="${ vo.d_category == 5 }">
														<select name="d_category">
															<option value="1"> 문학 </option>
															<option value="2"> 인문 </option>
															<option value="3"> 사회/과학/예술 </option>
															<option value="4"> 학습/수험서/자격증 </option>
															<option value="5" selected="selected"> 만화/외국서적 </option>
															<option value="6"> 또 기타</option>
														</c:if>
														
														<c:if test="${ vo.d_category == 6 }">
														<select name="d_category">
															<option value="1"> 문학 </option>
															<option value="2"> 인문 </option>
															<option value="3"> 사회/과학/예술 </option>
															<option value="4"> 학습/수험서/자격증 </option>
															<option value="5"> 만화/외국서적 </option>
															<option value="6" selected="selected"> 또 기타</option>
														</select>
														</c:if>
													
													
													</div>
												</div>
												
												<div class="col-md-6"style="padding-bottom: 10px;"> 
													<div class="form-group">
														<label class="label" for="email">METHOD</label><br>										
															
														<c:if test="${ vo.d_shape == 1 }">
														<input type="radio" checked="checked" name="d_shape" value="1"> 택배거래
														<input type="radio" name="d_shape" value="2"> 직거래
														</c:if>
														
														<c:if test="${ vo.d_shape == 2 }">
														<input type="radio" name="d_shape" value="1"> 택배거래
														<input type="radio" checked="checked" name="d_shape" value="2"> 직거래
														</c:if>
													</div>
												</div>
												
												<div class="col-md-6"style="padding-bottom: 10px;"> 
													<div class="form-group">
														<label class="label" for="email">TRADE STATE</label><br>
															<c:if test="${ vo.d_complete == 1 }">
														<input type="radio" checked="checked" name="d_complete" value="1"> 판매중
														<input type="radio" name="d_complete" value="2"> 판매완료
														</c:if>
														
														<c:if test="${ vo.d_complete == 2 }">
														<input type="radio" name="d_complete" value="1"> 판매중
														<input type="radio" checked="checked"  name="d_complete" value="2"> 판매완료
														</c:if>
													</div>
												</div>
												
												<div class="col-md-6"style="padding-bottom: 10px;"> 
													<div class="form-group">
														<label class="label" for="email">BOOK STATE</label><br>
															<c:if test="${ vo.d_state == 1 }">
															<input type="radio" checked="checked"  name="d_state" value="1">★
															<input type="radio" name="d_state" value="2">★★
															<input type="radio" name="d_state" value="3">★★★
															<input type="radio" name="d_state" value="4">★★★★
															<input type="radio" name="d_state" value="5">★★★★★
														</c:if>
														
														<c:if test="${ vo.d_state == 2 }">
															<input type="radio" name="d_state" value="1">★
															<input type="radio" checked="checked"  name="d_state" value="2">★★
															<input type="radio" name="d_state" value="3">★★★
															<input type="radio" name="d_state" value="4">★★★★
															<input type="radio" name="d_state" value="5">★★★★★
														</c:if>
														
														<c:if test="${ vo.d_state == 3 }">
															<input type="radio" name="d_state" value="1">★
															<input type="radio" name="d_state" value="2">★★
															<input type="radio" checked="checked"  name="d_state" value="3">★★★
															<input type="radio" name="d_state" value="4">★★★★
															<input type="radio" name="d_state" value="5">★★★★★
														</c:if>
														
														<c:if test="${ vo.d_state == 4 }">
															<input type="radio" name="d_state" value="1">★
															<input type="radio" name="d_state" value="2">★★
															<input type="radio" name="d_state" value="3">★★★
															<input type="radio" checked="checked"  name="d_state" value="4">★★★★
															<input type="radio" name="d_state" value="5">★★★★★
														</c:if>
														
														<c:if test="${ vo.d_state == 5 }">
															<input type="radio" name="d_state" value="1">★
															<input type="radio" name="d_state" value="2">★★
															<input type="radio" name="d_state" value="3">★★★
															<input type="radio" name="d_state" value="4">★★★★
															<input type="radio" checked="checked"  name="d_state" value="5">★★★★★
														</c:if>
														
													</div>
												</div>
												<div class="col-md-6"style="padding-bottom: 10px;"> 
													<div class="form-group">
														<label class="label" for="email">PRICE</label>
														<input type="text" class="form-control" name="d_price" id=d_price  value="${ vo.d_price }" required>
													</div>
												</div>
												
												<div class="col-md-6"style="padding-bottom: 10px;"> 
													<div class="form-group">
														<label class="label" for="email">IMG FILE</label><br>
														
														
														<c:if test="${ vo.d_state_image != null }">
																<a href="./dealUpload/${vo.d_state_image}" style="color:#000;">
																${vo.d_state_image}
																</a>
														</c:if>
												
												
														<c:if test="${ vo.d_state_image == null }">
														<input name="d_state_image" type="file"/>
														</c:if>
														
														
													</div>
												</div>
																				
											
												
												<div class="col-md-12"style="padding-bottom: 10px;">
													<div class="form-group">
														<label class="label" for="#">CONTENT</label>
														<textarea name="d_content" class="form-control" id="d_content" cols="30" rows="10" required> ${ vo.d_content }</textarea>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group" align="center">
														<input type="submit" value="UPDATE" class="btn btn-primary">
														<div class="submitting"></div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
				
				
				</form>
				
				
				
				
			</div>
		</section>

    <footer class="ftco-footer">
      <div class="container">
        <div class="row mb-5">
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2 logo"><a href="#">Liquor <span>Store</span></a></h2>
              <p>Far far away, behind the word mountains, far from the countries.</p>
              <ul class="ftco-footer-social list-unstyled mt-2">
                <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">My Accounts</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>My Account</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Register</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Log In</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>My Order</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>About us</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Catalog</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Contact us</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Term &amp; Conditions</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Quick Link</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>New User</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Help Center</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Report Spam</a></li>
                <li><a href="#"><span class="fa fa-chevron-right mr-2"></span>Faq's</a></li>
              </ul>
            </div>
          </div>
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon fa fa-map marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon fa fa-paper-plane pr-4"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container-fluid px-0 py-5 bg-black">
      	<div class="container">
      		<div class="row">
	          <div class="col-md-12">
		
	            <p class="mb-0" style="color: rgba(255,255,255,.5);"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
	  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
	          </div>
	        </div>
      	</div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>