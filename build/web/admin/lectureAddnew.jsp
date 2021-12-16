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
                       
                        <p></p>

                        <div class="card mb-4">
                            <div class="card-header">                                
                                 <i style="color:green" class="fas fa-folder-plus"></i> AddNew Lecture </div>
                                 <c:if test="${not empty requestScope.message}" >
                                <div class="alert alert-${alert}">
                                 <strong style="text-transform:capitalize">${alert}!</strong> ${message}
                                </div>
                                 </c:if>
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/AdminStaff" method="post" onsubmit="return AdminCheckData()" >
                                    <input type="hidden" name="action" value="1"/>
                                <table>    
                                    <tbody>      
                                        <tr>
                                            <td style="padding:0 20px 20px 0">
                                             Category
                                            </td>
                                             <td style="padding:0 20px 20px 0">
                                             <select style="width:100%" class="B_select dataTable-selector" id="catID">
                                                 <option value="0">--Select category</option>
                                             <c:forEach var="categoryItem" items="${listCategory}">
                                                 <option value="${categoryItem.catID}" ${param.catID==categoryItem.catID?"selected='selected'":""}>${categoryItem.catName}</option>                                                 
                                            </c:forEach>
                                             </select>                               
                                            </td>
                                            
                                            <td style="padding:0 20px 20px 100px">Address</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Address" name="address" placeholder="Address" class="form-control"/></td> 
                                            
                                            
                                        </tr>
                                        <tr>
                                            <td style="padding:0 20px 20px 0">
                                             Course
                                            </td>
                                             <td style="padding:0 20px 20px 0">
                                             <select style="width:100%" class="B_select dataTable-selector" id="catID">
                                                 <option value="0">--Select course</option>
                                             <c:forEach var="courseItem" items="${listCourse}">
                                                 <option value="${courseItem.courseID}" ${param.courseID==courseItem.courseID?"selected='selected'":""}>${courseItem.courseName}</option>                                                 
                                            </c:forEach>
                                             </select>                               
                                            </td>
                                            
                                            
                                            
                                        </tr>
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Lecture ID</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" name="staffID" placeholder="ID Auto" readonly="true" class="form-control"/></td>                                           
                                            <td style="padding:0 20px 20px 100px">Phone</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Phone" name="phone" placeholder="Phone number" class="form-control"/></td>  
                                        </tr>     
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Title</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Fullname" name="fullname" placeholder="Full name " class="form-control"/></td> 
                                            <td style="padding:0 20px 20px 100px">Username</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Username" name="username" placeholder="User name"  class="form-control"/></td> 
                                        </tr> 
                                        
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Price</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Fullname" name="fullname" placeholder="Price" class="form-control"/></td> 
                                                                                
                                            <td style="padding:0 20px 20px 100px">Password</td>
                                            <td style="padding:0 20px 20px 0"><input type="password" id="Password" name="password" placeholder="Password"  class="form-control"/></td> 
                                        </tr> 
                                        
                                        <tr>                                            
                                           <td  style="padding:0 20px 20px 0">Description</td>
                                           <td colspan="4" style="padding:0 20px 20px 0">
                                               <textarea id="description" name="Description" rows="10" cols="100"></textarea>
                                               
                                           </td>  
                                            
                                        </tr>                           
                                        
                                        <tr>                                            
                                            <td colspan="4" style="text-align: center"><input type="submit" value="AddNew" class="btn-primary"/></td>                                     
                                        </tr> 
                                    </tbody>
                                </table>
                            </form>
                            <a style="text-decoration: none;" href="${pageContext.request.contextPath}/AdminLecture?action=0&catID=0&courseID=0">&#60;&#60;<span style="text-decoration: underline;"> Back to Lecture<span></a>
                            </div>
                        </div>
                    </div>
                </main>
                <script>CKEDITOR.replace('description');</script>
                <jsp:include page="footer.jsp"></jsp:include>
            </div>
        </div>
        <jsp:include page="pathScript.jsp"></jsp:include>
         
    </body>
</html>
