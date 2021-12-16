/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.controller;

import com.btcomputer.DAO.Account_DAO;
import com.btcomputer.DAO.LectureDAO;
import com.btcomputer.DAO.OrderDAO;
import com.btcomputer.DAO.OrderDetailDAO;
import com.btcomputer.model.CartItem;
import com.btcomputer.model.Lecture;
import com.btcomputer.model.Order;
import com.btcomputer.model.Orderdetail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author nguye
 */
@WebServlet(name = "OrderServlet", urlPatterns = {"/OrderServlet"})
public class OrderServlet extends HttpServlet {

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
        // PrintWriter out = response.getWriter();

        String user = (String) request.getSession().getAttribute("user");

        if (user == null) {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            LectureDAO lectureDAO = new LectureDAO();
            OrderDAO orderDAO = new OrderDAO();
            Account_DAO account_DAO = new Account_DAO();
            OrderDetailDAO orderDetailDAO = new OrderDetailDAO();

            Order newOrder = new Order();
            newOrder.setOrderDate(new Date());//get today
            newOrder.setAccountID(account_DAO.getByUserName(user).getAccountID());
            newOrder.setStatusID(1); // 1: New order

            if (orderDAO.addNew(newOrder)) {
                Order order = orderDAO.getNewOrder();
                ArrayList<CartItem> list = (ArrayList<CartItem>) request.getSession().getAttribute("lectureList");
               
                for (CartItem elementCart : list) {
                    Orderdetail neworderdetail = new Orderdetail();

                    neworderdetail.setOrderID(order.getOderID());
                    neworderdetail.setLectureID(elementCart.getLecture().getLectureID());
                    boolean rs = orderDetailDAO.addNew(neworderdetail);
                    if (rs == false) {

//                      request.getRequestDispatcher("orderFailed.jsp").forward(request, response);
                        request.setAttribute("OrderFailed", "Order is failed, please check again!");
                        request.getRequestDispatcher("cart.jsp").forward(request, response);
                    }
                }
//                   request.setAttribute("OrderStatus", "Your order is successful!");
                   request.getSession().removeAttribute("lectureList");// clear item in Cart
                   request.getRequestDispatcher("PurchasHistoryServlet").forward(request, response);
                  
            } else {
//                 request.getRequestDispatcher("orderFailed.jsp").forward(request, response);
                request.setAttribute("OrderStatus", "Order is failed, please check again!");
                request.getRequestDispatcher("cart.jsp").forward(request, response);
            }

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
