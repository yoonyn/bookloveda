<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>BookLove多 - home</title>
  
    <script type="text/javascript">
	function product(){		/* <a href="javascript:product()"> */
		location.href="bookDealList.book"
	}
	</script>
    
    
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,700;0,800;1,200;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    
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
				    	<div class="img" style="background-image: url(images/prod-1.jpg);"></div>
				    	<div class="text pl-3">
				    		<h4>Bacardi 151</h4>
				    		<p class="mb-0"><a href="#" class="price">$25.99</a><span class="quantity ml-3">Quantity: 01</span></p>
				    	</div>
				    </div>
				    <div class="dropdown-item d-flex align-items-start" href="#">
				    	<div class="img" style="background-image: url(images/prod-2.jpg);"></div>
				    	<div class="text pl-3">
				    		<h4>Jim Beam Kentucky Straight</h4>
				    		<p class="mb-0"><a href="#" class="price">$30.89</a><span class="quantity ml-3">Quantity: 02</span></p>
				    	</div>
				    </div>
				    <div class="dropdown-item d-flex align-items-start" href="#">
				    	<div class="img" style="background-image: url(images/prod-3.jpg);"></div>
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
        </div> 
        
        -->

	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="home.book" class="nav-link">Home</a></li>
	          
	          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle"id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Resell</a>
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
    
    <div class="hero-wrap" style="background-image: url('images/bg_22.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-8 ftco-animate d-flex align-items-end">
          	<div class="text w-100 text-center">
	            <h1 class="mb-4">Good <span>Book</span> for Good <span>Moments</span>.</h1>
	            <p>
	            <c:if test="${ sessionScope.memID != null }">
	            <a href="DealWrite.book" class="btn btn-primary py-2 px-4" style="padding: 1.5rem !important;">Resell Now</a>
		        </c:if>
		        <c:if test="${ sessionScope.memID == null }">
		        <a href="./loginForm.book" class="btn btn-primary py-2 px-4" style="padding: 1.5rem !important;">Resell Now</a>
		        </c:if>
	            <a href="./bookDealList.book?category=1" class="btn btn-white btn-outline-white py-2 px-4"style="padding: 1.5rem !important;">Read more</a>
	            </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-intro">
    	<div class="container">
    		<div class="row no-gutters">
    			<div class="col-md-4 d-flex">
    				<div class="intro d-lg-flex w-100 ftco-animate">
    					<div class="icon">
    						<img alt="service1" src="images/m_service1.png" width="70" style="padding-top: 30px;">
    					</div>
    					<div class="text">
    						<h2>RESELL SERVICE</h2>
    						<p class="qaz" style="color: white;">You can sell books, a movie dvd that you bought through our service.</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-4 d-flex">
    				<div class="intro color-1 d-lg-flex w-100 ftco-animate">
    					<div class="icon">
    						<img alt="service2" src="images/m_service2.png" width="70" style="padding-top: 30px;">
    					</div>
    					<div class="text">
    						<h2>COMMUNITY SERVICE</h2>
    						<p class="qaz"style="color: white;">You can share your appreciation after reading books through our service.</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-md-4 d-flex">
    				<div class="intro color-2 d-lg-flex w-100 ftco-animate">
    					<div class="icon">
    						<img alt="service1" src="images/m_service3.png" width="70" style="padding-top: 30px;">
    					</div>
    					<div class="text">
    						<h2>CLUB SERVICE</h2>
    						<p class="qaz" style="color: white;">You can join a social club to share your appreciation.</p>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section ftco-no-pb">
			<div class="container">
				<div class="row">
					<div class="col-md-6 img img-3 d-flex justify-content-center align-items-center" style="background-image: url(images/aa1.jpg);">
					</div>
					<div class="col-md-6 wrap-about pl-md-5 ftco-animate py-5">
	          <div class="heading-section">
	          	<span class="subheading">Since 2020</span>
	            <h2 class="mb-4">Desire Meets A New Experience</h2>

	            <p>BOOK LOVE DA </p>
	            <p>Kosta 200th team project team2. </p>
	            <p>welcome! our book resell - community web site!</p>
	            <p class="year">
		            <span>Products : </span>
	            	<strong class="number" data-number="1115">0</strong>
	            	<span> ! </span>
	            </p>
	          </div>

					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section ftco-no-pb">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img"  style="background-image: url(images/ca1.jpg);" onclick="location.href='./bookDealList.book?category=1'"></div>
							<a href="./bookDealList.book?category=1">
							<h3>문학</h3>
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							
							<div class="img" style="background-image: url(images/ca2.jpg);" onclick="location.href='./bookDealList.book?category=2'"></div>
							<a href="./bookDealList.book?category=2">
							<h3>인문</h3>
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/ca3.jpg);"onclick="location.href='./bookDealList.book?category=3'"></div>
							<a href="./bookDealList.book?category=3">
							<h3>사회/과학/예술</h3>
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/ca4.jpg);"onclick="location.href='./bookDealList.book?category=4'"></div>
							<a href="./bookDealList.book?category=4">
							<h3>학습/수험서/자격증</h3>
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/ca5.jpg);"onclick="location.href='./bookDealList.book?category=5'"></div>
							<a href="./bookDealList.book?category=5">
							<h3>만화/외국서적</h3>
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-md-4 ">
						<div class="sort w-100 text-center ftco-animate">
							<div class="img" style="background-image: url(images/ca6.jpg);"onclick="location.href='./bookDealList.book?category=6'"></div>
							
							<a href="./bookDealList.book?category=6">
							<h3>기타</h3>
							</a>
						</div>
					</div>

				</div>
			</div>
		</section>

		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center pb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading" id>Our Reselling Service</span>
            <h2>Recent Reselling Products</h2>
          </div>
        </div>
				<div class="row">
				
				<c:forEach var="vo" items="${ deallist }">
				
				
					
					
					<div class="col-md-3 d-flex">
						<div class="product ftco-animate">
						
						<c:if test="${vo.d_state_image != null }">
							<div class="img d-flex align-items-center justify-content-center" style="background-image: url(./dealUpload/${ vo.d_state_image });" >
				
						</c:if>	
						
						
				
								<div class="desc">
									<p class="meta-prod d-flex">
										<a href="./DealDetailAction.book?num=${ vo.d_no }" class="d-flex align-items-center justify-content-center"><span class="flaticon-shopping-bag"></span></a>
										<a href="./DealDetailAction.book?num=${ vo.d_no }" class="d-flex align-items-center justify-content-center"><span class="flaticon-heart"></span></a>
										<a href="./DealDetailAction.book?num=${ vo.d_no }" class="d-flex align-items-center justify-content-center"><span class="flaticon-visibility"></span></a>
									</p>
								</div>
							</div>
							<div class="text text-center">
								<span class="new">New Arrival</span>
								
								
								<c:if test="${vo.d_category == 1 }">
									<span class="category">문학</span>
								</c:if>
								<c:if test="${vo.d_category == 2 }">
									<span class="category">인문</span>
								</c:if>
								<c:if test="${vo.d_category == 3 }">
									<span class="category">사회/과학/예술</span>
								</c:if>
								<c:if test="${vo.d_category == 4 }">
									<span class="category">수험서/자격증</span>
								</c:if>
								<c:if test="${vo.d_category == 5 }">
									<span class="category">만화/외국서적</span>
								</c:if>
								<c:if test="${vo.d_category == 6 }">
									<span class="category">기타</span>
								</c:if>
								
								
								<%-- <span class="category">${ vo.d_category }</span> --%>
								<h2>${ vo.d_subject }</h2>
								<span class="price"><fmt:formatNumber value="${ vo.d_price }" pattern="#,###" /> 원</span>
							</div>
						</div>
					</div>
					
					
				 </c:forEach>	
					
					
					

				</div>
				<div class="row justify-content-center">
					<div class="col-md-4">
						<a href="./bookDealList.book?category=1" class="btn btn-primary d-block">View All Resell Products <span class="fa fa-long-arrow-right"></span></a>
					</div>
				</div>
			</div>
		</section>
  
    


		
    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Club - offline</span>
            <h2>Recent Club</h2>
          </div>
        </div>
        <div class="row d-flex">
          
          
           <c:forEach var="co" items="${ clublist }">
          
          
          
          <div class="col-lg-6 d-flex align-items-stretch ftco-animate">
          	<div class="blog-entry d-flex">
          	
          	<c:if test="${co.o_address != null }">
          
	          	<a href="./OfflineViewAction.book?num=${ co.o_no }" class="block-20 img" style="background-image: url(./dealUpload/${ co.o_address });" >
	              </a>
			</c:if>			
			<c:if test="${co.o_address == null }">
				<a href="./OfflineViewAction.book?num=${ co.o_no }" class="block-20 img" style="background-image: url('images/noimage.jpg');">
	              </a>
			</c:if>
          	
         
     
              <div class="text p-4 bg-light">
              	<div class="meta">
              		<p><span class="fa fa-calendar"></span> ${ co.o_date }</p>
              	</div>
                <h3 class="heading mb-3"><a href="./OfflineViewAction.book?num=${ co.o_no }">${ co.o_subject }</a></h3>
                <p>...</p>
                <a href="./OfflineViewAction.book?num=${ co.o_no }" class="btn-custom">Continue <span class="fa fa-long-arrow-right"></span></a>

              </div>
            </div>
          </div>
         
     </c:forEach>
     
     
     
     
          
        </div>
        
        <div class="row justify-content-center">
			<div00/ class="col-md-4">
			<br><br><br>
				<a href="./BookOfflineList.book" class="btn btn-primary d-block">View All offline Club <span class="fa fa-long-arrow-right"></span></a>
			</div>
		</div>
				
				
      </div> 0
    </section>	

    <footer class="ftco-footer">
      <div class="container">
        <div class="row mb-5">
          <div class="col-sm-12 col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2 logo"><a href="#">BOOKLOVE <span>多</span></a></h2>
              <p>kostaedu 200th midproject.</p>
              <p>team2 memeber : </p>
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
                <li><a href=""><span class="fa fa-chevron-right mr-2"></span>Log In</a></li>
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
	                <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">010 2222 2222</span></a></li>
	                <li><a href="#"><span class="icon fa fa-paper-plane pr-4"></span><span class="text">bookloveda@gmail.com</span></a></li>
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
	  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This website is made with <i class="fa fa-heart color-danger" aria-hidden="true"></i> by <a href="#" target="_blank">BOOKLOVEDA.COM</a>
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