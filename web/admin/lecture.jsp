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
                                List of Lecture
                            </div>
                             <c:if test="${not empty requestScope.message}" >
                                <div class="alert alert-${alert}">
                                 <strong style="text-transform:capitalize">${alert}!</strong> ${message}
                                </div>
                                </c:if>
                            <div class="card-body">
                                 <div style="padding-bottom:20px">
                                     <form name="myform" method="post">
                                         <input type="hidden" id="path" value="${pageContext.request.contextPath}/AdminLecture?action=0&catID="/>
                                         <label>Category
                                             <select class="cachra dataTable-selector" id="catID" onchange="Sendata();">
                                                 <option value="0">--Select category</option>
                                             <c:forEach var="categoryItem" items="${listCategory}">
                                                 <option value="${categoryItem.catID}" ${param.catID==categoryItem.catID?"selected='selected'":""}>${categoryItem.catName}</option>
                                                 
                                            </c:forEach>
                                             </select>                                         
                                         </label>
                                         
                                         <label>Course
                                             <select class="cachra dataTable-selector" id="courseID" onchange="Sendata();">
                                                 <option value="0">--Select course</option>
                                             <c:forEach var="courseItem" items="${listCourse}">
                                                 <option value="${courseItem.courseID}" ${param.courseID==courseItem.courseID?"selected='selected'":""}>${courseItem.courseName}</option>
                                                 
                                            </c:forEach>
                                             </select>                                         
                                         </label>
                                        
                                     </form>
                                </div>
                                       
                                <div style="padding-bottom:20px">
                                    <a  href="${pageContext.request.contextPath}/AdminLecture?action=1&catID=${param.catID}&courseID=${param.courseID}"> 
                                       <button  type="button" class="btn btn-primary Bbutton">
                                           <i class="fas fa-plus-circle"></i> 
                                           AddNew
                                       </button>
                                   </a>
                                </div>
                                   
                                <table id="datatablesSimple">                                   
                                    <thead>
                                        
                                        <tr>
                                            <th>No.</th>
                                            <th>ID</th>
                                            <th>Image</th>
                                            <th>Lecture Name</th>
                                            <th>Price</th>
                                            <!--<th>category</th>-->
                                            <th>Action</th>
                                       

                                        </tr>
                                    </thead>
                                    
                                
                                    <tbody>
                                    <c:set var="index" value="1"></c:set>
                                    <c:forEach var="item" items="${listLecture}">
                                        <tr>
                                            <td>${index}</td>
                                            <td>${item.lectureID}</td>
                                            <td class="tdcenter"> <img class="card-lesson" src="./assets/images/lesson/${item.picturecard}" alt=""/></td>
                                            <td>${item.name}</td>
                                            <td>
                                                ${String.format("%,.0f",item.lectureprice-100000)}
                                                </td>
                                            <td>
                                                <a href="${pageContext.request.contextPath}/AdminCourse?action=3&courseID=${item.courseID}&catID=${param.catID}"><i class="far fa-edit"></i><span style="padding-left: 5px"></span></a>
                                                <a href="${pageContext.request.contextPath}/AdminCourse?action=6&courseID=${item.courseID}&catID=${param.catID}" onclick="return confirmAction()"><i class="far fa-trash-alt"></i><span style="padding-left: 5px"></span></a>
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
