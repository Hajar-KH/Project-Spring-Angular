<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>rento</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

      <style>


/*--------------------------------------------------------------------- File Name: responsive.css ---------------------------------------------------------------------*/


/*--------------------------------------------------------------------- File Name: style.css ---------------------------------------------------------------------*/


/*--------------------------------------------------------------------- import Fonts ---------------------------------------------------------------------*/

@import url('https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700');
@import url('https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i');
@import url('https://fonts.googleapis.com/css?family=Righteous&display=swap');

/*****---------------------------------------- 1) font-family: 'Rajdhani', sans-serif;
 2) font-family: 'Poppins', sans-serif;
 ----------------------------------------*****/


/*--------------------------------------------------------------------- import Files ---------------------------------------------------------------------*/

@import url(animate.min.css);
@import url(normalize.css);
@import url(icomoon.css);
@import url(font-awesome.min.css);
@import url(meanmenu.css);
@import url(owl.carousel.min.css);
@import url(swiper.min.css);
@import url(slick.css);
@import url(jquery.fancybox.min.css);
@import url(jquery-ui.css);
@import url(nice-select.css);

/*--------------------------------------------------------------------- skeleton ---------------------------------------------------------------------*/

* {
     box-sizing: border-box !important;
}

html {
     scroll-behavior: smooth;
}

body {
     color: #666666;
     font-size: 14px;
     font-family: 'Poppins', sans-serif;
     line-height: 1.80857;
     font-weight: normal;
}

a {
     color: #1f1f1f;
     text-decoration: none !important;
     outline: none !important;
     -webkit-transition: all .3s ease-in-out;
     -moz-transition: all .3s ease-in-out;
     -ms-transition: all .3s ease-in-out;
     -o-transition: all .3s ease-in-out;
     transition: all .3s ease-in-out;
}

h1,
h2,
h3,
h4,
h5,
h6 {
     letter-spacing: 0;
     font-weight: normal;
     position: relative;
     padding: 0 0 10px 0;
     font-weight: normal;
     line-height: normal;
     color: #111111;
     margin: 0
}

h1 {
     font-size: 24px;
     font-family: 'Righteous', cursive;
}

h2 {
     font-size: 22px;
     font-family: 'Righteous', cursive;
}

h3 {
     font-size: 18px;
     font-family: 'Righteous', cursive;
}

h4 {
     font-size: 16px
}

h5 {
     font-size: 14px
}

h6 {
     font-size: 13px
}

*,
*::after,
*::before {
     -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
     box-sizing: border-box;
}

h1 a,
h2 a,
h3 a,
h4 a,
h5 a,
h6 a {
     color: #212121;
     text-decoration: none!important;
     opacity: 1
}

button:focus {
     outline: none;
}

ul,
li,
ol {
     margin: 0px;
     padding: 0px;
     list-style: none;
}

p {
     margin: 0px;
     font-weight: 300;
     font-size: 15px;
     line-height: 24px;
}

a {
     color: #222222;
     text-decoration: none;
     outline: none !important;
}

a,
.btn {
     text-decoration: none !important;
     outline: none !important;
     -webkit-transition: all .3s ease-in-out;
     -moz-transition: all .3s ease-in-out;
     -ms-transition: all .3s ease-in-out;
     -o-transition: all .3s ease-in-out;
     transition: all .3s ease-in-out;
}

img {
     max-width: 100%;
     height: auto;
}

 :focus {
     outline: 0;
}

.btn-custom {
     margin-top: 20px;
     background-color: transparent !important;
     border: 2px solid #ddd;
     padding: 12px 40px;
     font-size: 16px;
}

.lead {
     font-size: 18px;
     line-height: 30px;
     color: #767676;
     margin: 0;
     padding: 0;
}

.form-control:focus {
     border-color: #ffffff !important;
     box-shadow: 0 0 0 .2rem rgba(255, 255, 255, .25);
}

.navbar-form input {
     border: none !important;
}

.badge {
     font-weight: 500;
}

blockquote {
     margin: 20px 0 20px;
     padding: 30px;
}

button {
     border: 0;
     margin: 0;
     padding: 0;
     cursor: pointer;
}

.full {
     float: left;
     width: 100%;
}

.layout_padding {
     padding-top: 90px;
     padding-bottom: 90px;
}

.layout_padding_2 {
     padding-top: 75px;
     padding-bottom: 75px;
}

.light_silver {
     background: #f9f9f9;
}

.theme_bg {
     background: #38c8a8;
}

.margin_top_30 {
     margin-top: 30px !important;
}

.full {
     width: 100%;
     float: left;
     margin: 0;
     padding: 0;
}


/**-- heading section --**/


/*---------------------------- preloader area ----------------------------*/

.loader_bg {
     position: fixed;
     z-index: 9999999;
     background: #fff;
     width: 100%;
     height: 100%;
}

.loader {
     height: 100%;
     width: 100%;
     position: absolute;
     left: 0;
     top: 0;
     display: flex;
     justify-content: center;
     align-items: center;
}

.loader img {
     width: 280px;
}


/*-- navigation--*/

.navigation.navbar {
     float: right;
     padding: 0px;
}

.navigation.navbar-dark .navbar-nav .nav-link {
     padding: 0 25px;
     color: #000;
     font-size: 16px;
     line-height: 20px;
     text-transform: uppercase;
}

