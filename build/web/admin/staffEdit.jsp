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
                                 <i style="color:green" class="far fa-edit"></i> Edit Staff</div>
                                 <c:if test="${not empty requestScope.message}" >
                                <div class="alert alert-${alert}">
                                 <strong style="text-transform:capitalize">${alert}!</strong> ${message}
                                </div>
                                 </c:if>
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/AdminStaff" method="post" onsubmit="return AdminCheckData()">
                                    <input type="hidden" name="action" value="3"/>
                                <table>    
                                    <tbody>                                 
                                       <tr>
                                            <td style="padding:0 20px 20px 0">Staff ID</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" name="staffID" value="${staff.staffID}" readonly="true" class="form-control"/></td>                                           
                                            <td style="padding:0 20px 20px 100px">Phone</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Phone" name="phone" value="${staff.phone}" placeholder="Phone number" class="form-control"/></td>  
                                        </tr>     
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Full Name</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Fullname" name="fullname" value="${staff.fullname}" placeholder="Full name " class="form-control"/></td> 
                                            <td style="padding:0 20px 20px 100px">Username</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Username" name="username" value="${staff.username}" placeholder="User name"  class="form-control"/></td> 
                                        </tr> 
                                        
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Date of Birth</td>
                                            <td style="padding:0 20px 20px 0"><input type="date" id="DateofBirth" value="${staff.dateofBirth}" name="dateofbirth"  class="form-control"/></td>                                     
                                            <td style="padding:0 20px 20px 100px">Password</td>
                                            <td style="padding:0 20px 20px 0"><input type="password" id="Password" name="password" value="${staff.password}" placeholder="Password"  class="form-control"/></td> 
                                        </tr> 
                                        
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Gender</td>
                                            <td style="padding:0 20px 20px 0">
                                                
                                                <input type="radio" id="Male" name="gender" value="Male" ${staff.gender==true?"checked":""}>                                                
                                                <label style="margin-right:10px;" >Male</label>
                                               
                                                <input type="radio" id="Female" name="gender" value="Female"  ${staff.gender==false?"checked":""}>                                                
                                                <label style="margin-right:10px;">Female</label>
                                               
                                            </td>  
                                            
                                            <td style="padding:0 20px 20px 100px">Admin</td>
                                            <td style="padding:0 20px 20px 0">
                                               
                                                <input type="radio" id="Yes" name="admin" value="Yes" ${staff.admin==true?"checked":""}>                                              
                                                <label style="margin-right:10px;">Yes</label>
                                              
                                                <input type="radio" id="No" name="admin" value="No" ${staff.admin==false?"checked":""}>                                                
                                                <label style="margin-right:10px;">No</label>
                                               
                                            </td>  
                                        </tr> 
                                        
                                        <tr>
                                            <td style="padding:0 20px 20px 0">Address</td>
                                            <td style="padding:0 20px 20px 0"><input type="text" id="Address" name="address" value="${staff.address}" placeholder="Address" class="form-control"/></td>                                     
                                        </tr> 
                                        
                                        <tr>                                            
                                            <td colspan="2" style="text-align: center"><input type="submit" value="Update" class="btn-primary"/></td>                                     
                                        </tr> 
                                    </tbody>
                                </table>
                            </form>
                                        <p></p>
                            <a style="text-decoration: none;" href="${pageContext.request.contextPath}/AdminStaff?action=0">&#60;&#60;<span style="text-decoration: underline;"> Back to Staff list</span></a>
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
