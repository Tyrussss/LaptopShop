<%-- 
    Document   : category
    Created on : 4 Oct 2021, 16:08:10
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
    <body class="sb-nav-fixed">
        <jsp:include page="header.jsp"></jsp:include>
        <div id="layoutSidenav">
            <jsp:include page="menu.jsp"></jsp:include>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">

                        <p></p>

                        <div class="card mb-4">
                            <div class="card-header">
                                <i style="color: green" class="fas fa-list"></i>
                                List of Staff
                            </div>
                             <c:if test="${not empty requestScope.message}" >
                                <div class="alert alert-${alert}">
                                 <strong style="text-transform:capitalize">${alert}!</strong> ${message}
                                </div>
                                </c:if>
                            <div class="card-body">
                               
                                 <a href="${pageContext.request.contextPath}/admin/staffAddnew.jsp"> 
                                       <button type="button" class="btn btn-primary Bbutton">
                                           <i class="fas fa-plus-circle"></i> 
                                           AddNew
                                       </button>
                                   </a>  
                                    <p></p>
                                <table id="datatablesSimple">                                   
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>StaffID</th>
                                            <th>Fullname</th>
                                            <th>Date of Birth</th>
                                            <th>Gender</th>
                                            <th>Address</th>
                                            <th>Phone</th>
                                            <th>Username</th>
                                            <th>Admin</th>
                                            <th>Action</th>
                                            <!--<th>Delete</th>-->

                                        </tr>
                                    </thead>
                                    
                                
                                    <tbody>
                                    <c:set var="index" value="1"></c:set>
                                    <c:forEach var="item" items="${listStaff}">
                                        <tr>
                                            <td>${index}</td>
                                            <td>${item.staffID}</td>
                                            <td>${item.fullname}</td>
                                            <td>
                                                 <fmt:formatDate pattern="dd-MM-yyyy" value="${item.dateofBirth}" />                                                
                                            </td>
                                            <td>
                                                <c:if test="${item.gender==true}">
                                                      Male
                                                </c:if>      
                                                <c:if test="${item.gender==false}">
                                                      Female
                                                </c:if> 
                                            
                                            </td>
                                            <td>${item.address}</td>
                                            <td>${item.phone}</td>
                                            <td>${item.username}</td>
                                            
                                            <td>
                                                <c:if test="${item.admin==true}">
                                                      Yes
                                                </c:if>  
                                                <c:if test="${item.admin==false}">
                                                      No
                                                </c:if>                                                  
                                            </td>
                                            <td>
                                                <a href="${pageContext.request.contextPath}/AdminStaff?action=2&staffID=${item.staffID}"><i class="far fa-edit"></i><span style="padding-left: 5px"></span></a>
                                                <a href="${pageContext.request.contextPath}/AdminStaff?action=4&staffID=${item.staffID}" onclick="return confirmAction()"><i class="far fa-trash-alt"></i><span style="padding-left: 5px"></span></a>
                                            </td>
                                           
                                        </tr>
                                    <c:set var="index" value="${index+1}"></c:set>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <jsp:include page="footer.jsp"></jsp:include>
            </div>
        </div>
        <jsp:include page="pathScript.jsp"></jsp:include>
    </body>
</html>