.navigation.navbar-dark .navbar-nav .nav-link:focus,
.navigation.navbar-dark .navbar-nav .nav-link:hover {
     color: #f6d601;
}

.navigation.navbar-dark .navbar-nav .active>.nav-link,
.navigation.navbar-dark .navbar-nav .nav-link.active,
.navigation.navbar-dark .navbar-nav .nav-link.show,
.navigation.navbar-dark .navbar-nav .show>.nav-link {
     color: #f6d601;
}

.navbar-expand-md .navbar-nav {
     padding-right: 10px;
}

.sign_btn a {
     background-color: #f6d601;
     display: inline-block;
     padding: 7px 35px;
     border-radius: 30px;
     color: #000;
     font-size: 17px;
}

.sign_btn a:hover {
     color: #fff;
}


/*-- header area --*/


/*--------------------------------------------------------------------- top banner area ---------------------------------------------------------------------*/


/*--------------------------------------------------------------------- layout new css ---------------------------------------------------------------------*/

.header {
     width: 100%;
     background: #fff;
     padding: 20px 30px;
}

.logo a {
     font-size: 40px;
     font-weight: bold;
     text-transform: uppercase;
     color: #fff;
     line-height: 40px;
}


/** banner section **/

.banner_main {
     background: url(../images/banner.jpg);
     background-repeat: no-repeat;
     min-height: 700px;
     display: flex;
     justify-content: center;
     align-content: center;
     align-items: center;
     background-size: 100% 100%;
}

.text-bg {
     text-align: center;
     padding-bottom: 50px;
}

.text-bg h1 {
     color: #fff;
     font-size: 67px;
     line-height: 90px;
     padding-bottom: 35px;
     font-weight: bold;
}

.text-bg strong {
     font-family: 'Righteous', cursive;
     font-size: 40px;
     line-height: 50px;
     color: #fff;
     padding-bottom: 10px;
     display: block;
}

.text-bg span {
     font-family: 'Righteous', cursive;
     color: #f6d601;
     font-size: 40px;
     line-height: 50px;
     font-weight: bold;
     padding-bottom: 20px;
     display: block;
}

.text-bg p {
     color: #fff;
     font-size: 17px;
     line-height: 28px;
     padding-bottom: 60px;
}

.text-bg a {
     font-family: 'Righteous', cursive;
     font-size: 17px;
     background-color: #fff;
     color: #000;
     padding: 13px 0px;
     width: 100%;
     max-width: 190px;
     text-align: center;
     display: inline-block;
     transition: ease-in all 0.5s;
}

.text-bg a:hover {
     background-color: #f6d601;
     color: #000;
     transition: ease-in all 0.5s;
     border-radius: 26px;
}

.titlepage {
     text-align: center;
     padding-bottom: 60px;
}

.titlepage h2 {
     font-size: 45px;
     color: #3e3e3e;
     line-height: 50px;
     font-weight: bold;
     padding: 0;
     text-transform: uppercase;
}

.d_flex {
     display: flex;
     align-items: center;
     flex-wrap: wrap;
}


/** banner section **/


/** car section **/

.car {
     background: #fff;
     margin-top: 90px;
}

.car .titlepage h2 {
     color: #030100;
     margin-bottom: 20px;
}

.car .titlepage span {
     color: #23262d;
     font-size: 17px;
     line-height: 28px;
}

.padding_leri {
     padding-right: 0;
     padding-left: 0;
}

.car_box {
     text-align: center;
}

.car_box figure {
     margin: 0;
}

.car_box figure img {
     width: 100%;
}

.car_box h3 {
     color: #0c0c0e;
     background-color: #f6d601;
     font-size: 30px;
     line-height: 28px;
     height: 84px;
     align-items: center;
     display: flex;
     justify-content: center;
     flex-wrap: wrap;
     margin-top: 30px;
     padding: 0;
}


/** end car section **/


/** bestCar section **/

.bestCar {
     margin-top: 90px;
     background: url(../images/bg.jpg);
     background-repeat: no-repeat;
     background-size: 100% 100%;
     padding: 100px 0
}

.bestCar .titlepage h2 {
     color: #181818;
     font-size: 30px;
     text-transform: none;
     line-height: 40px;
}

.main_form {
     padding: 50px 0px 50px 40px;
}

.bestCar .main_form .contactus {
     border: #acacac solid 2px;
     padding: 0px 19px;
     margin-bottom: 20px;
     width: 100%;
     height: 60px;
     background: #fff;
     color: #000;
     font-size: 18px;
     font-weight: normal;
}

.bestCar .main_form .find_btn {
     font-family: 'Righteous', cursive;
     font-size: 17px;
     transition: ease-in all 0.5s;
     background-color: #000;
     color: #fff;
     padding: 13px 0px;
     margin: 0 auto;
     max-width: 200px;
     width: 100%;
     display: block;
     margin-top: 30px;
}

.bestCar .main_form .find_btn:hover {
     background-color: #f6d601;
     transition: ease-in all 0.5s;
     color: #000;
     border-radius: 26px;
}

#request *::placeholder {
     color: #4d4d4f;
     opacity: 1;
}

.main_form {
     padding: 50px 50px 50px 40px;
     background: #fff;
}

.nice-select {
     width: 100%;
     border: #acacac solid 2px;
     background: #fff;
     margin-bottom: 25px;
}

.current {
     color: #4d4d4f;
     font-size: 17px;
}

.nice-select::after {
     width: 10px;
     height: 10px;
}

