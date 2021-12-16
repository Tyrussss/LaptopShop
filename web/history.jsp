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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
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
                                 <c:if test="${empty requestScope.listOrder}">
                                     <span class="title blinkingBinh" style="font-weight: bold">PURCHASE HISTORY IS EMPTY!</span>
                                 </c:if>
                                 <c:if test="${not empty requestScope.listOrder}">
                                 <span class="title" style="font-weight: bold">YOUR PURCHASE HISTORY</span>
                                 <p></p>
                                 <c:set var="index" value="1"></c:set>                                
                                
                                <div class="table-responsive">
                                    <table class="table table-bordered tbl-cart">
                                        <thead style="text-align:center; font-weight: 500">
                                            <tr>
                                                <td class="hidden-xs">No.</td>
                                                <td>Order ID</td>
                                                <td>Date</td>
                                                <!--<td>Price</td>-->
                                                <!--<td class="td-qty">Quantity</td>-->
                                                <!--<td>Unit Price</td>-->
                                                <td>Customer</td>
                                                <td>Status</td>
                                                <td>Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="item" items="${requestScope.listOrder}">                                        
                                                <%--<c:out value="${item.lecture.name}"></c:out>--%>
                                                    
                                            <tr>
                                                <!--No.-->
                                                <td class="tdcenter">                                                   
                                                ${index}
                                                </td>
                                                <td class="tdcenter">                                                   
                                                ${item.oderID}
                                                </td>
                                               
                                                <td class="tdcenter">
                                                    <fmt:formatDate pattern="dd-MM-yyyy" value="${item.orderDate}" />
                                                    
                                                </td>
                                                
                                                <td class="tdcenter">                                                   
                                                ${item.account.fullname}
                                                </td>
                                                 
                                                 <td class="tdcenter">                                                   
                                                ${item.status.statusName}
                                                </td>
                                                
                                                <td class="tdcenter" style="text-decoration: underline;">                                                   
                                                     <a href="DetailOrderServlet?orderID=${item.oderID}"}>Details</a>
                                                </td>
                                                

                                            </tr>
                                            
                                            <c:set var="index" value="${index+1}"></c:set>
                                            </c:forEach>                                           
                                            
                                        </tbody>
                                    </table>
                                </div>
                                 </c:if>                
                                 <div class="btn-group btns-cartBinh table-responsive"">
                                    <div>
                                        <a href="index.jsp"> <button type="button" class="btn btn-primary"><i class="fa fa-arrow-circle-left"></i> Continue Shopping</button></a>
                                    </div>
                                    
                                    
                                </div>
                                

                            </div>
                            
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
