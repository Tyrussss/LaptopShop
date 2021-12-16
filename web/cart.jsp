<%-- 
    Document   : index
    Created on : 6 Sept 2021, 20:07:55
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.thanhbinh.DAO.*" %>
<%@page import="com.thanhbinh.model.*" %>
<%@page import="java.util.ArrayList" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="head.jsp"></jsp:include>
        <body id="bg">
            <div class="page-wraper">
                <div id="loading-icon-bx"></div>

            <jsp:include page="header.jsp"></jsp:include>
            
           
                <div class="container bootdey">
                    <hr>
                    <div class="row bootstrap snippets">
                        
                        <div class="clearfix visible-sm"></div>

                        <!-- Cart -->
                        <div class="col-lg-12 col-md-12 col-sm-12 carttable">
                            <div class="col-lg-12 col-sm-12">
                                                                 
                                 <div class="col-lg-12 col-sm-12 hero-feature">
                                 <c:if test="${empty sessionScope.lectureList}">
                                     <span class="title blinkingBinh" style="font-weight: bold">YOUR CART IS EMPTY !</span>
                                     <p></p>
                                  <div>
                                        <a href="index.jsp"> <button type="button" class="btn btn-primary"><i class="fa fa-arrow-circle-left"></i> Continue Shopping</button></a>
                                   </div>
                                 </c:if>
                                 <c:if test="${not empty sessionScope.lectureList}">
                                 <span class="title" style="font-weight: bold">YOUR CART</span>
                                 <p class="blinkingBinh" style="color:red; font-weight: 500">
                                        <c:if test="${not empty requestScope.Warning}" >
                                            ${requestScope.Warning}
                                        </c:if>
                                            </p>
                                 <c:set var="index" value="1"></c:set>
                                 
                                 <c:set var="total" value="0"></c:set>
                                
                                <div class="table-responsive">
                                    <table class="table table-bordered tbl-cart">
                                        <thead style="text-align:center; font-weight: 500">
                                            <tr>
                                                <td class="hidden-xs">No.</td>
                                                <td>Image</td>
                                                <td>Course Name</td>
                                                <!--<td>Price</td>-->
                                                <!--<td class="td-qty">Quantity</td>-->
                                                <!--<td>Unit Price</td>-->
                                                <td>Amount</td>
                                                <td>Remove</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="item" items="${lectureList}">                                        
                                                <%--<c:out value="${item.lecture.name}"></c:out>--%>
                                                    
                                            <tr>
                                                <!--No.-->
                                                <td class="tdcenter">
<!--                                                    <a href="#">
                                                        <img src="https://via.placeholder.com/200x200/" alt="Age Of Wisdom Tan Graphic Tee" title="" width="47" height="47">
                                                    </a>-->
                                                ${index}
                                                </td>
                                                
                                                <!--Image-->
                                                <td class="tdcenter">
                                                    <!--<img class="card-lesson" src="assets/images/lesson/${item.lecture.picturecard}"/>-->
                                                    <img class="card-lesson" src="assets/images/lesson/${item.lecture.picturecard}" alt=""/>
                                                   
                                                </td>
                                                
                                                <!--Course Name-->
                                                <td class="tdcenter namerightBinh">
                                                    <div>${item.lecture.name}</div>
                                                    <div style="font-size: 14px; color:#666">Teacher: <span> ${item.getLecture().getTeacher().getLecturersName()}</span></div>
                                                </td>
                                                
                                                
                                                
                                                <!--Amount-->
                                                
                                                    
                                                    <td class="tdcenter pricerightBinh">
                                                        ${String.format("%,.0f",item.getLecture().getLectureprice()-100000)}
                                                    </td>
                                                                                               
                                                
                                                <td class="tdcenter">
                                                    <a href="DeleteItemCartServlet?lectureID=${item.lecture.lectureID}" class="remove_cart" rel="2">
                                                        <i class="fa fa-trash-o"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <c:set var="total" value="${total+item.lecture.lectureprice-100000}"></c:set>
                                            <c:set var="index" value="${index+1}"></c:set>
                                           
                                            <%--<c:set var="quantity" value="${quantity+1}" scope="session"></c:set>--%>
                                            </c:forEach>
                                            
                                            <tr>
                                                <td colspan="3" class="pricerightBinh" >Total</td>
                                                <td class="total pricerightBinh" style="font-weight: 500;color:red;font-size: 18px">${String.format("%,.0f",total)}
                                                </td>
                                                 <td class="tdcenter">VNĐ</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="btn-group btns-cartBinh table-responsive"">
                                    <div>
                                        <a href="index.jsp"> <button type="button" class="btn btn-primary"><i class="fa fa-arrow-circle-left"></i> Continue Shopping</button></a>
                                    </div>
                                    <div>
                                    <!--<button type="button" class="btn btn-primary">Order</button>-->
                                    <a href="OrderServlet"><button type="button" class="btn btn-primary">Order <i class="fa fa-arrow-circle-right"></i></button></a>
                                    </div>
                                    
                                </div>
                                 <div style="text-align: center">
                                        <p class="blinkingBinh" style="color:red; font-weight: 500">
                                        <c:if test="${not empty requestScope.OrderStatus}" >
                                            ${requestScope.OrderStatus}
                                        </c:if>
                                            </p>
                                   </div>

                            </div>
                            </c:if>
                            </div>
                            
                        </div>
                        <!-- End Cart -->
                    </div>
                </div>

            <jsp:include page="footer.jsp"></jsp:include>
            <!-- Footer END ==== -->
            <button class="back-to-top fa fa-chevron-up" ></button>
        </div>
        <!-- External JavaScripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/vendors/bootstrap/js/popper.min.js"></script>
        <script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
        <script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
        <script src="assets/vendors/counter/waypoints-min.js"></script>
        <script src="assets/vendors/counter/counterup.min.js"></script>
        <script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
        <script src="assets/vendors/masonry/masonry.js"></script>
        <script src="assets/vendors/masonry/filter.js"></script>
        <script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
        <script src="assets/js/functions.js"></script>
        <script src="assets/js/contact.js"></script>
        <script src='assets/vendors/switcher/switcher.js'></script>
    </body>

</html>