.nice-select .list {
     background-color: #dcdcdc;
     transition: ease-in all 0.3s;
}

.nice-select .option:hover,
.nice-select .option.focus,
.nice-select .option.selected.focus {
     background-color: #eede36cf;
}


/** end bestCar section **/

.read_more {
     font-size: 17px;
     background-color: #fff;
     color: #000;
     padding: 13px 0px;
     width: 100%;
     max-width: 190px;
     text-align: center;
     display: inline-block;
     transition: ease-in all 0.5s;
}

.read_more:hover {
     background: #000;
     color: #fff;
     border-radius: 26px;
     transition: ease-in all 0.5s;
}


/** Choose  section **/

.choose {
     margin-top: 90px;
}

.choose .titlepage h2 {
     padding-bottom: 20px;
}

.choose .titlepage span {
     font-size: 17px;
     line-height: 28px;
     color: #0c0c0e;
}

.choose .choose_box {
     text-align: center;
}

.choose .choose_box span {
     color: #fff;
     background-color: #23262d;
     border-radius: 60px;
     border: #f6d601 solid 5px;
     padding: 20px 27px;
     display: inline-block;
     font-size: 20px;
     margin-bottom: 20px;
}

.choose .choose_box p {
     color: #23262d;
     font-size: 16px;
     line-height: 28px;
     margin-bottom: 50px;
}


/** end Choose  section **/


/** cutomer section **/

.cutomer {
     margin-top: 40px;
     padding-bottom: 120px;
     background: #23262d;
     padding-top: 60px;
}

.cutomer .titlepage h2 {
     color: #fff;
}

.cutomer_Carousel .carousel-caption {
     position: inherit;
     padding: 0;
}

.cross_img {
     margin-bottom: -55px;
}

.cross_img figure {
     margin: 0;
     position: relative;
     z-index: 1;
}

.cutomer_box {
     text-align: center;
}

.our {
     background: #fff;
     margin: 0px 40px;
}

.cross_layout {
     transform: skew(-20deg);
}

.test_box {
     padding: 40px 50px;
     transform: skew(20deg);
}

.cutomer_Carousel .test_box h4 {
     font-size: 17px;
     color: #030000;
     line-height: 18px;
     display: block;
     padding-bottom: 2px;
     padding-top: 30px;
}

.cutomer_Carousel .test_box span {
     font-size: 17px;
     line-height: 28px;
     color: #f6d601;
}

.cutomer_Carousel .test_box p {
     font-size: 17px;
     line-height: 28px;
     color: #1c1b1b;
     font-style: Italic;
     padding-bottom: 20px;
}

.cutomer_Carousel .carousel-indicators {
     bottom: -50px;
}

.cutomer_Carousel .carousel-indicators li {
     width: 45px;
     height: 13px;
     background: #f6d601;
     border-radius: 10px;
}

.cutomer_Carousel .carousel-indicators li.active {
     background: #ffffff;
}

.carousel-control-next-icon,
.carousel-control-prev-icon {
     display: none;
}


/** end cutomer section **/


/** footer **/

.multi {
     color: #f6d601;
     font-weight: bold;
     font-size: 40px;
}

.color_chang {
     color: #0c0c0e;
}

.footer {
     font-family: Poppins;
     background: #fff;
     padding-top: 50px;
     text-align: center;
}
body {
  font-family: "Poppins",
 sans-serif;
  color: #0c0c0c;
  background-color: #ffffff;
}

.layout_padding {
  padding-top: 90px;
  padding-bottom: 90px;
}

.layout_padding2 {
  padding-top: 45px;
  padding-bottom: 45px;
}

.layout_padding2-top {
  padding-top: 45px;
}

.layout_padding2-bottom {
  padding-bottom: 45px;
}

.layout_padding-top {
  padding-top: 90px;
}

.layout_padding-bottom {
  padding-bottom: 90px;
}

.heading_container {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: start;
      -ms-flex-align: start;
          align-items: flex-start;
}

.heading_container h2 {
  font-weight: bold;
  color: #000000;
  position: relative;
}

/*header section*/
.hero_area {
  position: relative;
}

