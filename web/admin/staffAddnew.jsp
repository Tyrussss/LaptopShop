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
                                 <i style="color:green" class="fas fa-folder-plus"></i> AddNew Staff </div>
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
                                            <td style="padding:0 20px 20px 0">Staff ID</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" name="staffID" placeholder="ID Auto" readonly="true" class="form-control"/></td>                                           
                                            <td style="padding:0 20px 20px 100px">Phone</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Phone" name="phone" placeholder="Phone number" class="form-control"/></td>  
                                        </tr>     
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Full Name</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Fullname" name="fullname" placeholder="Full name " class="form-control"/></td> 
                                            <td style="padding:0 20px 20px 100px">Username</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Username" name="username" placeholder="User name"  class="form-control"/></td> 
                                        </tr> 
                                        
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Date of Birth</td>
                                            <td style="padding:0 20px 20px 0"><input type="date" id="DateofBirth" name="dateofbirth"  class="form-control"/></td>                                     
                                            <td style="padding:0 20px 20px 100px">Password</td>
                                            <td style="padding:0 20px 20px 0"><input type="password" id="Password" name="password" placeholder="Password"  class="form-control"/></td> 
                                        </tr> 
                                        
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Gender</td>
                                            <td style="padding:0 20px 20px 0">
                                                <input type="radio" id="Male" name="gender" value="Male" checked>
                                                <label style="margin-right:10px;" >Male</label>
                                                <input type="radio" id="Female" name="gender" value="Female">
                                                <label style="margin-right:10px;" >Female</label>
                                               
                                            </td>  
                                            
                                            <td style="padding:0 20px 20px 100px">Admin</td>
                                            <td style="padding:0 20px 20px 0">
                                                <input type="radio" id="Yes" name="admin" value="Yes">
                                                <label style="margin-right:10px;">Yes</label>
                                                <input type="radio" id="No" name="admin" value="No" checked>
                                                <label style="margin-right:10px;">No</label>
                                               
                                            </td>  
                                        </tr> 
                                        
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Address</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Address" name="address" placeholder="Address" class="form-control"/></td>                                     
                                        </tr> 
                                        
                                        <tr>                                            
                                            <td colspan="4" style="text-align: center"><input type="submit" value="AddNew" class="btn-primary"/></td>                                     
                                        </tr> 
                                    </tbody>
                                </table>
                            </form>
                            <a style="text-decoration: none;" href="${pageContext.request.contextPath}/AdminStaff?action=0">&#60;&#60;<span style="text-decoration: underline;"> Back to Staff list<span></a>
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
