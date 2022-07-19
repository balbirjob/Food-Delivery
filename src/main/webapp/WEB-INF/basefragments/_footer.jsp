<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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

    <!-- footer block -->
    <footer class="w3l-footer-29-main">
        <div class="footer-29 pt-5 pb-4">
            <div class="container pt-md-4">
                <div class="row footer-top-29">
                    <div class="col-lg-4 col-md-6 footer-list-29">
                        <h6 class="footer-title-29">Contact Info </h6>
                        <p class="mb-2 pe-xl-5">Address : Kumar Hotel, Beside Ram Mandir, 3rd Cross Rd, Hanumanthanagar, Bengaluru, Karnataka 560050.
                        </p>
                        <p class="mb-2">Phone Number : <a href="tel:+91 9533587260">+91 9533587260</a></p>
                        <p class="mb-2">Email : <a href="mailto:kumarhotel@gmail.com">kumarhotel@gmail.com</a></p>
                    </div>
                    <div class="col-lg-2 col-md-3 col-6 footer-list-29 mt-md-0 mt-4">
                        <ul>
                            <h6 class="footer-title-29">Quick Links</h6>
                            <li><a href="<c:url value="/aboutUs"/>">About Us</a></li>
                            <li><a href="<c:url value="/ctl/product/user/search"/>">Products</a></li>
                            <li><a href="<c:url value="/contactUs"/>">Contact Us</a></li>
                        </ul>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-8 footer-list-29 mt-lg-0 mt-4 ps-lg-5">
                        <h6 class="footer-title-29">Subscribe</h6>
                        <form action="#" class="subscribe d-flex" method="post">
                            <input type="email" name="email" placeholder="Email Address" required="">
                            <button class="button-style"><span class="fa fa-paper-plane"
                                    aria-hidden="true"></span></button>
                        </form>
                        <p class="mt-3">Subscribe to our mailing list and get updates to your email inbox.</p>
                    </div>
                </div>
                <!-- copyright -->
            <p class="copy-footer-29 text-center pt-lg-2 mt-5 pb-2">© 2022 Kumar Hotel. All rights reserved. Design
                    by <a href="https://w3layouts.com/" target="_blank">Balbir</a></p>
                <!-- //copyright -->
            </div>
        </div>
    </footer>
    <!-- //footer block -->



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