.sub_page .header_section {
  position: unset;
  background: -webkit-gradient(linear, left top, right top, color-stop(75%, transparent), color-stop(75%, #240a5e));
  background: linear-gradient(to right, transparent 75%, #240a5e 75%);
}

.header_section {
  position: absolute;
  width: 100%;
  top: 0;
  left: 0;
}

.header_section .container-fluid {
  padding-right: 25px;
  padding-left: 25px;
}

.header_section .nav_container {
  margin: 0 auto;
}

.custom_nav-container.navbar-expand-lg .navbar-nav .nav-link img {
  width: 22px;
  margin-right: 15px;
}

.custom_nav-container.navbar-expand-lg .navbar-nav .nav-link {
  padding: 0px 25px;
  color: #fefeff;
  text-align: center;
  font-family: "Roboto",
 sans-serif;
}

.custom_menu-btn {
  z-index: 9;
  position: absolute;
  right: 15px;
  top: 14px;
}

.custom_menu-btn button {
  margin-top: 7px;
  outline: none;
  border: none;
  background-color: transparent;
}

.custom_menu-btn span {
  display: block;
  width: 35px;
  height: 4px;
  background-color: #fff;
  margin: 7px 0;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
}

.custom_menu-btn .custom_menu-btn .s-2 {
  -webkit-transition: all 0.1s;
  transition: all 0.1s;
}

.menu_btn-style button {
  position: fixed;
  right: 29px;
  top: 14px;
}

.menu_btn-style button .s-1 {
  -webkit-transform: rotate(45deg) translateY(16px);
          transform: rotate(45deg) translateY(16px);
}

.menu_btn-style button .s-2 {
  -webkit-transform: translateX(100px);
          transform: translateX(100px);
}

.menu_btn-style button .s-3 {
  -webkit-transform: rotate(-45deg) translateY(-16px);
          transform: rotate(-45deg) translateY(-16px);
}

.overlay {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgba(36, 10, 94, 0.9);
  overflow-x: hidden;
  -webkit-transition: 0.5s;
  transition: 0.5s;
}

.overlay .closebtn {
  position: absolute;
  top: 0;
  right: 30px;
  font-size: 60px;
}

.overlay a {
  padding: 2px 0px;
  text-decoration: none;
  font-size: 22px;
  color: #f1f1f1;
  display: block;
  -webkit-transition: 0.3s;
  transition: 0.3s;
  text-transform: uppercase;
}

.overlay-content {
  position: relative;
  top: 25%;
  width: 100%;
  text-align: center;
  margin-top: 30px;
}

.menu_width {
  width: 100%;
}

a,
a:hover,
a:focus {
  text-decoration: none;
}

a:hover,
a:focus {
  color: initial;
}

.btn,
.btn:focus {
  outline: none !important;
  -webkit-box-shadow: none;
          box-shadow: none;
}

.custom_nav-container .nav_search-btn {
  background-image: url(../images/search-icon.png);
  background-size: 18px;
  background-repeat: no-repeat;
  width: 35px;
  height: 35px;
  padding: 0;
  border: none;
  margin: 0 40px 0 15px;
  background-position: center;
}

.navbar-brand {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}

.navbar-brand span {
  font-size: 24px;
  font-weight: 700;
  color: #240a5e;
}

.custom_nav-container {
  z-index: 99999;
  padding: 15px 0;
}

.custom_nav-container .navbar-toggler {
  outline: none;
}

.custom_nav-container .navbar-toggler .navbar-toggler-icon {
  background-image: url(../images/menu.png);
  background-size: 55px;
}

.user_option {
  margin-left: auto;
  margin-right: 95px;
}

.user_option a {
  color: #fefdfc;
  font-size: 16px;
}

/*end header section*/
.slider_section .carousel {
  position: unset;
}

.slider_section .slider_container {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
}

.slider_section .slider_container .img-box {
  -webkit-box-flex: 2.5;
      -ms-flex: 2.5;
          flex: 2.5;
}

.slider_section .slider_container .img-box img {
  width: 100%;
}

.slider_section .slider_container .detail_container {
  position: relative;
  -webkit-box-flex: 1;
      -ms-flex: 1;
          flex: 1;
  background-color: #240a5e;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.slider_section .slider_container .detail_container #carouselExampleControls {
  width: 100%;
}

.slider_section .slider_container .detail_container .detail-box {
  width: -webkit-fit-content;
  width: -moz-fit-content;
  width: fit-content;
  margin: auto;
}

.slider_section .slider_container .detail_container .detail-box h1 {
  font-family: "Open Sans",
 sans-serif;
  text-transform: uppercase;
  font-weight: bold;
  color: #fefdfc;
  font-size: 3.5rem;
}

.slider_section .slider_container .detail_container .detail-box a {
  display: inline-block;
  padding: 10px 45px;
  background-color: #f22324;
  color: #fefdfc;
  border-radius: 0;
  border: 1px solid #f22324;
  text-transform: uppercase;
  margin-top: 35px;
}

.slider_section .slider_container .detail_container .detail-box a:hover {
  background-color: transparent;
  color: #f22324;
}

.slider_section .carousel-control-prev,
.slider_section .carousel-control-next {
  width: 50px;
  height: 50px;
  left: 0;
  opacity: 1;
  -webkit-transform: translateX(-50%);
          transform: translateX(-50%);
  background-repeat: no-repeat;
  background-color: #240a5e;
  background-size: 20px;
  background-position: center;
}

.slider_section .carousel-control-prev {
  top: 15%;
  background-image: url(../images/prev.png);
}

.slider_section .carousel-control-next {
  top: initial;
  bottom: 15%;
  background-image: url(../images/next.png);
}

.book_section {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-transform: translateY(-75px);
          transform: translateY(-75px);
}

.book_section .form_container {
  -webkit-box-flex: 2.5;
      -ms-flex: 2.5;
          flex: 2.5;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.book_section .img-box {
  -webkit-box-flex: 1;
      -ms-flex: 1;
          flex: 1;
  margin-top: 45px;
}

.book_section .img-box img {
  width: 100%;
}

.book_section form {
  width: 75%;
  padding: 15px 35px;
  background-color: #fefdfc;
  -webkit-box-shadow: 0px 0px 20px 11px rgba(0, 0, 0, 0.09);
  box-shadow: 0px 0px 20px 11px rgba(0, 0, 0, 0.09);
  border-radius: 10px;
}

.book_section form label {
  color: #656565;
  margin-bottom: 2px;
  margin-top: 10px;
}

.book_section form .form-control {
  outline: none;
  -webkit-box-shadow: none;
          box-shadow: none;
  border-radius: 0;
  border: 1px solid #8e8e8e;
  color: #000000;
}

.book_section form .form-control::-webkit-input-placeholder {
  color: #1d1c1c;
}

.book_section form .form-control:-ms-input-placeholder {
  color: #1d1c1c;
}

.book_section form .form-control::-ms-input-placeholder {
  color: #1d1c1c;
}

.book_section form .form-control::placeholder {
  color: #1d1c1c;
}

.book_section form .btn-container {
  height: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}

.book_section form .btn-container button {
  display: inline-block;
  padding: 10px 65px;
  background-color: #240a5e;
  color: #fefdfc;
  border-radius: 0;
  border: 1px solid #240a5e;
  margin-top: 25px;
}

.book_section form .btn-container button:hover {
  background-color: transparent;
  color: #240a5e;
}

.book_section form .btn-container button:hover {
  color: #1b0847;
}

.car_section .car_container {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  padding: 75px 0;
}

.car_section .car_container .box {
  min-width: 250px;
  max-width: 250px;
  margin: 55px 15px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  text-align: center;
  position: relative;
}

.car_section .car_container .box .img-box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  padding-bottom: 15px;
  width: 100%;
}

.car_section .car_container .box .img-box img {
  max-width: 100%;
}

.car_section .car_container .box .detail-box {
  margin-top: 15px;
}

.car_section .car_container .box .detail-box h5 {
  font-weight: bold;
}

.car_section .car_container .box .detail-box a {
  display: inline-block;
  padding: 8px 25px;
  background-color: #f22324;
  color: #fefdfc;
  border-radius: #000000;
  border: 1px solid #f22324;
  margin-top: 25px;
}

.car_section .car_container .box .detail-box a:hover {
  background-color: transparent;
  color: #f22324;
}

.car_section .car_container .box::before {
  content: "";
  position: absolute;
  top: 50%;
  left: 50%;
  width: 250px;
  height: 250px;
  -webkit-transform: translate(-50%, -50%) scale(2);
          transform: translate(-50%, -50%) scale(2);
  border-radius: 100%;
  background-color: #f2f2f2;
  z-index: -1;
}

.about_section .row {
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}

.about_section .img-box img {
  width: 100%;
}

.about_section .detail-box {
  text-align: center;
}

.about_section .detail-box h2 {
  font-weight: bold;
}

.about_section .detail-box p {
  margin-top: 15px;
}

.about_section .detail-box a {
  display: inline-block;
  padding: 8px 25px;
  background-color: #f22324;
  color: #fefdfc;
  border-radius: #000000;
  border: 1px solid #f22324;
  margin-top: 15px;
}

.about_section .detail-box a:hover {
  background-color: transparent;
  color: #f22324;
}

.best_section {
  -webkit-box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.15);
          box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.15);
  padding: 25px 0;
}

.best_section .book_now {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}

.best_section .book_now .detail-box h2 {
  font-weight: bold;
}

.best_section .book_now .detail-box p {
  margin: 0;
}

.best_section .book_now .btn-box a {
  display: inline-block;
  padding: 10px 60px;
  background-color: #f22324;
  color: #fefdfc;
  border-radius: #000000;
  border: 1px solid #f22324;
}

.best_section .book_now .btn-box a:hover {
  background-color: transparent;
  color: #f22324;
}

.rent_section {
  background-color: #240a5e;
}

.rent_section .heading_container h2 {
  color: #6f6e6e;
  margin-bottom: 35px;
}

.rent_section .heading_container h2::first-letter {
  color: #000000;
}

.rent_section .heading_container h2 span {
  color: #2e303c;
}

.rent_section .rent_container {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.rent_section .rent_container .box {
  width: 340px;
  margin: 15px;
  background-color: #fefdfc;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  text-align: center;
  padding: 20px 25px;
  padding-bottom: 0;
  border-radius: 5px;
}

.rent_section .rent_container .box .img-box {
  margin: 50px 0;
  height: 92px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}

.rent_section .rent_container .box .img-box img {
  max-width: 100%;
}

.rent_section .rent_container .box .price a {
  display: inline-block;
  padding: 8px 25px;
  background-color: #f22324;
  color: #fefdfc;
  border-radius: #000000;
  border: 1px solid #f22324;
  font-weight: bold;
}

.rent_section .rent_container .box .price a:hover {
  background-color: transparent;
  color: #f22324;
}

.rent_section .btn-box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.rent_section .btn-box a {
  display: inline-block;
  padding: 10px 65px;
  background-color: #fefdfc;
  color: #1a1919;
  border-radius: 0;
  border: 1px solid #fefdfc;
  margin-top: 35px;
}

.rent_section .btn-box a:hover {
  background-color: transparent;
  color: #fefdfc;
}

.blog_section .blog_container {
  width: 90%;
  margin: auto;
}

.blog_section .blog_container .date-box {
  padding: 15px 25px;
  color: #252525;
  position: relative;
  z-index: 2;
  text-align: center;
}

.blog_section .blog_container .date-box h6 {
  margin: 0;
}

.blog_section .blog_container .box {
  margin: 45px 20px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.15);
          box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.15);
}

