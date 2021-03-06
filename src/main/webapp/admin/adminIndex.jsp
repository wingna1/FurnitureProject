<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> IKEZKE </title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/furniture/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/furniture/css/index.css" type="text/css">
        <link rel="stylesheet" href="/furniture/category/css/style.css" type="text/css">
    
    
    
</head>
<body>


    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header__top__inner">
                            
                            <div class="header__logo">
                                <a href="/furniture/index.jsp"><img src="/furniture/img/logo.png" alt="" width="120px" height="52px"></a>
                            </div>
                           
                        </div>
                    </div>
                </div>
                <div class="canvas__open"><i class="fa fa-bars"></i></div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                        <li><a href="#">????????? ?????????</a>    </li>                           
                         
                       </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    
    
    
    
    
    
    
  
    
    
   <!--      <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__bed">                    
                            <a>?????? ??????(list)</a>
                           ?????? 1?????? ?????? (view) 
                        </div>
                        <div class="hero__categories__sofa">                    
                            <a>?????? ??????(list) </a>
                            <ul>
                               <li>?????? ??????</li>
                               <li>?????? ??????</li>
                           </ul>
                        </div>
                        <div class="hero__categories__bookshelf">                    
                            <a>????????????</a>
                            <ul>
                               <li>????????????</li>
                               <li>????????????</li>
                          
                           </ul>
                        </div>
                        <div class="hero__categories__desk">                    
                            <a>????????????</a>
                            <ul>
                               <li>???????????? ??????</li>
                              
                           </ul>
                        </div>
                        <div class="hero__categories__closet">                    
                            <a>QnA ??????</a>
                            <ul>
                               <li>?????????/??????</li>
                              
                           </ul>
                        </div>
                        <div class="hero__categories__clothes">                    
                            <a>review ??????</a>
                            <ul>
                               <li>???????????????</li>
                             
                           </ul>
                        </div>
                        <div class="hero__categories__chair">                    
                            <a>????????? ??????</a>
                            <ul>
                               <li>????????? ??????</li>
                               
                           </ul>
                        </div>
                        <div class="hero__categories__chair">                    
                            <a>??????/??????</a>
                            <ul>
                               <li>?????? ??????</li>
                               
                           </ul>
                        </div>
                        
                    </div>
                </div> -->
    <!-- Header Section End -->



	<div id="section_admin">
      <c:if test="${empty adminDisplay }">
         <jsp:include page="/admin/adminIndexDisplay.jsp" />
      </c:if>
      <c:if test="${not empty adminDisplay }">
         <jsp:include page="${adminDisplay }" />
      </c:if>
   </div>


</body>


<script src="/furniture/js/jquery-3.3.1.min.js"></script>
<script src="/furniture/js/bootstrap.min.js"></script>
<script src="/furniture/js/jquery.nice-select.min.js"></script>
<script src="/furniture/js/jquery.barfiller.js"></script>
<script src="/furniture/js/jquery.magnific-popup.min.js"></script>
<script src="/furniture/js/jquery.slicknav.js"></script>
<script src="/furniture/js/owl.carousel.min.js"></script>
<script src="/furniture/js/jquery.nicescroll.min.js"></script>
<script src="/furniture/js/main.js"></script>

</html>