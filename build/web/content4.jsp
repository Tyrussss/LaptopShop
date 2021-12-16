<%-- 
    Document   : content
    Created on : 15 Sept 2021, 10:26:52
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.thanhbinh.DAO.*" %>
<%@page import="com.thanhbinh.model.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<div class="page-content bg-white">
    <!-- inner page banner -->
    <div class="page-banner ovbl-dark" style="background-image:url(assets/images/banner/banner3.jpg);">
        <div class="container">
            <div class="page-banner-entry">
                <h1 class="text-white">Our Courses</h1>
            </div>
        </div>
    </div>
    <!-- Breadcrumb row -->
    <div class="breadcrumb-row">
        <div class="container">
            <ul class="list-inline">
                <li><a href="#">Home</a></li>
                <li>Our Courses</li>
            </ul>
        </div>
    </div>
    <!-- Breadcrumb row END -->
    <!-- inner page banner END -->
    <div class="content-block">
        <!-- About Us -->
        <div class="section-area section-sp1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-12 m-b30">
                        <div class="widget courses-search-bx placeani">
                            <div class="form-group">
                                <div class="input-group">
                                    <label>Search Courses</label>
                                    <input name="dzName" type="text" required class="form-control">
                                </div>
                            </div>
                        </div>

                        <div class="widget recent-posts-entry widget-courses">
                            <h5 class="widget-title style-1">BestSeller Courses</h5>
                            <div class="widget-post-bx">

                                <div class="widget-post clearfix">
                                    <div class="ttr-post-media"> <img src="assets/images/blog/recent-blog/pic1.jpg" width="200" height="143" alt=""> </div>
                                    <div class="ttr-post-info">
                                        <div class="ttr-post-header">
                                            <h6 class="post-title"><a href="#">Java2- JSP & Servlet</a></h6>
                                        </div>
                                        <div class="ttr-post-meta">
                                            <ul>
                                                <li class="price">
                                                    <del>$190</del>
                                                    <h5>$120</h5>
                                                </li>
                                                <li class="review">03 Review</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="widget-post clearfix">
                                    <div class="ttr-post-media"> <img src="assets/images/blog/recent-blog/pic3.jpg" width="200" height="160" alt=""> </div>
                                    <div class="ttr-post-info">
                                        <div class="ttr-post-header">
                                            <h6 class="post-title"><a href="#">English Conversation for Business</a></h6>
                                        </div>
                                        <div class="ttr-post-meta">
                                            <ul>
                                                <li class="price">
                                                    <h5 class="free">Free</h5>
                                                </li>
                                                <li class="review">07 Review</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="widget">
                            <a href="#"><img src="assets/images/adv/adv.jpg" alt=""/></a>
                        </div>
                        <div class="widget recent-posts-entry widget-courses">
                            <h5 class="widget-title style-1">Recent Courses</h5>
                            <div class="widget-post-bx">

                                <div class="widget-post clearfix">
                                    <div class="ttr-post-media"> <img src="assets/images/blog/recent-blog/pic1.jpg" width="200" height="143" alt=""> </div>
                                    <div class="ttr-post-info">
                                        <div class="ttr-post-header">
                                            <h6 class="post-title"><a href="#">Google Ads & SEO Master</a></h6>
                                        </div>
                                        <div class="ttr-post-meta">
                                            <ul>
                                                <li class="price">
                                                    <del>$190</del>
                                                    <h5>$120</h5>
                                                </li>
                                                <li class="review">03 Review</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="widget-post clearfix">
                                    <div class="ttr-post-media"> <img src="assets/images/blog/recent-blog/pic3.jpg" width="200" height="160" alt=""> </div>
                                    <div class="ttr-post-info">
                                        <div class="ttr-post-header">
                                            <h6 class="post-title"><a href="#">Zalo for Makerting</a></h6>
                                        </div>
                                        <div class="ttr-post-meta">
                                            <ul>
                                                <li class="price">
                                                    <h5 class="free">Free</h5>
                                                </li>
                                                <li class="review">07 Review</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-8 col-sm-12">
                        <div class="row cards">
                            <%
                                //page list
                                int first=0;int last=0;int pages=1;
                                int total=0; int courseID=0;
                                int numLecturepPERPage=9; int currentPage=1;
                               LectureDAO lectureDAO = new LectureDAO();
                               ArrayList<Lecture> list;
                               TeacherDAO teacherDAO=new TeacherDAO();
                                ArrayList<Teacher> listTeacher;                           
                                
                                if (request.getParameter("course") == null) {
                                  list = lectureDAO.getNewLecture(12);
                                 } 
                                else 
                                {
                                        courseID=Integer.parseInt(request.getParameter("course"));
                                        if(request.getParameter("pages")!=null){
                                            pages=(int) Integer.parseInt(request.getParameter("pages"));
                                            currentPage=pages;                                            
                                        }
                                        total=lectureDAO.getCount(courseID);
                                                
                                        //list = lectureDAO.getByCategory(courseID);
                                        if(total<=numLecturepPERPage){
                                            first=0;
                                            last=total;
                                        }
                                        else{
                                            first=(pages - 1)*numLecturepPERPage;
                                            last=numLecturepPERPage;
                                        }
                                        list = lectureDAO.getByCategory(courseID,first,last);
                                 }
                                for (Lecture itemLecture: list)
                                {      
                                    listTeacher=teacherDAO.getByLecture(itemLecture.getLecturersID());
                                     for (Teacher itemTeacher: listTeacher)
                                     {
                            %>

                            <div class="cours-bx card">
                                <div class="action-box">
                                    <span class="sale-off">-42%</span>
                                    <img class="card-image" src="https://images.unsplash.com/photo-1520901917283-e38755a7fa7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zmxhc2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60" alt=""/>
                                    <a href="#" class="btn">Read More</a>
                                </div>
                                <div class="card-content">
                                    <div class="card-top">
                                        <div class="card-tittle"><%=itemLecture.getName()%></div>

                                        <div class="card-user">
                                            <img class="card-user-avatar" src="assets/images/teacher/<%=itemTeacher.getAvatar()%>" alt=""/>
                                            <div class="card-user-info">

                                                <div class="card-user-top">
                                                    <h4 class="card-user-name"><%=itemTeacher.getLecturersName()%></h4>
                                                    <!--                                                    <ion-icon name="checkmark-circle"></ion-icon>-->
                                                </div>
                                                <!--<div class="card-user-game">Call of duty</div>-->                             


                                            </div>
                                        </div>
                                    </div>

                                    <div class="card-bottom">
                                        <div class="cours-more-info">
                                            <div>
                                                <div>3 Review</div>
                                                <div>
                                                    <ul class="cours-star">
                                                        <li class="active"><i class="fa fa-star"></i></li>
                                                        <li class="active"><i class="fa fa-star"></i></li>
                                                        <li class="active"><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="price">
                                            <del><%=String.format("%,.0f",itemLecture.getLectureprice())%></del>
                                            <h5><%=String.format("%,.0f",itemLecture.getLectureprice()-100000)%></h5>
                                        </div>
                                        <!--<div class="card-watching">4.2k watching</div>-->


                                    </div>
                                </div>
                            </div>
                            <%
                                }
                                }
                            %>

                            <% 
                                  if(request.getParameter("course")!=null)
                                  {
                                    // Button Previous 
                                  int back=0;
                                  if(pages==0 || pages==1){
                                      back=1; //Alwways page 1
                                  }else
                                  {
                                      back=pages-1; // if page >=2 then back -1
                                  }
                                 
                            %>
                            <div class="col-lg-12 m-b20">
                                <div class="pagination-bx rounded-sm gray clearfix">
                                    <ul class="pagination">
                                        <li class="previous"><a href="index.jsp?course=<%=courseID%>&pages=<%=back%>"><i class="ti-arrow-left"></i> Prev</a></li>
                            <%
                                                int loop=0,num=0;
                                                if((total /numLecturepPERPage)%2 ==0){
                                                    num = total / numLecturepPERPage;
                                                }
                                                else{
                                                        num= (total +1)/numLecturepPERPage;
                                                        }
                                                //if total Odđ ++1
                                                if(total % 2 !=0){
                                                    loop =(total / numLecturepPERPage)+1;
                                                }
                                                else{
                                                        // if total even  < fullpage  and # fullPage  then +1
                                                        if (total<(num*numLecturepPERPage)+numLecturepPERPage && total != num*numLecturepPERPage){
                                                            loop=(total/numLecturepPERPage)+1;                                                            
                                                        }else
                                                        {
                                                            // if fullpage is OK
                                                            loop= total/numLecturepPERPage;
                                                        }
                                                    }
                                                //Lopp number of page
                            %>

                                        <li class="active"><a href=""></a></li>



                                        <li class="active"><a href=""></a></li>                                                    



                                        <li class="next"><a href="">Next<i class="ti-arrow-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- contact area END -->

</div>
