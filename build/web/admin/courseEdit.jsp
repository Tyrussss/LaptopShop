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
                        <!--<h1 class="mt-4">Category</h1>-->
                        <p></p>
                     <div class="card mb-4">
                            <div class="card-header">                               
                                 <i style="color:green" class="far fa-edit"></i> Edit Course</div>
                                 <c:if test="${not empty requestScope.messageCurrent}" >
                                <div class="alert alert-${alertCurrent}">
                                 <strong style="text-transform:capitalize">${alertCurrent}!</strong> ${messageCurrent}
                                </div>
                                 </c:if>
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/AdminCourse" method="post">
                                    <input type="hidden" name="action" value="4"/>
                                <table>    
                                    <tbody>  
                                         <tr>
                                            <td style="padding:0 20px 20px 0">Category Name</td>
                                            <td style="padding:0 20px 20px 0">
                                             <select name="catID"  style="width:100%" class="dataTable-selector B_select">                                          
                                             <c:forEach var="categoryItem" items="${listCategory}">
                                                 <option value="${categoryItem.catID}" ${course.catID==categoryItem.catID?"selected='selected'":""}>${categoryItem.catName}</option>                                                 
                                            </c:forEach>
                                             </select>                                             
                                            </td>                                    
                                        </tr> 
                                        
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Course ID</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" name="courseID" value="${course.courseID}" readonly="true" class="form-control"/></td>                                           
                                            
                                        </tr>     
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Course Name</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" name="courseName" value="${course.courseName}" placeholder="Course Name" class="form-control"/></td>                                     
                                        </tr> 
                                        
                                        <tr>                                            
                                            <td colspan="2" style="text-align: center"><input type="submit" value="Update" class="btn-primary"/></td>                                     
                                        </tr> 
                                    </tbody>
                                </table>
                            </form>
                             <p></p>
                             <a style="text-decoration: none;" href="${pageContext.request.contextPath}/AdminCourse?action=0&catID=${course.catID}">&#60;&#60;<span style="text-decoration: underline;"> Back to Course</span></a>
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
