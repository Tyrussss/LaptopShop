/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.controller;

import com.btcomputer.DAO.CategoryDAO;
import com.btcomputer.DAO.StaffDAO;
import com.btcomputer.model.Category;
import com.btcomputer.model.Staff;
import java.io.IOException;
//import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
@WebServlet(name = "AdminStaff", urlPatterns = {"/AdminStaff"})
public class AdminStaff extends HttpServlet {

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
        int staffID;
        int action = Integer.parseInt(request.getParameter("action"));
        StaffDAO staffDAO = new StaffDAO();
        switch (action) {
            case 0:
                ArrayList<Staff> listStaff = staffDAO.getALL();
                request.setAttribute("listStaff", listStaff);

                request.getRequestDispatcher("/admin/staff.jsp").forward(request, response);
                break;

            case 1:
                Staff newStaff = new Staff();
                String fullname = request.getParameter("fullname");
                newStaff.setFullname(fullname);
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                try {
                    newStaff.setDateofBirth(sdf.parse(request.getParameter("dateofbirth")));
                } catch (ParseException e) {
                    Logger.getLogger(AdminStaff.class.getName()).log(Level.SEVERE, null, e);
                }
                String gender = request.getParameter("gender");
                boolean gendersql;
                if (gender.equals("Male")) {
                    gendersql = true;
                } else {
                    gendersql = false;
                }
                newStaff.setGender(gendersql);
                newStaff.setAddress(request.getParameter("address"));
                newStaff.setPhone(request.getParameter("phone"));
                String username = request.getParameter("username");
                newStaff.setUsername(username);
                newStaff.setPassword(request.getParameter("password"));
                String admin = request.getParameter("admin");
                boolean adminsql;
                if (admin.equals("Yes")) {
                    adminsql = true;
                } else {
                    adminsql = false;
                }
                newStaff.setAdmin(adminsql);
//                request.getSession().setAttribute("newStaff", newStaff);

                if (staffDAO.addNew(newStaff)) {
                    request.setAttribute("alert", "success");
                    request.setAttribute("message", "Add new staff successfully!");
                    request.getRequestDispatcher("/admin/staffAddnew.jsp").forward(request, response);
//                } else {
//                    ArrayList<Staff> listStaff1 = staffDAO.getALL();
//                    boolean flag = false;
//                    for (Staff item : listStaff1) {
//                        if (item.getUsername().equals(username)) {
//                            flag = true;
//                            break;
//                        }
//
//                    }
//                    if (flag == true) {
//                        request.setAttribute("alert", "warning");
//                        request.setAttribute("message", "User name is existing!");
//                        request.getRequestDispatcher("AdminStaff?action=5").forward(request, response);

                    } else {
                        request.setAttribute("alert", "warning");
                        request.setAttribute("message", "Add new staff failed!");
                        request.getRequestDispatcher("AdminStaff?action=5").forward(request, response);
                    }
                
                    break;

                
        
        case 2:
                staffID = Integer.parseInt(request.getParameter("staffID"));
                Staff staff = staffDAO.getbyID(staffID);
                request.setAttribute("staff", staff);
                request.getRequestDispatcher("/admin/staffEdit.jsp").forward(request, response);
                break;

            case 3:
                staffID = Integer.parseInt(request.getParameter("staffID"));
                Staff updateStaff = new Staff();
                updateStaff.setStaffID(staffID);
                fullname = request.getParameter("fullname");
                updateStaff.setFullname(fullname);
                SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
                try {
                    updateStaff.setDateofBirth(sdf1.parse(request.getParameter("dateofbirth")));
                } catch (ParseException e) {
                    Logger.getLogger(AdminStaff.class.getName()).log(Level.SEVERE, null, e);
                }
                gender = request.getParameter("gender");
                if (gender.equals("Male")) {
                    gendersql = true;
                } else {
                    gendersql = false;
                }
                updateStaff.setGender(gendersql);
                updateStaff.setAddress(request.getParameter("address"));
                updateStaff.setPhone(request.getParameter("phone"));
                updateStaff.setUsername(request.getParameter("username"));
                updateStaff.setPassword(request.getParameter("password"));
                admin = request.getParameter("admin");

                if (admin.equals("Yes")) {
                    adminsql = true;
                } else {
                    adminsql = false;
                }
                updateStaff.setAdmin(adminsql);

                if (staffDAO.update(updateStaff)) {
                    request.setAttribute("alert", "success");
                    request.setAttribute("message", "Update staff ID_" + staffID + "_" + fullname + " successfully!");
                    request.getRequestDispatcher("/AdminStaff?action=0").forward(request, response);
                } else {
                    request.setAttribute("alert", "warning");
                    request.setAttribute("message", "Update staff failed!");
                    request.getRequestDispatcher("AdminStaff?action=0").forward(request, response);
                }

                break;

            case 4:
                staffID = Integer.parseInt(request.getParameter("staffID"));
                fullname = staffDAO.getbyID(staffID).getFullname();
                if (staffDAO.delete(staffID)) {
                    request.setAttribute("alert", "success");
                    request.setAttribute("message", "Delete category ID_" + staffID + "_" + fullname + " successfully!");
                    request.getRequestDispatcher("AdminStaff?action=0").forward(request, response);
                } else {
                    //Thêm một mesage popup là delte không thành công  
                    request.setAttribute("alert", "warning");
                    request.setAttribute("message", "Staff ID is existing in Order");
                    request.getRequestDispatcher("AdminStaff?action=0").forward(request, response);
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
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
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
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
