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
<!--                        <h1 class="mt-4">Category</h1>-->
                        <!--<h3> <i style="color:green" class="fas fa-folder-plus"></i> AddNew Category</h3>-->
                        <p></p>

                        <div class="card mb-4">
                            <div class="card-header">
                                <i style="color: green" class="fas fa-list"></i>
                                List of Category
                            </div>
                             <c:if test="${not empty requestScope.messageCate}" >
                                <div class="alert alert-${alertCate}">
                                 <strong style="text-transform:capitalize">${alertCate}!</strong> ${messageCate}
                                </div>
                                </c:if>
                            <div class="card-body">
                               
                                 <a href="${pageContext.request.contextPath}/admin/categoryAddnew.jsp"> 
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
                                            <th>catID</th>
                                            <th>catName</th>
                                            <th>Update</th>
                                            <th>Delete</th>

                                        </tr>
                                    </thead>
                                    
                                
                                    <tbody>
                                    <c:set var="index" value="1"></c:set>
                                    <c:forEach var="item" items="${listCategory}">
                                        <tr>
                                            <td>${index}</td>
                                            <td>${item.catID}</td>
                                            <td>${item.catName}</td>
                                            <td><a href="${pageContext.request.contextPath}/AdminCategory?action=2&catID=${item.catID}"><i class="far fa-edit"></i><span style="padding-left: 5px">Edit</span></a></td>
                                            <td><a href="${pageContext.request.contextPath}/AdminCategory?action=3&catID=${item.catID}" onclick="return confirmAction()"><i class="far fa-trash-alt"></i><span style="padding-left: 5px">Delete</span></a></td>
                                            
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
