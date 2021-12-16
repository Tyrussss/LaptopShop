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
                                 <i style="color:green" class="fas fa-folder-plus"></i> AddNew Category </div>
                                 <c:if test="${not empty requestScope.message}" >
                                <div class="alert alert-${alert}">
                                 <strong style="text-transform:capitalize">${alert}!</strong> ${message}
                                </div>
                                 </c:if>
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/AdminCategory" method="post">
                                    <input type="hidden" name="action" value="1"/>
                                <table>    
                                    <tbody>                                 
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Category ID</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" name="categoryID" placeholder="ID Auto" readonly="true" class="form-control"/></td>                                           
                                            
                                        </tr>     
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Category Name</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" name="categoryName" placeholder="Category Name" class="form-control"/></td>                                     
                                        </tr> 
                                        
                                        <tr>                                            
                                            <td colspan="2" style="text-align: center"><input type="submit" value="AddNew" class="btn-primary"/></td>                                     
                                        </tr> 
                                    </tbody>
                                </table>
                            </form>
                            <a style="text-decoration: none;" href="${pageContext.request.contextPath}/AdminCategory?action=0">&#60;&#60;<span style="text-decoration: underline;"> Back to Category<span></a>
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
