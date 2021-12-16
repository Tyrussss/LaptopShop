/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.DAO;

import com.btcomputer.model.Category;
import com.btcomputer.model.Staff;
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
public class StaffDAO {

    private UtilDB ultiDB;

    public StaffDAO() {

        ultiDB = new UtilDB();
        ultiDB.connect();
    }

    public Staff CheckLogin(String user, String pass) {
        try {
            String query = "Select * from Staff where username=? and password=?";
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setString(1, user);
            pstm.setString(2, pass);
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                Staff staff = new Staff();
                staff.setStaffID(rs.getInt("staffID"));
                staff.setFullname(rs.getString("fullname"));
                staff.setDateofBirth(rs.getDate("dateofBirth"));
                staff.setGender(rs.getBoolean("gender"));
                staff.setAddress(rs.getString("address"));
                staff.setPhone(rs.getString("phone"));
                staff.setUsername(rs.getString("username"));
                staff.setPassword(rs.getString("password"));
                staff.setAdmin(rs.getBoolean("admin"));

                return staff;
            }
        } catch (SQLException e) {
            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public ArrayList<Staff> getALL() {
        ArrayList<Staff> listStaff = new ArrayList<>();
        try {
            String query = "select * from Staff";
            Statement stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);

            while (rs.next()) {
                Staff staff = new Staff();
                staff.setStaffID(rs.getInt("staffID"));
                staff.setFullname(rs.getString("fullname"));
                staff.setDateofBirth(rs.getDate("dateofBirth"));
                staff.setGender(rs.getBoolean("gender"));
                staff.setAddress(rs.getString("address"));
                staff.setPhone(rs.getString("phone"));
                staff.setUsername(rs.getString("username"));
                staff.setPassword(rs.getString("password"));
                staff.setAdmin(rs.getBoolean("admin"));

                OrderDAO orderDAO = new OrderDAO();
                staff.setListOrder(orderDAO.getbyStaffID(staff.getStaffID()));

                listStaff.add(staff);
            }

        } catch (SQLException e) {
            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listStaff;
    }

    public boolean addNew(Staff staff) {

        String query = "insert into staff(fullname,dateofBirth,gender,address,phone,username,password,admin) values(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setString(1, staff.getFullname());
            String date = new SimpleDateFormat("yyyy-MM-dd").format(staff.getDateofBirth());
            pstm.setString(2, date);
            pstm.setBoolean(3, staff.isGender());
            pstm.setString(4, staff.getAddress());
            pstm.setString(5, staff.getPhone());
            pstm.setString(6, staff.getUsername());
            pstm.setString(7, staff.getPassword());
            pstm.setBoolean(8, staff.isAdmin());
            int result = pstm.executeUpdate();
            if (result != 0) {
                return true;
            }
        } catch (SQLException e) {
//            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
        return false;

    }

    public Staff getbyID(int staffID) {
        String query = "Select * from staff where staffID=" + staffID;
        Statement stm;
        try {
            stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            if (rs.next()) {
                Staff staff = new Staff();
                staff.setStaffID(rs.getInt("staffID"));
                staff.setFullname(rs.getString("fullname"));
                staff.setDateofBirth(rs.getDate("dateofBirth"));
                staff.setGender(rs.getBoolean("gender"));
                staff.setAddress(rs.getString("address"));
                staff.setPhone(rs.getString("phone"));
                staff.setUsername(rs.getString("username"));
                staff.setPassword(rs.getString("password"));
                staff.setAdmin(rs.getBoolean("admin"));

                OrderDAO orderDAO = new OrderDAO();
                staff.setListOrder(orderDAO.getbyStaffID(staff.getStaffID()));
                
                return staff;
            }
        } catch (SQLException e) {
            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
    
    public boolean update(Staff staff){
        //fullname,dateofBirth,gender,address,phone,username,password,admin
        String query="update staff set fullname=?,dateofBirth=?,gender=?,address=?,phone=?,";
        query+="username=?,password=?,admin=? where staffID=?";       
      
        
        try {
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setString(1, staff.getFullname());
            String date = new SimpleDateFormat("yyyy-MM-dd").format(staff.getDateofBirth());
            pstm.setString(2, date);
            pstm.setBoolean(3, staff.isGender());
            pstm.setString(4, staff.getAddress());
            pstm.setString(5, staff.getPhone());
            pstm.setString(6, staff.getUsername());
            pstm.setString(7, staff.getPassword());
            pstm.setBoolean(8, staff.isAdmin());
            pstm.setInt(9, staff.getStaffID());
            int result = pstm.executeUpdate();
            if(result!=0)
                return true;
        } catch (SQLException e) {
            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }
    
    public boolean delete(int staffID) {
        boolean check = false;// false catID ko tồn tại trong Course, true là tồn tại và không đc xóa
        String queryString = "select * from BillOrder where staffID=?";
        try {
            PreparedStatement pstm1 = ultiDB.getConnection().prepareStatement(queryString);
            pstm1.setInt(1, staffID);
            ResultSet result1 = pstm1.executeQuery();
            while (result1.next()) {
                check = true;
            }

            if (check == true) {
                return false;
            } else {
                String query = "delete from staff where staffID=?";
                try {
                    PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
                    pstm.setInt(1, staffID);
                    int result = pstm.executeUpdate();
                    if (result != 0) {
                        return true;
                    }
                } catch (SQLException e) {
                    Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, e);
                }
                return false;
            }
        } catch (SQLException e) {
            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, e);
        }
            return false;
    }
}
