<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>


<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kumar Hotel - Best Hotel in class</title>
    <!-- Google fonts -->
    <link href="//fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style-starter.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
    <!-- for swiper slider  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/swiper-bundle.min.css">

    <!-- fancy box  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/jquery.fancybox.min.css">
    <!-- custom css  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/login.css">
</head>

<body>


    <!-- header -->
    <header id="site-header" class="fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a th:href="@{/home}" class="navbar-brand">
<!--                    <i class="fas fa-graduation-cap"></i>Eazy School-->
                    <img src="${pageContext.request.contextPath}/resources/assets/images/logo.png" width="160" height="36" alt="Logo">
                </a>
                <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                </button>
                
                <div class="collapse navbar-collapse" id="navbarResponsive">
                
			<ul class="navbar-nav ms-auto my-2 my-lg-0 navbar-nav-scroll">
				<li class="nav-item active"><a class="nav-link" href="<c:url value="/welcome"/>">Home
				</a></li>
				<c:if test="${sessionScope.user == null}">
				
				<li class="nav-item"><a class="nav-link"
						href="<c:url value="/ctl/product/user/search"/>">Product</a></li>
				
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/login"/>">Login</a></li>

					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/signUp"/>">SignUp</a></li>

					<li class="nav-item"><a class="nav-link" href="<c:url value="/aboutUs"/>">About</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/contactUs"/>">Contact</a>
					</li>
				</c:if>

				<c:if test="${sessionScope.user != null}">

					<c:if test="${sessionScope.user.roleId == 1}">
					
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="dropdown01"
							data-bs-toggle="dropdown" aria-expanded="false">Category</a>
							<ul class="dropdown-menu" aria-labelledby="dropdown01">
								<li><a class="dropdown-item"
									href="<c:url value="/ctl/category"/>">Add Category</a></li>
								<li><a class="dropdown-item"
									href="<c:url value="/ctl/category/search"/>">Category
										Report</a></li>

							</ul></li>
							
							<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="dropdown01"
							data-bs-toggle="dropdown" aria-expanded="false">Product</a>
							<ul class="dropdown-menu" aria-labelledby="dropdown01">
								<li><a class="dropdown-item"
									href="<c:url value="/ctl/product"/>">Add Product</a></li>
								<li><a class="dropdown-item"
									href="<c:url value="/ctl/product/search"/>">Product
										Report</a></li>

							</ul></li>
							
						<li class="nav-item"><a class="nav-link"
						href="<c:url value="/ctl/order/search"/>">Orders</a></li>
						
							<!-- 
							<li class="nav-item">
							<a class="nav-link" href="<c:url value="/ctl/manage"/>">
							<input type="submit" class="nav-link" value="Manage Account" />
							</a>
							</li>
							 -->
							
					</c:if>

					<c:if test="${sessionScope.user.roleId == 2}">
						<li class="nav-item"><a class="nav-link"
						href="<c:url value="/ctl/product/user/search"/>">Product</a></li>
						
						<li class="nav-item"><a class="nav-link"
						href="<c:url value="/ctl/cart/search"/>">Cart</a></li>
						
					</c:if>


				</c:if>


				<c:if test="${sessionScope.user != null}">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/login"/>">Logout</a></li>
				</c:if>
			</ul>
		</div>
              
            </nav>
        </div>
    </header>
    <!-- //header -->


    <!-- Js scripts -->
    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fas fa-level-up-alt" aria-hidden="true"></span>
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
    <!-- //move top -->

    <!-- common jquery plugin -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.3.1.min.js"></script>
    <!-- //common jquery plugin -->

    <!-- /counter-->
    <script src="${pageContext.request.contextPath}/resources/assets/js/counter.js"></script>
    <!-- //counter-->

    <!-- theme switch js (light and dark)-->
    <script src="${pageContext.request.contextPath}/resources/assets/js/theme-change.js"></script>
    <!-- //theme switch js (light and dark)-->

    <!-- MENU-JS -->
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
    <!-- //MENU-JS -->

    <!-- disable body scroll which navbar is in active -->
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <!-- //disable body scroll which navbar is in active -->

    <!-- bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
    <!-- //bootstrap -->
    <!-- //Js scripts -->

    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery-3.5.1.min.js"></script>
    <!-- bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/popper.min.js"></script>

    <!-- fontawesome  -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/font-awesome.min.js"></script>

    <!-- swiper slider  -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/swiper-bundle.min.js"></script>

    <!-- mixitup -- filter  -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.mixitup.min.js"></script>

    <!-- fancy box  -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.fancybox.min.js"></script>

    <!-- parallax  -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/parallax.min.js"></script>

    <!-- gsap  -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/gsap.min.js"></script>

    <!-- scroll trigger  -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/ScrollTrigger.min.js"></script>
    <!-- scroll to plugin  -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/ScrollToPlugin.min.js"></script>
    <!-- rellax  -->
    <!-- <script src="assets/js/rellax.min.js"></script> -->
    <!-- <script src="assets/js/rellax-custom.js"></script> -->
    <!-- smooth scroll  -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/smooth-scroll.js"></script>
    <!-- custom js  -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
    
</body>
</html>