.blog_section .blog_container .box .img-box {
  width: 100%;
}

.blog_section .blog_container .box .img-box img {
  width: 100%;
}

.blog_section .blog_container .box .detail-box {
  padding: 15px;
}

.blog_section .blog_container .box .detail-box h5 {
  font-weight: bold;
}

.blog_section .blog_container .box .detail-box p {
  margin: 0;
}

.blog_section .owl-carousel .owl-nav .owl-prev,
.blog_section .owl-carousel .owl-nav .owl-next {
  width: 50px;
  height: 50px;
  background-size: 15px;
  background-position: center;
  background-repeat: no-repeat;
  position: absolute;
  top: -115px;
  outline: none;
}

.blog_section .owl-carousel .owl-nav .owl-prev {
  left: calc(95% - 45px);
  background-image: url(../images/left-angle.png);
}

.blog_section .owl-carousel .owl-nav .owl-prev:hover {
  background-image: url(../images/left-angle-grey.png);
}

.blog_section .owl-carousel .owl-nav .owl-next {
  right: calc(5% - 45px);
  background-image: url(../images/right-angle.png);
}

.blog_section .owl-carousel .owl-nav .owl-next:hover {
  background-image: url(../images/right-angle-grey.png);
}

.us_section .heading_container {
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  text-align: center;
}

