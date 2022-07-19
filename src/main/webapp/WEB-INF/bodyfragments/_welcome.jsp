<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>






    <!-- header -->
    <div th:replace="header :: header"></div>
    <!-- //header -->

    <!-- banner section -->
    <section class="main-banner" id="home">
        <div class="js-parallax-scene">
            <div class="banner-shape-1 w-100" data-depth="0.30">
                <img src="${pageContext.request.contextPath}/resources/assets/images/berry.png" alt="">
            </div>
            <div class="banner-shape-2 w-100" data-depth="0.25">
                <img src="${pageContext.request.contextPath}/resources/assets/images/leaf.png" alt="">
            </div>
        </div>
        <div class="sec-wp">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="banner-text">
                            <h1 class="h1-title">
                                Welcome to
                                <span>KUMAR</span>
                                HOTEL
                            </h1>
                            
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="banner-img-wp">
                            <div class="banner-img" style="background-image: url(${pageContext.request.contextPath}/resources/assets/images/main-b.jpg);">
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //banner section -->

    <!-- home 4grids block -->
    <section class="services-w3l-block py-5" id="features">
        <div class="container py-md-5 py-4">
            <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
            
                <h3 class="title-style">Get Quality food </h3>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch">
                    <div class="icon-box icon-box-clr-1">
                        <div class="icon"><i class="fas fa-user-friends"></i></div>
                        <h4 class="title"><a>Expert Cook</a></h4>
                        <p>Well experienced Cook.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mt-md-0 mt-4">
                    <div class="icon-box icon-box-clr-2">
                        <div class="icon"><i class="fas fa-book-reader"></i></div>
                        <h4 class="title"><a>Quality Food</a></h4>
                        <p>Best food for you.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mt-lg-0 mt-4">
                    <div class="icon-box icon-box-clr-3">
                        <div class="icon"><i class="fas fa-user-graduate"></i></div>
                        <h4 class="title"><a>Customer Support</a></h4>
                        <p> Customer Support available for you .</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mt-lg-0 mt-4">
                    <div class="icon-box icon-box-clr-4">
                        <div class="icon"><i class="fas fa-university"></i></div>
                        <h4 class="title"><a>Best Price</a></h4>
                        <p>Best Price available for customer.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- home 4grids block -->


    
    <!-- stats block -->
    <section class="w3-stats pt-4 pb-5" id="stats">
        <div class="container pb-md-5 pb-4">
            <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
                <p class="text-uppercase">Our Statistics</p>
                <h3 class="title-style">We are Proud to Share with You</h3>
            </div>
            <div class="row text-center pt-4">
                <div class="col-md-3 col-6">
                    <div class="counter">
                        <img src="${pageContext.request.contextPath}/resources/assets/images/icon-1.png" alt="" class="img-fluid">
                        <div class="timer count-title count-number mt-sm-1" data-to="100" data-speed="1500"></div>
                        <p class="count-text">Current Customer</p>
                    </div>
                </div>
                <div class="col-md-3 col-6">
                    <div class="counter">
                        <img src="${pageContext.request.contextPath}/resources/assets/images/icon-2.png" alt="" class="img-fluid">
                        <div class="timer count-title count-number mt-3" data-to="1" data-speed="1500"></div>
                        <p class="count-text">Our Branches</p>
                    </div>
                </div>
                <div class="col-md-3 col-6 mt-md-0 mt-5">
                    <div class="counter">
                        <img src="${pageContext.request.contextPath}/resources/assets/images/icon-3.png" alt="" class="img-fluid">
                        <div class="timer count-title count-number mt-3" data-to="20" data-speed="1500"></div>
                        <p class="count-text">Total Item</p>
                    </div>
                </div>
                <div class="col-md-3 col-6 mt-md-0 mt-5">
                    <div class="counter">
                        <img src="${pageContext.request.contextPath}/resources/assets/images/icon-4.png" alt="" class="img-fluid">
                        <div class="timer count-title count-number mt-3" data-to="" data-speed="1500"></div>
                        <p class="count-text">Awards by Karnataka Government</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //stats block -->

    <!-- call block -->
    <section class="w3l-call-to-action-6">
        <div class="container py-md-5 py-sm-4 py-5">
            <div class="d-lg-flex align-items-center justify-content-between">
                <div class="left-content-call">
                    <h3 class="title-big">Call for Enquiry</h3>
                    
                </div>
                <div class="right-content-call mt-lg-0 mt-4">
                    <ul class="buttons">
                        <li class="phone-sec me-lg-4"><i class="fas fa-phone-volume"></i>
                            <a class="call-style-w3" href="tel:+1(23) 456 789 0000">+91 9535587260</a>
                        </li>
                        <li><a th:href="@{/contact}" class="btn btn-style btn-style-2 mt-lg-0 mt-3">Call your query</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- //call block -->

    <!-- footer block -->
    <div th:replace="footer :: footer"></div>
    <!-- //footer block -->




