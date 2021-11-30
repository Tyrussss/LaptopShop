<%-- 
    Document   : menu
    Created on : Sep 9, 2021, 4:22:55 PM
    Author     : TuyenTyrusNg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "com.tuyenng.dao.*"%>
<%@page import = "com.tuyenng.model.*"%>
<%@page import = "java.util.ArrayList"%>
<!DOCTYPE html>

    
        <div class="header-gnavi">
            <ul class="nav">
                
                <%
                    ArrayList<ProductTypes> list = (ArrayList<ProductTypes>)request.getAttribute("typelists");
                    for (ProductTypes item:list){
                        
                    out.print( "<li class='menu-dropdown'> <a href''>");
                    out.print("<div class='icon'><i class='ico'><img src=''></i> </div>");
                    out.print("<div class='txt'> <a href='ListProductServlet?productstype="+ String.valueOf(item.getProductsType())+"'>");
                    out.print(item.getProductsType()+ "</a>" );                  
                    out.print("</div>");
                    out.print("</a>");
                    out.print("</li>");
                    
                    
                    }
                %>    
                    
            </ul>
        </div>
    
                    