.us_section .us_container {
  background-image: url(../images/us-bg.jpg);
  background-size: cover;
}

.us_section .us_container .content_box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.us_section .us_container .content_box .box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  text-align: center;
  margin: 25px;
}

.us_section .us_container .content_box .box .img-box img {
  max-width: 100%;
}

.us_section .us_container .content_box .box .detail-box {
  margin-top: 15px;
}

.us_section .us_container .content_box .box .detail-box h5 {
  color: #fefdfc;
}

.us_section .us_container .btn-box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.us_section .us_container .btn-box a {
  display: inline-block;
  padding: 10px 65px;
  background-color: #fefdfc;
  color: #1a1919;
  border-radius: 0;
  border: 1px solid #fefdfc;
  margin-top: 35px;
}

.us_section .us_container .btn-box a:hover {
  background-color: transparent;
  color: #fefdfc;
}

.client_section {
  font-family: "Open Sans",
 sans-serif;
}

.client_section .heading_container {
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  text-align: center;
}

.client_section .box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  margin: 15px;
}

.client_section .box .detail-box {
  -webkit-box-shadow: 0 0 15px 0 rgba(0, 0, 0, 0.15);
          box-shadow: 0 0 15px 0 rgba(0, 0, 0, 0.15);
  border-radius: 10px;
  padding: 25px;
  height:800px;

}

.client_section .box .client_id {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  text-align: center;
}

.client_section .box .client_id .img-box {
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  width: 75px;
  height: 75px;
  border-radius: 100%;
  background-color: #f2f2f2;
}

.client_section .box .client_id .img-box img {
  width: 25px;
}

.client_section .box .client_id .img-box .img-2 {
  display: none;
}

.client_section .box .client_id .name {
  margin-top: 10px;
}

.client_section .box .client_id .name h6 {
  font-weight: 600;
}

.client_section .box:hover .client_id .img-box {
  background-color: #2e1b69;
}

.client_section .box:hover .client_id .img-box .img-1 {
  display: none;
}

.client_section .box:hover .client_id .img-box .img-2 {
  display: inline-block;
}

.client_section .carousel-wrap {
  margin: 0 auto;
  padding: 0 5%;
  position: relative;
}

.client_section .owl-carousel .owl-nav .owl-prev,
.client_section .owl-carousel .owl-nav .owl-next {
  width: 50px;
  height: 50px;
  background-size: 15px;
  background-position: center;
  background-repeat: no-repeat;
  position: absolute;
  top: 100%;
  outline: none;
}

.client_section .owl-carousel .owl-nav .owl-prev {
  left: calc(50% - 45px);
  background-image: url(../images/left-angle.png);
}

.client_section .owl-carousel .owl-nav .owl-prev:hover {
  background-image: url(../images/left-angle-grey.png);
}

.client_section .owl-carousel .owl-nav .owl-next {
  right: calc(50% - 45px);
  background-image: url(../images/right-angle.png);
}

.client_section .owl-carousel .owl-nav .owl-next:hover {
  background-image: url(../images/right-angle-grey.png);
}

.contact_section {
  background-image: url(../images/contact-bg.jpg);
  background-size: cover;
  color: #fefdfc;
}

.contact_section .heading_container {
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  text-align: center;
  margin-bottom: 45px;
}

.contact_section .heading_container h2 {
  color: #fefdfc;
}

.contact_section .form_container form .form-control {
  border: none;
  background-color: #fefdfc;
  outline: none;
  -webkit-box-shadow: none;
          box-shadow: none;
  padding-left: 20px;
  height: 45px;
  margin: 5px 0;
  border-radius: 0;
}

.contact_section .form_container form #inputMessage {
  height: 90px;
}

.contact_section .form_container form button {
  display: inline-block;
  padding: 10px 65px;
  background-color: #f22324;
  color: #fefdfc;
  border-radius: 0;
  border: 1px solid #f22324;
  text-transform: uppercase;
  -webkit-box-shadow: none;
          box-shadow: none;
  outline: none;
  margin-top: 15px;
  font-size: 15px;
  font-weight: bold;
}

.contact_section .form_container form button:hover {
  background-color: transparent;
  color: #f22324;
}

.contact_section .contact_items {
  margin-top: 75px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
}

.contact_section .contact_items a {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
}

.contact_section .contact_items a .img-box {
  width: 75px;
  min-width: 75px;
  margin-right: 15px;
}

.contact_section .contact_items a .img-box img {
  max-width: 100%;
}

.contact_section .contact_items a h6 {
  color: #fefdfc;
  margin: 0;
}

