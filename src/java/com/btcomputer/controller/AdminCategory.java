/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.controller;


import com.btcomputer.DAO.CategoryDAO;
import com.btcomputer.model.Category;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;


/**
 *
 * @author nguye
 */
@WebServlet(name = "AdminCategory", urlPatterns = {"/AdminCategory"})
public class AdminCategory extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        int catID;
        int action = Integer.parseInt(request.getParameter("action"));
        CategoryDAO categoryDAO = new CategoryDAO();
        switch (action) {
            case 0:
                ArrayList<Category> listCategory = categoryDAO.getALL();
                request.setAttribute("listCategory", listCategory);

                request.getRequestDispatcher("/admin/category.jsp").forward(request, response);
                break;
            case 1:
                Category newCategory = new Category();
                newCategory.setCatName(request.getParameter("categoryName"));
                if (!request.getParameter("categoryName").isBlank()) {
                    if (categoryDAO.addNew(newCategory)) {
                        request.setAttribute("alert", "success");
                        request.setAttribute("message", "Add new category successfully!");
                        request.getRequestDispatcher("/admin/categoryAddnew.jsp").forward(request, response);

                    } else {
                        request.setAttribute("alert", "warning");
                        request.setAttribute("message", "Add new category failed!");
                        request.getRequestDispatcher("AdminCategory?action=1").forward(request, response);
                    }
                } else {
                    request.setAttribute("alert", "warning");
                    request.setAttribute("message", "Please enter category name");
                    request.getRequestDispatcher("/admin/categoryAddnew.jsp").forward(request, response);
                }
                break;

            case 2:
                catID = Integer.parseInt(request.getParameter("catID"));
                Category category = categoryDAO.getbyID(catID);
                request.setAttribute("category", category);
                request.getRequestDispatcher("/admin/categoryEdit.jsp").forward(request, response);
                break;
            case 3:
                catID = Integer.parseInt(request.getParameter("catID"));
                if (categoryDAO.delete(catID)) {
                    request.setAttribute("alertCate", "success");
                    request.setAttribute("messageCate", "Delete category ID: " + catID + " successfully!");
                    request.getRequestDispatcher("AdminCategory?action=0").forward(request, response);
                } else {
                    //Thêm một mesage popup là delte không thành công  
                    request.setAttribute("alertCate", "warning");
                    request.setAttribute("messageCate", "Category ID is existing in Cousre");
                    request.getRequestDispatcher("AdminCategory?action=0").forward(request, response);
                }
                break;
            case 4:
                catID=Integer.parseInt(request.getParameter("categoryID"));
                Category updatecategory = new Category();
                updatecategory.setCatID(Integer.parseInt(request.getParameter("categoryID")));
                updatecategory.setCatName(request.getParameter("categoryName"));
                if (!request.getParameter("categoryName").isBlank()) {
                    if (categoryDAO.update(updatecategory)) {
                        request.setAttribute("alertCate", "success");
                        request.setAttribute("messageCate", "Update category ID: "+catID+" successfully!");                        
                        request.getRequestDispatcher("/AdminCategory?action=0").forward(request, response);
                    } else {
                        request.setAttribute("alert", "warning");
                        request.setAttribute("message", "Update category failed!");
                        request.getRequestDispatcher("AdminCategory?action=0").forward(request, response);
                    }
                } 
                else {
                   
                    request.getRequestDispatcher("AdminCategory?action=5&catID="+catID).forward(request, response);
                }
                break;
            case 5:
                request.setAttribute("alert", "warning");
                request.setAttribute("message", "Please enter category name");
                Category category1=new Category();
                category1.setCatID(Integer.parseInt(request.getParameter("catID")));
                category1.setCatName("");
                request.setAttribute("category", category1);
                request.getRequestDispatcher("/admin/categoryEdit.jsp").forward(request, response);
                break;                
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
