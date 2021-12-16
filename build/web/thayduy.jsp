<%-- 
    Document   : thayduy
    Created on : 16 Sept 2021, 21:10:23
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : index
    Created on : Sep 8, 2021, 1:54:47 PM
    Author     : Huynh Duy
--%>


<%@page import="com.huynhduy.model.*" %>
<%@page import="com.huynhduy.dao.*" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Huynh Duy Shop</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" />
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="CSS/owl.carousel.css">
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>  
      <jsp:include page="header.jsp"></jsp:include>
      <jsp:include page="/MenuServlet"></jsp:include>
        <div class="container">
           <div class="container">
         <%
            ProductDAO proDAO=new ProductDAO();            
            // pageList
            int first = 0, last = 0, pages = 1;
            int total = 0;int categoryID=0;
            int numPerPage=30; int currentPage=1;
            ArrayList<Product> list;
            if(request.getParameter("cate")==null)
                 list=proDAO.getNewProduct(15);
            else
            {
                categoryID=Integer.parseInt(request.getParameter("cate"));                
                if (request.getParameter("pages") != null) {
                    pages = (int) Integer.parseInt(request.getParameter("pages"));
                    currentPage=pages;
                }
                total=total = proDAO.getCount(categoryID);
                if (total <= numPerPage) {
                    first = 0; 
                    last = total; 
                } else {
                    first = (pages - 1) * numPerPage;
last = numPerPage;
                }
                list=proDAO.getByCategory(categoryID,first,last);
            }
            
            for(Product item:list)
            {                
                %>
                <div class="col-md-4">
                    <div class="single-product-widget">                        
                        <div class="single-wid-product">
                            <a href="ProductDetail?id=<%=item.getProductID()%>">
                                <img src="Images/<%=item.getImages()%>" alt="" class="product-thumb">
                            </a>
                            <h2><a href="ProductDetail?id=<%=item.getProductID()%>"><%=item.getProductName()%></a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                                <ins><%= String.format("%,.0f", item.getPrice()*0.9)%> VND</ins> 
                                <del><%=String.format("%,.0f", item.getPrice())%></del>
                            </div>                            
                        </div>                       
                    </div>
                </div>
                <%
            }
          %>        
    </div>
        </div>
<%
if(request.getParameter("cate")!=null)
{
%>
<div class="row">
    <div class="linkpage">
        <ul class="start">    
    <%   
        //Button Previous
        int back = 0;
        if (pages == 0 || pages == 1) {
            back = 1;//Alway page 1
        } else {
            back = pages - 1;//If pages >= 2 then back - 1
        }
    %>
    <li><a href="index.jsp?cate=<%=categoryID%>&pages=1"><i>&#60;&#60;</i></a></li>
    <li ><a href="index.jsp?cate=<%=categoryID%>&pages=<%=back%>"><i>&#60;</i></a></li>
<%
    //Button Number pages
    int loop = 0, num = 0;
    if ((total / numPerPage) % 2 == 0) 
    {
        num = total / numPerPage;
    } else 
    {
        num = (total + 1) / numPerPage;
    }
    //If total Odd ++1
    if (total % 2 != 0) 
    {
        loop = (total / numPerPage) + 1;
    } 
    else 
    {
        //If total even < fullpage and # fullPage then ++1
        if (total < (num * numPerPage) + numPerPage && total != num * numPerPage) 
        {
            loop = (total / numPerPage) + 1;
        } 
        else 
        {
            //If = fullPage then OK
            loop = (total / numPerPage);
        }
    }
    //Loop number of pages
    for (int i = 1; i <= loop; i++) 
    {%>
        <% 
        if (pages == i) 
        {%> 
            <li <% if(i==currentPage) out.print("style='background-color:yellow;'");%>>
<span><a href="index.jsp?cate=<%=categoryID%>&pages=<%=i%>"><%=i%></a></span></li>
        <%} else 
        {%>
            <li <% if(i==currentPage) out.print("style='background-color:yellow;'");%>>
                <a href="index.jsp?cate=<%=categoryID%>&pages=<%=i%>"><%=i%></a> </li>
        <%}
           }%>
        <%
        //Button Next
        int next = 0;
        //If total odd
        if (total % 2 != 0) 
        {
            if (pages == (total / numPerPage) + 1) 
            {
                next = pages;//Not next
            } else 
            {
                next = pages + 1;//Next
            }
        } 
        else 
        {
            //If total even < fullpage and not fullPage then ++1
            if (total < (num * numPerPage) + numPerPage && total != num * 4) 
            {
               if (pages == (total / numPerPage) + 1) 
                {
                    next = pages;//not next
                } else 
                {
                    next = pages + 1;//Next
                }
            } 
            else 
            {
                //If Pages is the last page Stop Else Next ++1
                if (pages == (total / numPerPage)) 
                {
                    next = pages;//Not next
                } 
                else 
                {
                        next = pages + 1;//Next
                }
            }
        }
        %>
    <li ><a href="index.jsp?cate=<%=categoryID%>&pages=<%=next%>"><i>&#62;</i></a></li>
    <li ><a href="index.jsp?cate=<%=categoryID%>&pages=<%=loop%>"><i>&#62;&#62;</i></a></li>
    </ul>
    </div>
</div>           
<%
}
%>
<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>