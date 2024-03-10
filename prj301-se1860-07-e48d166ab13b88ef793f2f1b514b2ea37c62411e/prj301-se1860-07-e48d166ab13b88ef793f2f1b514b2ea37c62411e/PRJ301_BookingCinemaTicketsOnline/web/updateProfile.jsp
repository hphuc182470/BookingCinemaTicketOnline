<%-- 
    Document   : updateProfile
    Created on : Jan 29, 2024, 10:10:20 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Những Cậu Trai Thân Mật</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/stylehome.css">

        <link href="./css/member.css" rel="stylesheet">
    </head>

    <body>
        <c:set value="${sessionScope.account}" var="account" />  
        <div class="nav-header">
            <nav class="nav-container">
                <a href="userWeb-page.jsp" class="nav-logo"><img src="images/logo.jpg" alt="logo"></a>

                <div class="nav-menu" id="nav-menu">
                    <ul class="nav-list">
                        <li class="nav-item"><a href="#" class="nav-link">Phim</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Lịch Chiếu</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Khuyến Mãi</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Hỏi & Đáp</a></li>
                    </ul>

                    <!-- Close button -->
                    <div class="nav-close" id="nav-close">
                        <i class="ri-close-line"></i>
                    </div>
                </div>

                <div class="nav-actions">
                    <!-- Seach button -->
                    <i class="ri-search-line nav-search" id="search-btn"></i>

                    <!-- Login button -->
                    <a href="login.html"><i class="ri-user-line nav-login" id="login-btn"></i></a>

                    <!-- Toggle button -->
                    <div class="nav-toggle" id="nav-toggle">
                        <i class="ri-menu-line"></i>
                    </div>
                </div>
            </nav>

        </div>
        <div class="">

            <div class="body-content col-md-12">
                <div class="box1">
                    <h1 CLASS="title1">THÔNG TIN TÀI KHOẢN</h1>   
                    <div class="body1 col-md-6">
                        <ul class="inf_list">
                            <li><b>Email: ${account.getUserName()} </b></li>
                            <li><b>Họ và tên: ${account.fullName} </b></li>
                            <li><b>Giới tính: ${account.gender}</b></li>
                            <li><b>Số điện thoại: ${account.phoneNumber}</b></li>
                        </ul>
                    </div>
                </div>

                <div class="box2">
                    <h1 CLASS="title1">HOẠT ĐỘNG VỚI RẠP</h1>
                    <div class="body2 col-md-6">
                        <p><b>Loại Thẻ:</b></p>
                        <c:set var="sessionMember" value="${sessionScope.sessionMember}" /> 
                        <c:choose>
                            <c:when test="${sessionMember.getTotalSpend() > 5000}">
                                <img style="height: 200px; width: 200px" src="images/membershipcard.jpg" alt="Image 1" />
                            </c:when>
                            <c:otherwise>
                                <img src="image2.jpg" alt="Image 2" />
                            </c:otherwise>
                        </c:choose>
                    </div>

                </div>
            </div>

            <div class="modify-user">

                <a style="display: inline-block;" onclick="openForm()" id="modify-hide">Thay đổi thông tin</a>

            </div>

            <div class="user-center">
                <div class="user-form" id="myForm">
                    <h3 class="title1">Chỉnh sửa thông tin cá nhân</h3>
                    <form action="./UpdateProfileServlet" method="post" id="modify-top" data-gtm-form-interact-id="5">
                        <div class="require-col">
                            <div class="input-text email">
                                <!-- <span class="focus-text hide">EMAIL (*)</span> -->
                                <input readonly="readonly" id="update_email" name="email" type="text" value="${account.email}"
                                       placeholder="EMAIL (*)">
                            </div>
                            <div class="first-row col-md-12">
                                <div class="input-text name">
                                    <!-- <span class="focus-text hide">HỌ TÊN (*)</span> -->
                                    <input required="true" id="update_name" name="fullName" type="text" placeholder="HỌ TÊN">
                                </div>
                                <!--                                <div class="input-text birth">
                                                                     <span class="focus-text hide">DD/MM/YYYY ( Ngày sinh*)</span> 
                                                                    <input id="update_birthday" name="birthday" type="text" value=""
                                                                           placeholder="DD/MM/YYYY ( Ngày sinh*)">
                                                                </div>-->
                            </div>
                            <div class="first-row col-md-12">
                                <div class="input-text tel">
                                    <!-- <span class="focus-text hide">ĐIỆN THOẠI (*)</span> -->
                                    <input required="true" id="update_phone" name="phoneNumber" type="text" 
                                           placeholder="ĐIỆN THOẠI">
                                </div>
                            </div>
                            <div class="require-col">
                                <label class="gender"><input type="radio" name="gender" value="Nam" checked=""><span
                                        class="gender-name">Nam</span><span class="gender-shape"></span></label>
                                <label class="gender"><input type="radio" name="gender" value="Nữ"><span
                                        class="gender-name">Nữ</span><span class="gender-shape"></span></label>
                            </div>
                            <div class="input-but">
                                <input type="button" class="modify-user-hide" value="Đóng" onclick="closeForm()"
                                       id="show-btn">
                                <input type="submit" value="Lưu" id="btn-save-top">

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <div class="footer">
            <p>Email : andmse182449@gmail.com</p>
            <p>Address: 100 Dien Bien Phu,District 3, HCMC</p>
            <h5>&copy; Copyright 2021. Chanel.com</h5>
        </div>


        <script src="js/jsCuaAn.js"></script>

    </body>
</html>
