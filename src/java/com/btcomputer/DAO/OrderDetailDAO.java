/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.DAO;

import com.btcomputer.model.Account;
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
public class OrderDetailDAO {
    private UtilDB ultiDB;

    public OrderDetailDAO() {

        ultiDB = new UtilDB();
        ultiDB.connect();
    }
    
    public ArrayList<Orderdetail> getbyID(int orderID) {
        ArrayList<Orderdetail> list=new ArrayList<>();
        String query = "Select * from BillOrderdetail where orderID="+orderID;
        Statement stm;
        try {
            stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Orderdetail orderdetail = new Orderdetail();
                orderdetail.setOrderID(rs.getInt("orderID"));
                orderdetail.setLectureID(rs.getInt("lectureID"));
                orderdetail.setQuantity(rs.getInt("quantity"));  
                
                LectureDAO lectureDAO=new LectureDAO();
                orderdetail.setLecture(lectureDAO.getbyID(orderdetail.getLectureID()));
                list.add(orderdetail);
                
            }
            return list;
        } catch (SQLException e) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
    
    public boolean addNew (Orderdetail orderdetail){
        String query ="insert into BillOrderdetail(orderID,lectureID) values (?,?)";
        try {
            PreparedStatement pstm=ultiDB.getConnection().prepareStatement(query);
            
            pstm.setInt(1, orderdetail.getOrderID());
            
            pstm.setInt(2, orderdetail.getLectureID());
            int result=pstm.executeUpdate();
            if(result!=0){
                return true;
            }
        } catch (SQLException e) {
            Logger.getLogger(OrderDetailDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }
    
    
}
