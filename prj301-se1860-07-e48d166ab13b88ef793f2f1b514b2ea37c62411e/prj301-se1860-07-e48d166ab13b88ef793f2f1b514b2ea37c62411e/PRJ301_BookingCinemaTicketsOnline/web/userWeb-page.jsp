<!DOCTYPE html>
<html lang="en">

    <head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600%7CUbuntu:300,400,500,700" rel="stylesheet">

        <!-- CSS -->
        <link rel="stylesheet" href="css/bootstrap-reboot.min.css">
        <link rel="stylesheet" href="css/bootstrap-grid.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <link rel="stylesheet" href="css/nouislider.min.css">
        <link rel="stylesheet" href="css/ionicons.min.css">
        <link rel="stylesheet" href="css/plyr.css">
        <link rel="stylesheet" href="css/photoswipe.css">
        <link rel="stylesheet" href="css/default-skin.css">
        <link rel="stylesheet" href="css/main.css">

        <!-- Favicons -->
        <link rel="icon" type="image/png" href="icon/favicon-32x32.png" sizes="32x32">
        <link rel="apple-touch-icon" href="icon/favicon-32x32.png">
        <link rel="apple-touch-icon" sizes="72x72" href="icon/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="icon/apple-touch-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="144x144" href="icon/apple-touch-icon-144x144.png">

        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="Dmitry Volkov">
        <title>Những cậu trai thân mật</title>
    </head>
    <body>

        <!-- HEADER -->
        <header class="header">
            <div class="header__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="header__content">
                                <!-- header logo -->
                                <a href="userWeb-page.jsp" class="header__logo">
                                    <img src="images/logo.jpg" alt="">
                                </a>
                                <!-- end header logo -->

                                <!-- header nav -->
                                <ul class="header__nav">
                                    <li class="header__nav-item">
                                        <a href="movie.jsp" class="header__nav-link">Phim</a>
                                    </li>

                                    <li class="header__nav-item">
                                        <a href="#" class="header__nav-link">Lịch chiếu</a>
                                    </li>

                                    <li class="header__nav-item">
                                        <a href="#" class="header__nav-link">Rạp & Giá</a>
                                    </li>

                                    <li class="header__nav-item">
                                        <a href="pricing.html" class="header__nav-link">Khuyến mãi</a>
                                    </li>

                                    <li class="header__nav-item">
                                        <a href="faq.html" class="header__nav-link">Hỏi & Đáp</a>
                                    </li>
                                </ul>
                                <!-- end header nav -->

                                <!-- header auth -->
                                <div class="header__auth">
                                    <button class="header__search-btn" type="button">
                                        <i class="icon ion-ios-search"></i>
                                    </button>
                                    <li class="dropdown header__nav-item">
                                        <a style=" border-radius: 100px/100px;
                                           background: black;
                                           padding: 20px;"
                                           class="dropdown-toggle header__nav-link" href="#" role="button" id="dropdownMenuMore" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa-solid fa-user"></i></a>
                                        <ul class="dropdown-menu header__dropdown-menu" aria-labelledby="dropdownMenuMore">

                                            <li><a href="LogoutServlet">Log out</a></li>
                                            <li><a href="signup.jsp">Receipt History</a></li>
                                            <li><a href="404.html">404 Page</a></li>
                                            <!--<li><a href="UpdateProfileServlet&?action=show-profile">Show Profile</a></li>-->
                                            <li><a href="LoadMemberShipServlet?action=show-profile">Show Profile</a></li>

                                        </ul>
                                    </li>
                                </div>
                                <!-- end header auth -->

                                <!-- header menu btn -->
                                <button class="header__btn" type="button">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </button>
                                <!-- end header menu btn -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- header search -->
            <form action="#" class="header__search">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="header__search-content">
                                <input type="text" placeholder="Search for a movie, TV Series that you are looking for">

                                <button type="button">search</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <!-- end header search -->
        </header>
        <!-- end header -->

        <!-- home -->
        <section class="home">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1 class="home__title"><b>PHIM</b> HOT</h1>

                        <button class="home__nav home__nav--prev" type="button">
                            <i class="icon ion-ios-arrow-round-back"></i>
                        </button>
                        <button class="home__nav home__nav--next" type="button">
                            <i class="icon ion-ios-arrow-round-forward"></i>
                        </button>
                    </div>

                    <div class="col-12">
                        <div class="owl-carousel home__carousel">
                            <div class="item">
                                <!-- card -->
                                <div class="card card--big">
                                    <div class="card__cover">
                                        <img src="img/covers/cover.jpg" alt="">
                                        <a href="#" class="card__ticket">Mua vé</a>
                                    </div>
                                    <div class="card__content">
                                        <h3 class="card__title"><a href="details1.html">I Dream in Another Language</a></h3>
                                    </div>
                                </div>
                                <!-- end card -->
                            </div>

                            <div class="item">
                                <!-- card -->
                                <div class="card card--big">
                                    <div class="card__cover">
                                        <img src="img/covers/cover2.jpg" alt="">
                                        <a href="#" class="card__ticket">Mua vé</a>
                                    </div>
                                    <div class="card__content">
                                        <h3 class="card__title"><a href="#">Benched</a></h3>
                                    </div>
                                </div>
                                <!-- end card -->
                            </div>

                            <div class="item">
                                <!-- card -->
                                <div class="card card--big">
                                    <div class="card__cover">
                                        <img src="img/covers/cover3.jpg" alt="">
                                        <a href="#" class="card__ticket">Mua vé</a>
                                    </div>
                                    <div class="card__content">
                                        <h3 class="card__title"><a href="#">Whitney</a></h3>
                                    </div>
                                </div>
                                <!-- end card -->
                            </div>

                            <div class="item">
                                <!-- card -->
                                <div class="card card--big">
                                    <div class="card__cover">
                                        <img src="img/covers/cover4.jpg" alt="">
                                        <a href="#" class="card__ticket">Mua vé</a>
                                    </div>
                                    <div class="card__content">
                                        <h3 class="card__title"><a href="#">Blindspotting</a></h3>
                                    </div>
                                </div>
                                <!-- end card -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end home -->

        <!-- content -->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- content title -->
                    <h2 class="content__title"><b>ĐẶT</b> VÉ</h2>
                    <!-- end content title -->

                    <!-- content tabs nav -->
                    <div class="filter__content">
                        <div class="filter__items">
                            <!-- filter item -->
                            <div class="filter__item" id="filter__genre">
                                <span class="filter__item-label">CHỌN PHIM</span>

                                <div class="filter__item-btn dropdown-toggle" role="navigation" id="filter-genre" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <input type="button" value="Tên phim">
                                    <span></span>
                                </div>

                                <ul class="filter__item-menu dropdown-menu scrollbar-dropdown" aria-labelledby="filter-genre">
                                    <li>phim1</li>
                                    <li>phim2</li>
                                    <li>phim3</li>			
                                </ul>
                            </div>
                            <!-- end filter item -->

                            <!-- filter item -->
                            <div class="filter__item" id="filter__quality">
                                <span class="filter__item-label">CHỌN RẠP</span>

                                <div class="filter__item-btn dropdown-toggle" role="navigation" id="filter-quality" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <input type="button" value="Tên rạp">
                                    <span></span>
                                </div>

                                <ul class="filter__item-menu dropdown-menu scrollbar-dropdown" aria-labelledby="filter-quality">
                                    <li>rạp1</li>
                                    <li>rạp2</li>
                                    <li>rạp3</li>	
                                </ul>
                            </div>
                            <!-- end filter item -->

                            <!-- filter item -->
                            <div class="filter__item" id="filter__rate">
                                <span class="filter__item-label">CHỌN NGÀY</span>

                                <div class="filter__item-btn dropdown-toggle" role="navigation" id="filter-quality" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <input type="button" value="Ngày chiếu">
                                    <span></span>
                                </div>

                                <ul class="filter__item-menu dropdown-menu scrollbar-dropdown" aria-labelledby="filter-quality">
                                    <li>ngày1</li>
                                    <li>ngày2</li>
                                    <li>ngày3</li>	
                                </ul>
                            </div>
                            <!-- end filter item -->

                            <!-- filter item -->
                            <div class="filter__item" id="filter__year">
                                <span class="filter__item-label">CHỌN GIỜ</span>

                                <div class="filter__item-btn dropdown-toggle" role="navigation" id="filter-quality" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <input type="button" value="Giờ chiếu">
                                    <span></span>
                                </div>

                                <ul class="filter__item-menu dropdown-menu scrollbar-dropdown" aria-labelledby="filter-quality">
                                    <li>giờ1</li>
                                    <li>giờ2</li>
                                    <li>giờ3</li>	
                                </ul>
                            </div>
                            <!-- end filter item -->
                        </div>

                        <!-- filter btn -->
                        <button class="filter__btn" type="button">Tìm kiếm</button>
                        <!-- end filter btn -->
                    </div>
                    <!-- end content tabs nav -->
                </div>
            </div>
        </div>

        <!-- footer -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <!-- footer list -->
                    <div class="col-12 col-md-3">
                        <h6 class="footer__title">?</h6>
                        <ul class="footer__app">
                            <li><a href="#"><img src="img/Download_on_the_App_Store_Badge.svg" alt=""></a></li>
                            <li><a href="#"><img src="img/google-play-badge.png" alt=""></a></li>
                        </ul>
                    </div>
                    <!-- end footer list -->

                    <!-- footer list -->
                    <div class="col-6 col-sm-4 col-md-3">
                        <h6 class="footer__title">?</h6>
                        <ul class="footer__list">
                            <li><a href="#">?</a></li>
                            <li><a href="#">?</a></li>
                            <li><a href="#">?</a></li>
                        </ul>
                    </div>
                    <!-- end footer list -->

                    <!-- footer list -->
                    <div class="col-6 col-sm-4 col-md-3">
                        <h6 class="footer__title">Chính sách và quy định</h6>
                        <ul class="footer__list">
                            <li><a href="#">Điều khoản sử dụng</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Bảo mật</a></li>
                        </ul>
                    </div>
                    <!-- end footer list -->

                    <!-- footer list -->
                    <div class="col-12 col-sm-4 col-md-3">
                        <h6 class="footer__title">Thông tin</h6>
                        <ul class="footer__list">
                            <li><a href="tel:+18002345678">sđt</a></li>
                            <li><a href="faq.html">Hỏi và đáp</a></li>
                        </ul>
                    </div>
                    <!-- end footer list -->
                </div>
            </div>
        </footer>
        <!-- end footer -->

        <!-- JS -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.mousewheel.min.js"></script>
        <script src="js/jquery.mCustomScrollbar.min.js"></script>
        <script src="js/wNumb.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/plyr.min.js"></script>
        <script src="js/jquery.morelines.min.js"></script>
        <script src="js/photoswipe.min.js"></script>
        <script src="js/photoswipe-ui-default.min.js"></script>
        <script src="js/main.js"></script>
    </body>

</html>