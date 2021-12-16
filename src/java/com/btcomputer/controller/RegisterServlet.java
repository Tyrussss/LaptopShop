/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.controller;

import com.btcomputer.DAO.Account_DAO;
import com.btcomputer.DAO.CategoryDAO;
import com.btcomputer.model.Account;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.codec.cli.Digest;
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author nguye
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

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
        Account account=new Account();
        account.setFullname(request.getParameter("Fullname"));
        
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        Date date=new Date();
        try {
            String stringDate =request.getParameter("DateofBirth");
            date=sdf.parse(stringDate);
//             try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            
//            out.println("<h1>Servlet NewServlet at " + stringDate+ "</h1>");
//            
//        }
        } catch (Exception e) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, e);
        }
        account.setDateofbirth(date);
        account.setEmail(request.getParameter("Email"));
        account.setPhone(request.getParameter("Phone"));
        account.setUsername(request.getParameter("Username"));
        account.setPassword(request.getParameter("Password"));
        
        // Generate code
        String myHash;
        Random random=new Random();
        random.nextInt(999999);
        myHash=DigestUtils.md5Hex(""+random);
        
        Account_DAO account_DAO=new Account_DAO();
        if(account_DAO.addNew(account)){
            request.getRequestDispatcher("index.jsp").forward(request, response);
            
        }
        else
        {
            request.setAttribute("errorMessage", "Register Member Fail!");
            request.getRequestDispatcher("register.jsp").forward(request, response);
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
