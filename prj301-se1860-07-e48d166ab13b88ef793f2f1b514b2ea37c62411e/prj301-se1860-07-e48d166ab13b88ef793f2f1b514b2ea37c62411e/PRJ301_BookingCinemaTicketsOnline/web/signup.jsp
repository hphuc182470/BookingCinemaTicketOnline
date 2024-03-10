<%-- 
    Document   : signup
    Created on : Jan 28, 2024, 1:17:12 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
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
        <link rel="icon" type="image/png" href="img/logo.jpg" sizes="32x32">
        <link rel="apple-touch-icon" href="icon/favicon-32x32.png">
        <link rel="apple-touch-icon" sizes="72x72" href="icon/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="icon/apple-touch-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="144x144" href="icon/apple-touch-icon-144x144.png">

        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="Dmitry Volkov">
        <title>Những cậu trai thân mật</title>

    </head>
    <body class="body">
        <div class="sign section--bg" data-bg="img/section/section.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="sign__content">
                            <!-- registration form -->
                            <form name="form" action="./SignupServlet" class="sign__form" method="post" onsubmit="return validLogin();">
                                <a href="index.html" class="sign__logo">
                                    <img src="img/logo.jpg" alt="">
                                </a>

                                <div class="sign__group">
                                    <input required="true" type="email" class="sign__input" placeholder="Username" name="email">
                                </div>

                                <div class="sign__group">
                                    <input required="true" type="password" class="sign__input" placeholder="Password" name="password">
                                </div>

                                <div class="sign__group">
                                    <input required="true" type="password" class="sign__input" placeholder="Confirm Password" name="confirmPassword">
                                </div>

                                <div class="sign__group sign__group--checkbox">
                                    <input required="true" id="remember" name="remember" type="checkbox" checked="checked">
                                    <label for="remember">Tôi đồng ý với <a href="#">Điều khoản</a></label>
                                </div>
                                <!--                                <button class="sign__btn" type="button">Sign up</button>-->
                                <!--<button class="sign__btn" type="button">Đăng ký</button>-->
                                <input type="submit" class="sign__btn" value="Đăng ký">

                                <span class="sign__text">Đã có tài khoản? <a href="signin.jsp">Đăng nhập!</a></span>
                            </form>
                            <!-- registration form -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
        <script>
                                function validLogin() {
                                    var password = document.form.password.value;
                                    var confirmPassword = document.form.confirmPassword.value;

                                    if (password !== confirmPassword) {
                                        alert("Passwords do not match.");
                                        document.form.confirmPassword.focus();
                                        return false;
                                    }
                                    alert("Sign up successfully !!");
                                    return true;
                                }
        </script>
    </body>
</html>