.contact_section .social_container {
  margin-top: 45px;
}

.contact_section .social_container .social-box {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  margin: 0 auto 20px auto;
}

.contact_section .social_container .social-box img {
  width: 30px;
  margin-left: 8px;
}

.map_section {
  height: 400px;
}

.map_section .map_container {
  height: 100%;
}

.map_section .map_container .map-responsive {
  height: 100%;
}

/* footer section*/
.footer_section {
  background-color: #240a5e;
  padding: 20px;
}

.footer_section p {
  margin: 0;
  text-align: center;
  color: #fefdfc;
}

.footer_section a {
  color: #fefdfc;
}
/*# sourceMappingURL=style.css.map */
.cont {
     padding-top: 20px;
}

.cont h3 {
     color: #414141;
     font-size: 40px;
     line-height: 50px;
     font-weight: bold;
}

.cont_call h3 {
     color: #414141;
     font-size: 50px;
     line-height: 60px;
     font-weight: bold;
     text-transform: uppercase;
}

.copyright {
     margin-top: 43px;
     padding: 20px 0px;
     background-color: #23262d;
}

.copyright p {
     color: #fff;
     font-size: 18px;
     line-height: 22px;
     text-align: center;
}

.copyright a {
     color: #fff;
}

.copyright a:hover {
     color: #f6d601;
}


/** end footer **/


/*------------------------------------------------------------------- 991px x 768px ---------------------------------------------------------------------*/

@media (min-width: 1200px) and (max-width: 1500px) {}

@media (min-width: 992px) and (max-width: 1199px) {
     .our {
          margin: 0px 45px;
     }
     .cont h3 {
          font-size: 38px;
     }
}

@media (min-width: 768px) and (max-width: 991px) {
     .navigation.navbar-dark .navbar-nav .nav-link {
          padding: 0px 10px;
     }
     .text-bg h1 {
          padding-top: 0px;
          font-size: 51px;
          line-height: 70px;
     }
     .text-bg span {
          font-size: 33px;
          line-height: 45px;
     }
     .bestCar .titlepage h2 {
          font-size: 20px;
     }
     .cont span {
          font-size: 22px;
          line-height: 22px;
     }
     .cont h3 {
          font-size: 28px;
          line-height: 43px;
     }
     .cont_call h3 {
          font-size: 24px;
          line-height: 35px;
     }
}

@media (min-width: 576px) and (max-width: 767px) {
     .header {
          padding: 15px 30px 10px 30px;
     }
     .mean-container .mean-bar {
          margin-top: 0px;
     }
     .text-bg h1 {
          font-size: 39px;
          line-height: 40px;
          padding-bottom: 25px;
     }
     .text-bg strong {
          font-size: 30px;
          line-height: 40px;
     }
     .text-bg span {
          font-size: 30px;
          line-height: 40px;
     }
     .titlepage h2 {
          font-size: 34px;
     }
     .cross_layout {
          transform: inherit;
          padding: 0;
     }
     .our {
          margin: 0;
     }
     .test_box {
          transform: inherit;
          padding: 40px 10px;
     }
     .cont h3 {
          font-size: 34px;
     }
     .car_box h3 {
          margin-bottom: 30px;
          width:80px;
     }
     .navigation.navbar {
          float: right;
          display: inherit !important;
          padding: 0;
          width: 100%;
     }
     .navigation .navbar-collapse {
          background: #000;
          padding: 20px;
          margin-top: 52px;
          position: absolute;
          width: 100%;
          margin-right: 20px;
          z-index: 999;
     }
     .navigation.navbar-dark .navbar-nav .nav-link {
          padding: 10px 0;
          color: #fff;
     }
     .navigation.navbar-dark .navbar-toggler {
          border: inherit;
          float: right;
          padding-top: 6px;
     }
     .navigation.navbar-dark .navbar-toggler-icon {
          background: url(../images/menu_icon.png);
          background-repeat: no-repeat;
     }
     .carousel-control-next-icon,
     .carousel-control-prev-icon {
          display: none;
     }
}

