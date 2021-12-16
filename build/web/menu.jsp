<%-- 
    Document   : menu
    Created on : 10 Sept 2021, 11:08:50
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.thanhbinh.DAO.*" %>
<%@page import="com.thanhbinh.model.*" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>

<!-- Navigation Menu ==== -->
<div class="menu-links navbar-collapse collapse justify-content-start" id="menuDropdown">
    <div class="menu-logo">
        <a href="index.html"><img src="assets/images/logo.png" alt=""></a>
    </div>
    <ul class="nav navbar-nav">	
        <li class="active"><a href="javascript:;">Home <i class="fa fa-chevron-down"></i></a>
            <ul class="sub-menu">
                <li><a href="index.html">Home 1</a></li>
                <li><a href="index-2.html">Home 2</a></li>
            </ul>
        </li>
<!--        <li><a href="javascript:;">Pages <i class="fa fa-chevron-down"></i></a>
            <ul class="sub-menu">
                <li><a href="javascript:;">About<i class="fa fa-angle-right"></i></a>
                    <ul class="sub-menu">
                        <li><a href="about-1.html">About 1</a></li>
                        <li><a href="about-2.html">About 2</a></li>
                    </ul>
                </li>
                <li><a href="javascript:;">Event<i class="fa fa-angle-right"></i></a>
                    <ul class="sub-menu">
                        <li><a href="event.html">Event</a></li>
                        <li><a href="events-details.html">Events Details</a></li>
                    </ul>
                </li>
                <li><a href="javascript:;">FAQ's<i class="fa fa-angle-right"></i></a>
                    <ul class="sub-menu">
                        <li><a href="faq-1.html">FAQ's 1</a></li>
                        <li><a href="faq-2.html">FAQ's 2</a></li>
                    </ul>
                </li>
                <li><a href="javascript:;">Contact Us<i class="fa fa-angle-right"></i></a>
                    <ul class="sub-menu">
                        <li><a href="contact-1.html">Contact Us 1</a></li>
                        <li><a href="contact-2.html">Contact Us 2</a></li>
                    </ul>
                </li>
                <li><a href="portfolio.html">Portfolio</a></li>
                <li><a href="profile.html">Profile</a></li>
                <li><a href="membership.html">Membership</a></li>

            </ul>
        </li>-->

        <li><a href="javascript:;">Our Courses <i class="fa fa-chevron-down"></i></a>
            <ul class="sub-menu">
                <%
                           ArrayList<Category> listCat=(ArrayList<Category>)request.getAttribute("catModel");                          
                           CourseDAO courseDAO=new CourseDAO();
                           ArrayList<Course> listCourse;
                           
                           for(Category itemCat: listCat)
                           {
                                String link="<li>";
                                link+="<a href='javascript:;'>"+itemCat.getCatName()+"<i class='fa fa-angle-right'></i></a>";
                                out.print(link);  
                                listCourse=courseDAO.getByCategory(itemCat.getCatID());
                                out.print("<ul class='sub-menu'>");
                                    for(Course itemCourse: listCourse)
                                     {
                                         String link2="<li>";
                                         link2+="<a href='index.jsp?course="+String.valueOf(itemCourse.getCourseID())+"'>";
                                         link2+=itemCourse.getCourseName()+"</a>";
                                         link2+="</li>";                         
                                        out.print(link2);  
                                        
                                     }                        
                                out.print("</ul>");   
                                out.print("</li>");
                                                           
                           }                    
                %>         

            </ul>
        </li>


        <li><a href="javascript:;">Blog <i class="fa fa-chevron-down"></i></a>
            <ul class="sub-menu">
                <li><a href="blog-classic-grid.html">Blog Classic</a></li>
                <li><a href="blog-classic-sidebar.html">Blog Classic Sidebar</a></li>
                <li><a href="blog-list-sidebar.html">Blog List Sidebar</a></li>
                <li><a href="blog-standard-sidebar.html">Blog Standard Sidebar</a></li>
                <li><a href="blog-details.html">Blog Details</a></li>
            </ul>
        </li>
        <c:if test="${not empty sessionScope.user}">                           
          <li><a href="PurchasHistoryServlet">Purchase History</a></li>
        
        </c:if>      

    </ul>
         <c:set var="quantity" value="0"></c:set>
                <c:forEach var="item" items="${lectureList}">
                  <c:set var="quantity" value="${quantity+1}"></c:set>
                </c:forEach>         
              
   
 
 
<!--    <div class="Search-sub1">
    <%--<c:if test="${param.course}">--%> 
        <form class="searchInput" method="get">
         <input  type="text" name="searchKeyWord" value="" class="form-controlBinh" placeholder="Search course, teacher..." />
         
         <button class="Search-sub2" id="search-button" type="submit">
              <img width="25px" src="assets/images/loupe.svg" alt="">
         </button>
         </form>
    <%--</c:if>--%>
     </div>-->
   
  
         <a href="cart.jsp" class="cart-icon"><ion-icon  name="cart"></ion-icon>
              
             <span class="cartquantity">${quantity}</span>
         
        </a>
          
        
 <div class="nav-social-link">
        <a href="javascript:;"><i class="fa fa-facebook"></i></a>
        <a href="javascript:;"><i class="fa fa-google-plus"></i></a>
        <a href="javascript:;"><i class="fa fa-linkedin"></i></a>

</div>

