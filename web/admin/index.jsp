<%-- 
    Document   : index.jsp
    Created on : 27 Sept 2021, 20:21:26
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">EJB Test3_Nguyễn Thanh Bình</li></br>
                            
                            
                            
                        </ol>
                       
<!--                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Primary Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Warning Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Success Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Danger Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>-->
                        <div class="row">
                            <div class="col-md-12">
                               
                                    
                                    <!--<div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>-->
                                    <div class="card-body"><img style="width: 100%" src="./assets/img/EJBTest3.png"></div>
                             
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