@media (max-width: 575px) {
     .header {
          padding: 30px 0px 0px 0px;
     }
     .logo {
          text-align: center !important;
          padding-bottom: 6px;
          float: left;
     }
     .text-bg h1 {
          font-size: 32px;
          line-height: 40px;
          padding-bottom: 20px;
     }
     .text-bg strong {
          font-size: 26px;
          line-height: 36px;
     }
     .text-bg span {
          font-size: 26px;
          line-height: 36px;
     }
     .our {
          margin: 0;
     }
     .cross_layout {
          transform: inherit;
     }
     .test_box {
          transform: inherit;
          padding: 40px 10px;
     }
     .titlepage h2 {
          font-size: 34px;
          line-height: 59px;
     }
     .cont h3 {
          font-size: 19px;
          line-height: 40px;
     }
     .multi {
          font-size: 32px;
     }
     .car_box h3 {
          margin-bottom: 30px;
     }
     .navigation.navbar {
          float: right;
          display: inherit !important;
          padding: 0;
          width: 100%;
          margin-top: -45px;
     }
     .navigation .navbar-collapse {
          background: #000;
          padding: 20px;
          margin-top: 46px;
          position: absolute;
          width: 100%;
          margin-right: 20px;
          z-index: 999;
     }
     .navigation.navbar-dark .navbar-nav .nav-link {
          padding: 10px 0;
          color: #fff;
     }
     .navigation.navbar-dark .navbar-toggler {
          float: right;
          margin-right: 2px;
          border: inherit;
     }
     .testimonial_box {
          padding: 0px 19px 40px 20px;
     }
     .navigation.navbar-dark .navbar-toggler-icon {
          background: url(../images/menu_icon.png);
          background-repeat: no-repeat;
     }
     .carousel-control-next-icon,
     .carousel-control-prev-icon {
          display: none;
     }
     .cont_call h3 {
          font-size: 33px;
          line-height: 49px;
     }
}
#more {display: none;}
#more0 {display: none;}
#more1 {display: none;}
#more2 {display: none;}
#more3 {display: none;}
#more4 {display: none;}
      </style>
   </head>
   <!-- body -->
   <body class="main-layout">
 <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
          <a class="navbar-brand" href="/Home">
            <span>
              RentCar
            </span>

          </a>


            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section position-relative">
      <div class="slider_container">
        <div class="img-box" >
          <img src="https://vpn-autos.com/content/uploads/images/makes/467x311-composition-bmw.png" alt="">
        </div>
        <div class="detail_container">
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="detail-box">
                 <center> <h1>
                    Reserver avec <br>
                   un  Appel <br>

                  </h1></center>
                <center>  <a href="/Login">
                    Login
                  </a></center>
                </div>
              </div>


      </div>
    </section>
    <!-- end slider section -->
  </div>



    <!-- end car section -->
      <!-- end car -->
      <br>


      <!-- choose  section -->
      <div class="choose ">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Pourquoi nous choisir </h2>
                     <span> </span>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="choose_box">
                     <span>01</span>
                     <p>Tarifs compétitifs et transparence des prix : Nous nous engageons à offrir des tarifs compétitifs et une totale transparence des prix. Notre système de réservation en ligne vous permet de voir immédiatement les tarifs pour chaque véhicule et période de location, sans frais cachés ni surprises de dernière minute. De plus, nous proposons régulièrement des offres spéciales et des réductions pour que vous puissiez profiter de tarifs avantageux et économiser sur votre location de voiture. </p>
                  </div>
               </div>
               <div class="col-md-12">
                  <div class="choose_box">
                     <span>02</span>
                     <p> Vaste sélection de véhicules : Notre site web de location de voitures propose une vaste sélection de véhicules pour répondre à tous les besoins et préférences de nos clients. Que vous ayez besoin d'une petite citadine pour une escapade en ville, d'un SUV spacieux pour une aventure en plein air ou d'une voiture de luxe pour une occasion spéciale, nous avons le véhicule idéal pour vous. Notre large gamme de modèles et d'options vous permet de trouver la voiture parfaite en fonction de votre style de conduite et de votre budget.</p>
                  </div>
               </div>
               <div class="col-md-12">
                  <div class="choose_box">
                     <span>03</span>
                     <p>Service client exceptionnel : Chez [Nom de votre site de location de voitures], nous accordons une grande importance à la satisfaction de nos clients. Notre équipe dévouée et professionnelle est là pour vous aider à chaque étape de votre expérience de location, que ce soit pour répondre à vos questions, vous guider dans le processus de réservation ou vous fournir une assistance en cas de besoin. Nous nous efforçons de vous offrir un service client de premier ordre, avec une attention personnalisée pour garantir que votre expérience de location soit sans tracas et agréable du début à la fin. </p>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <br>
      <!-- end choose  section -->

      <!-- rent section -->

        <section class="rent_section layout_padding">
          <div class="container">
            <div class="rent_container">
              <c:forEach var="vehicule" items="${vehicules}">
              <div class="box">
                <div class="img-box">
                  <img src="${vehicule.matricule}" alt="">
                </div>
                <div class="price">

                 <p>${vehicule.marque}<span id="dots">...</span><span id="more"><br>
                 Prix: ${vehicule.prix}DH/Jour.<br>
                 Modele:${vehicule.modele}.<br>
                 Kilometrage:20000km.<br>
                 Gasoil| BV Manuelle| 5 passagers<br> 5 portes|
                  2 valises| 4 sacs| 6 Ch. Fisc.| A/C : Oui | GPS : Non
                 </span></p>

                 <button onclick="myFunction()" id="myBtn"><a>  Read more   </a></button>
                </div>

                  <br>
              </div>

              </c:forEach>
              </div>
          </div>
        </section>

                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- end bestCar -->

      <!--  footer -->
      <footer>
         <div class="footer">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="cont_call">
                        <h3> <strong class="multi color_chang"> Call Now</strong><br>
                           (+212) 0522101010
                        </h3>
                     </div>
                     <div class="cont">
                        <h3> <strong class="multi"> Reserver</strong>
                           votre voiture des maintenant!
                        </h3>
                     </div>
                  </div>
               </div>
            </div>
            <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <p>© 2023 All Rights Reserved. Design by <a > RentCart</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>

            <script>
            function myFunction() {
              var dots = document.getElementById("dots");
              var moreText = document.getElementById("more");
              var btnText = document.getElementById("myBtn");

              if (dots.style.display === "none") {
                dots.style.display = "inline";
                btnText.innerHTML = "Read more";
                moreText.style.display = "none";
              } else {
                dots.style.display = "none";
                btnText.innerHTML = "Read less";
                moreText.style.display = "inline";
                 dots.style.color="red";
              }
            }
            </script>

   </body>
</html>

