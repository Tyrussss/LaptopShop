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
                <!--<h1 class="text-white"></h1>-->
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
                    <% 
                          int total=0;
                          //page list
                          int first=0, last=0, pages=1;
                          int courseID=0;
                          int numLecturepPERPage=6; int currentPage=1;
                          TeacherDAO teacherDAO=new TeacherDAO();
                          ArrayList<Teacher> listTeacher;  

                        String keyword=request.getParameter("searchKeyWord");
                                
                        LectureDAO lectureDAO = new LectureDAO();
                        ArrayList<Lecture> list;
                      %>

                         <div class="col-lg-9 col-md-8 col-sm-12">
                        <div class="row cards">
                            <%                                                   
                                
                                if (request.getParameter("course") == null || request.getParameter("course").equals("0")) 
                                {                               
                                  
                                    total=lectureDAO.getCountAll();                                    

                                    if(request.getParameter("pages")!=null)
                                    {
                                        pages=(int)Integer.parseInt(request.getParameter("pages"));
                                        currentPage=pages;                                            
                                    }

                                    if(total<=numLecturepPERPage)
                                    {
                                        first=0;
                                        last=total;                                            
                                    }
                                    else
                                    {
                                        first=(pages - 1)*numLecturepPERPage;
                                        last=numLecturepPERPage;
                                    }
                                                                        
                                    list = lectureDAO.getByAll(first,last);
                                }
                            
                            
                                else {
                                        courseID=Integer.parseInt(request.getParameter("course"));
                                        if(request.getParameter("pages")!=null){
                                            pages=(int)Integer.parseInt(request.getParameter("pages"));
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
                            
                             <%
                                            String lesson=itemLecture.getName();
                                            String teacherAvatar=itemTeacher.getAvatar();
                                            String teacherName=itemTeacher.getLecturersName();
                                            String price=String.format("%,.0f",itemLecture.getLectureprice());
                                            String priceSalesoff=String.format("%,.0f",itemLecture.getLectureprice()-100000);
                                            String picturecard=itemLecture.getPicturecard();
                                            int lectureID=itemLecture.getLectureID();
                                            
                                            String link=lesson+"&teacherAvatar="+teacherAvatar+"&teacherName="+teacherName;
                                            link+="&price="+price+"&priceSalesoff="+priceSalesoff+"&picturecard="+picturecard; 
                                            link+="&lectureID="+lectureID;
                                           
                                        %>
                            <div class="cours-bx card">
                                <div class="action-box">
                                    <span class="sale-off"><%="-"+String.format("%,.0f",100-100*(itemLecture.getLectureprice()-100000)/(itemLecture.getLectureprice()))+"%"%></span>
                                    <img class="card-image" src="assets/images/lesson/<%=itemLecture.getPicturecard()%>" alt=""/>
                                    <a href="lectureDetail.jsp?lesson=<%=link%>" class="btn">Read More</a>
                                </div>
                                <div class="card-content">
                                    <div class="card-top">
                                       
                                        <div class="card-tittle "><a href="lectureDetail.jsp?lesson=<%=link%>"><%=lesson%></a></div>

                                        <div class="card-user">
                                            <img class="card-user-avatar" src="assets/images/teacher/<%=teacherAvatar%>" alt=""/>
                                            <div class="card-user-info">

                                                <div class="card-user-top">
                                                    <h4 class="card-user-name"><%=teacherName%></h4>
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
                                            <del><%=String.format("%,.0f",itemLecture.getLectureprice())%><sup>đ</sup></del>
                                            <h5><%=String.format("%,.0f",itemLecture.getLectureprice()-100000)%><sup>đ</sup></h5>
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
//                                 if(request.getParameter("course")!=null)
//                                 {
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
                                        <li <% if(currentPage==1) out.print("style='display:none'");else out.print("class='previous'");%>><a href="index.jsp?course=<%=courseID%>&pages=<%=back%>"><i class="ti-arrow-left"></i> Prev</a></li>
                                            <%
                                                // Button Page Number
                                                int loop=0, num=0;
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
                                                            loop=(total / numLecturepPERPage)+1;                                                            
                                                        }else
                                                        {
                                                            // if fullpage is OK
                                                            loop= total/numLecturepPERPage;
                                                        }
                                                    }
                                                //Lopp number of page
                                                for (int i=1;i<=loop;i++)
                                                {%>
                                                    <%
                                                    if (pages==i)
                                                    {%>
                                                        <li <% if(i==currentPage) out.print("class='active'"); if(loop==1) out.print("style='display:none'");%>><a href="index.jsp?course=<%=courseID%>&pages=<%=i%>"><%=i%></a></li>
                                                    <% }
                                                    else
                                                    {%>
                                                        <li <% if(i==currentPage) out.print("class='active'");%>><a href="index.jsp?course=<%=courseID%>&pages=<%=i%>"><%=i%></a></li>
                                                    <%}
                                                 }%>
                                 <%
                                     // Button next
                                     int next=0;
                                     //if total odđ
                                     if(total % 2 !=0)
                                     {
                                         if (pages==(total / numLecturepPERPage)+1){
                                             next=pages; // not Next
                                         }else
                                         {
                                             next=pages+1;
                                         }
                                     }
                                     else
                                     {
                                         //if total even < fullpage and not fullpage then ++1
                                         if(total<(num*numLecturepPERPage)+numLecturepPERPage && total!=num*4)
                                         {
                                             if (pages== (total/numLecturepPERPage)+1)
                                             {
                                                 next=pages;// not Next
                                             }else
                                             {
                                                 next=pages+1;
                                             }
                                         }
                                         else
                                         {
                                             // If Pages is the last page stop Else Next ++1
                                             if (pages==(total / numLecturepPERPage))
                                             {
                                                 next=pages;
                                             }
                                             else
                                             {
                                                 next=pages+1;
                                             }
                                                                                         
                                         }
                                     }                                     
                                     %>
                                        <li class="next" <%if(currentPage==loop || loop==0) out.print("style='display:none'");%>><a href="index.jsp?course=<%=courseID%>&pages=<%=next%>">Next<i class="ti-arrow-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- contact area END -->

</div>
