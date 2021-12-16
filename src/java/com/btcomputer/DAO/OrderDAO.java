/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.DAO;
import com.btcomputer.model.Order;
import com.btcomputer.model.Orderdetail;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author nguye
 */
public class OrderDAO {
      private UtilDB ultiDB;

    public OrderDAO() {

        ultiDB = new UtilDB();
        ultiDB.connect();
    }
    
    public boolean addNew (Order order){
        String query ="insert into BillOrder (accountID,orderDate,statusID) values (?,?,?)";
        try {
            PreparedStatement pstm=ultiDB.getConnection().prepareStatement(query);
            String date=new SimpleDateFormat("yyyy-MM-dd").format(order.getOrderDate());
            pstm.setInt(1, order.getAccountID());
            pstm.setString(2, date);
            pstm.setInt(3, order.getStatusID());
            int result=pstm.executeUpdate();
            if(result!=0){
                return true;
            }
        } catch (SQLException e) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }
    
    public Order getNewOrder(){
        String sql = "Select top 1 * from BillOrder order by oderID desc";
        Statement stm;
        try {
            stm=ultiDB.getConnection().createStatement();
            ResultSet rs=stm.executeQuery(sql);
            if(rs.next()){
                Order order=new Order();
                order.setOderID(rs.getInt("oderID"));
              
                order.setOrderDate(rs.getDate("orderDate"));             
                order.setAccountID(rs.getInt("accountID"));
                order.setStaffID(rs.getInt("staffID"));
                order.setStatusID(rs.getInt("statusID"));
                
                Account_DAO account_DAO=new Account_DAO();
                order.setAccount(account_DAO.getbyID(order.getAccountID()));
                
                StatusDAO statusDAO=new StatusDAO();
                order.setStatus(statusDAO.getbyID(order.getStatusID())); 
                
                OrderDetailDAO orderDetailDAO=new OrderDetailDAO();
                order.setListOrderdetail(orderDetailDAO.getbyID(order.getOderID()));
                
                return order;
            }
        } catch (SQLException e) {
             Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
        
    }
    
    public ArrayList<Order> getByAccountId(int accountID){
        ArrayList<Order> list =new ArrayList<>();
        String sql ="select * from BillOrder where accountID="+accountID+" order by oderID desc";
        Statement stm;
        try {
            stm=ultiDB.getConnection().createStatement();
            ResultSet rs =stm.executeQuery(sql);
            
            while(rs.next()){
                Order order=new Order();
               
                order.setOderID(rs.getInt("oderID"));                
                order.setOrderDate(rs.getDate("orderDate"));             
                order.setAccountID(rs.getInt("accountID"));
                order.setStaffID(rs.getInt("staffID"));
                order.setStatusID(rs.getInt("statusID"));
                
                Account_DAO account_DAO=new Account_DAO();
                order.setAccount(account_DAO.getbyID(order.getAccountID()));
                
                StatusDAO statusDAO=new StatusDAO();
                order.setStatus(statusDAO.getbyID(order.getStatusID())); 
                
                OrderDetailDAO orderDetailDAO=new OrderDetailDAO();
                order.setListOrderdetail(orderDetailDAO.getbyID(order.getOderID()));
                
                list.add(order);
            }
            return list;
            
        } catch (SQLException e) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, e);
        } 
        return null;
    }
    
    public ArrayList<Order> getbyStaffID(int staffID) {
        ArrayList<Order> list=new ArrayList<>();
        String query = "Select * from BillOrder where staffID="+staffID;
        Statement stm;
        try {
            stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Order order = new Order();
                order.setOderID(rs.getInt("oderID"));
                order.setOrderDate(rs.getDate("orderDate"));             
                order.setAccountID(rs.getInt("accountID"));
                order.setStaffID(rs.getInt("staffID"));
                order.setStatusID(rs.getInt("statusID"));
                
                Account_DAO account_DAO=new Account_DAO();
                order.setAccount(account_DAO.getbyID(order.getAccountID()));
                
                StatusDAO statusDAO=new StatusDAO();
                order.setStatus(statusDAO.getbyID(order.getStatusID())); 
                
                OrderDetailDAO orderDetailDAO=new OrderDetailDAO();
                order.setListOrderdetail(orderDetailDAO.getbyID(order.getOderID()));
                
                list.add(order);
                
            }
            return list;
        } catch (SQLException e) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
    
    public Order getById(int orderID){
       
        String sql ="select * from BillOrder where oderID="+orderID;
        Statement stm;
        try {
            stm=ultiDB.getConnection().createStatement();
            ResultSet rs =stm.executeQuery(sql);
            
            while(rs.next()){
                Order order=new Order();
               
                order.setOderID(rs.getInt("oderID"));
                order.setOrderDate(rs.getDate("orderDate"));             
                order.setAccountID(rs.getInt("accountID"));
                order.setStaffID(rs.getInt("staffID"));
                order.setStatusID(rs.getInt("statusID"));
                
                Account_DAO account_DAO=new Account_DAO();
                order.setAccount(account_DAO.getbyID(order.getAccountID()));
                
                StatusDAO statusDAO=new StatusDAO();
                order.setStatus(statusDAO.getbyID(order.getStatusID())); 
                
                StaffDAO staffDAO=new StaffDAO();
                order.setStaff(staffDAO.getbyID(order.getStaffID()));
                
                OrderDetailDAO orderDetailDAO=new OrderDetailDAO();
                order.setListOrderdetail(orderDetailDAO.getbyID(order.getOderID()));
                
                return order;
            }
            
            
        } catch (SQLException e) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
    
}
