/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.controller;


import com.btcomputer.DAO.CategoryDAO;
import com.btcomputer.DAO.CourseDAO;
import com.btcomputer.model.Category;
import com.btcomputer.model.Course;
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
@WebServlet(name = "AdminCourse", urlPatterns = {"/AdminCourse"})
public class AdminCourse extends HttpServlet {

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
        int courseID;
        int catID = 0;
        int action = Integer.parseInt(request.getParameter("action"));
        CourseDAO courseDAO = new CourseDAO();
        CategoryDAO categoryDAO = new CategoryDAO();

        switch (action) {
            case 0:
                ArrayList<Course> listCourse = new ArrayList<>();
                catID = Integer.parseInt(request.getParameter("catID"));
                if (catID == 0) {
                    listCourse = courseDAO.getALL();
                } else {
                    listCourse = courseDAO.getByCategory(catID);
                }

                ArrayList<Category> listCategory = categoryDAO.getALL();
                request.setAttribute("listCategory", listCategory);
                request.setAttribute("listCourse", listCourse);
                request.setAttribute("catID", catID);
                request.getRequestDispatcher("/admin/course.jsp").forward(request, response);
                break;

            case 1:
                catID = Integer.parseInt(request.getParameter("catID"));
                listCategory = categoryDAO.getALL();
                request.setAttribute("listCategory", listCategory);
                request.setAttribute("catID", catID);
                request.getRequestDispatcher("/admin/courseAddnew.jsp").forward(request, response);

                break;

            case 2:
                Course newCourse = new Course();
                catID = Integer.parseInt(request.getParameter("catID"));
                String courseName=request.getParameter("courseName");
                newCourse.setCourseName(courseName);
                newCourse.setCatID(Integer.parseInt(request.getParameter("catID")));
                if (!request.getParameter("courseName").isBlank()) {
                    if (courseDAO.addNew(newCourse)) {
                        request.setAttribute("catID", catID);
                        request.setAttribute("alertCurrent", "success");
                        request.setAttribute("messageCurrent", "Add new course " +courseName+" successfully!");
                        request.getRequestDispatcher("AdminCourse?action=1&catID="+catID).forward(request, response);

                    } else {
                        request.setAttribute("alertCurrent", "warning");
                        request.setAttribute("messageCurrent", "Add new course failed!");
                        request.getRequestDispatcher("AdminCourse?action=2").forward(request, response);
                    }
                } else {
                    request.setAttribute("alertCurrent", "warning");
                    request.setAttribute("messageCurrent", "Please enter coure name");
                    request.getRequestDispatcher("AdminCourse?action=1").forward(request, response);
                }
                break;

            case 3:
                courseID = Integer.parseInt(request.getParameter("courseID"));
                Course course = courseDAO.getbyID(courseID);
                listCategory = categoryDAO.getALL();
                request.setAttribute("listCategory", listCategory);
                request.setAttribute("course", course);
                request.getRequestDispatcher("/admin/courseEdit.jsp").forward(request, response);
                break;
            case 4:
                courseID = Integer.parseInt(request.getParameter("courseID"));
                catID = Integer.parseInt(request.getParameter("catID"));
                Course updateCourse = new Course();
                updateCourse.setCourseID(courseID);
                updateCourse.setCourseName(request.getParameter("courseName"));
                updateCourse.setCatID(catID);
                if (!request.getParameter("courseName").isBlank()) {
                    if (courseDAO.update(updateCourse)) {
                        request.setAttribute("alert", "success");
                        request.setAttribute("message", "Update course ID: " + courseID + " successfully!");
                        request.getRequestDispatcher("/AdminCourse?action=0&catID=" + catID).forward(request, response);
                    } else {
                        request.setAttribute("alertCurrent", "warning");
                        request.setAttribute("messageCurrent", "Update course failed!");
                        request.getRequestDispatcher("/AdminCourse?action=0&catID=" + catID).forward(request, response);
                    }
                } else {

                    request.getRequestDispatcher("AdminCourse?action=5&catID=" + catID).forward(request, response);
                }
                break;

            case 5:
                courseID = Integer.parseInt(request.getParameter("courseID"));
                catID = Integer.parseInt(request.getParameter("catID"));
                listCategory = categoryDAO.getALL();
                request.setAttribute("alertCurrent", "warning");
                request.setAttribute("messageCurrent", "Please enter course name");
                Course course1 = new Course();
                course1.setCatID(Integer.parseInt(request.getParameter("catID")));
                course1.setCourseID(courseID);
                course1.setCourseName("");
                request.setAttribute("course", course1);
                request.setAttribute("listCategory", listCategory);
                request.getRequestDispatcher("/admin/courseEdit.jsp").forward(request, response);
                break;

            case 6:
                courseID = Integer.parseInt(request.getParameter("courseID"));
                catID = Integer.parseInt(request.getParameter("catID"));
                if (courseDAO.delete(courseID)) {
                    request.setAttribute("alert", "success");
                    request.setAttribute("message", "Delete course ID: " +courseID+ " successfully!");
                    request.getRequestDispatcher("AdminCourse?action=0&catID="+catID).forward(request, response);
                } else {
                    //Thêm một mesage popup là delte không thành công  
                    request.setAttribute("alert", "warning");
                    request.setAttribute("message", "Category ID is existing in Cousre");
                    request.getRequestDispatcher("AdminCourse?action=0&catID="+catID).forward(request, response);
                }
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
