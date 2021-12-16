<%-- 
    Document   : header
    Created on : 10 Sept 2021, 11:08:27
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
 
<!-- Header Top ==== -->
<header class="header rs-nav">
    <div class="top-bar">
        <div class="container">
            <div class="row d-flex justify-content-between">
                <div class="topbar-left">
                    <ul>
                        <li><a href="faq-1.html"><i class="fa fa-question-circle"></i>Ask a Question</a></li>
                        <li><a href="javascript:;"><i class="fa fa-envelope-o"></i>thanhbinh@onlinecourse.com</a></li>
                    </ul>
                </div>
                <div class="topbar-right">
                    <ul>
                        <!--mm-->
                        
                        <!--mm-->
                        <li class="toprightBinh">
                            <select class="header-lang-bx">
                                <option data-icon="flag flag-uk">English</option>
                                <option data-icon="flag flag-vn">Vietnamese</option>
                            </select>
                        </li>
                        <c:if test="${empty sessionScope.user}">    
                        <li><a href="login.jsp">Login</a></li>
                        </c:if>
                         <c:if test="${not empty sessionScope.user}">
                           
                         <li><a href="LogoutServlet">Logout (Hi: ${sessionScope.user})</a></li>
                        </c:if>
                         <!--<li><a href="register.jsp">Register</a></li>-->
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="sticky-header navbar-expand-lg">
        <div class="menu-bar clearfix">
            <div class="container clearfix">
                <!-- Header Logo ==== -->
                <div class="menu-logo">
                    <a href="index.jsp"><img src="assets/images/myLearning.png" alt=""></a>
                </div>
                <!-- Mobile Nav Button ==== -->
                <button class="navbar-toggler collapsed menuicon justify-content-end" type="button" data-toggle="collapse" data-target="#menuDropdown" aria-controls="menuDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
                <!-- Author Nav ==== -->
                <div class="secondary-menu">
                    <div class="secondary-inner">
                        <ul>
                            <li><a href="javascript:;" class="btn-link"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="javascript:;" class="btn-link"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="javascript:;" class="btn-link"><i class="fa fa-linkedin"></i></a></li>
                            <!-- Search Button ==== -->
<!--                            <li class="search-btn"><button id="quik-search-btn" type="button" class="btn-link"><i class="fa fa-search"></i></button></li>-->
                        </ul>
                    </div>
                </div>
                <!-- Search Box ==== -->
                <div class="nav-search-bar">
                    <form action="#">
                        <input name="search" value="" type="text" class="form-control" placeholder="Type to search">
                        <span><i class="ti-search"></i></span>
                    </form>
                    <span id="search-remove"><i class="ti-close"></i></span>
                </div>
                
                <jsp:include page="/MenuServlet"></jsp:include>               
                
            </div>
        </div>
    </div>
</header>
