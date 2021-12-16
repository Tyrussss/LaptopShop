/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.DAO;

import com.btcomputer.model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
public class Account_DAO {

    private UtilDB ultiDB;

    public Account_DAO() {

        ultiDB = new UtilDB();
        ultiDB.connect();
    }

    public boolean addNew(Account account) {
        String query = "insert into Account (fullname,username,password,email,phone,dateofbirth,hashCode) values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setString(1, account.getFullname());
            pstm.setString(2, account.getUsername());
            pstm.setString(3, account.getPassword());
            pstm.setString(4, account.getPhone());
            pstm.setString(5, account.getEmail());

         //   String searchText = String.format("%s %s", account.getFullname(), account.getEmail());

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String date = sdf.format(account.getDateofbirth());
            pstm.setString(6, date);
            pstm.setString(7, account.getHashCode());

            int result = pstm.executeUpdate();
            if (result != 0) {
                return true;

            }
        } catch (SQLException e) {
            Logger.getLogger(Account_DAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }

    public boolean CheckLogin(String user, String pass) {
        try {
            String query = "Select * from Account  where username=? and password=?";
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setString(1, user);
            pstm.setString(2, pass);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            Logger.getLogger(Account_DAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }

    public Account getbyID(int accountID) {
        String query = "Select * from Account where accountID='" + accountID + "'";
        Statement stm;
        try {
            stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            if (rs.next()) {
                Account account = new Account();
                account.setAccountID(rs.getInt("accountID"));
                account.setFullname(rs.getString("fullname"));

                return account;
            }
        } catch (Exception e) {
            Logger.getLogger(Account_DAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public Account getByUserName(String user) {

        try {
            String query = "Select * from Account where username='" + user + "'";
            Statement stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Account account = new Account();
                account.setAccountID(rs.getInt("accountID"));
                account.setFullname(rs.getString("fullname"));
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
                account.setEmail(rs.getString("email"));
                account.setPhone(rs.getString("phone"));
                account.setDateofbirth(rs.getDate("dateofbirth"));
                return account;
            }
        } catch (SQLException e) {
            Logger.getLogger(Account_DAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;

    }

//    public List<Account> search(String searchText, String orderBy, boolean acs) {
//        try {
//            String query = " Select * from Account ";
//            
//            query += " where 1=1 ";
//            
//            if (searchText != null && searchText.length() > 0){
//                query += " and searchText like '%" + searchText + "%'" ;
//            }
//            
//            if (orderBy != null && orderBy.length() > 0){
//                query += " order by " + orderBy;
//                if (Boolean.TRUE.equals(acs)){
//                     query += " ASC ";
//                } else {
//                     query += " DESC ";
//                }
//            }
//            
//            Statement stm = ultiDB.getConnection().createStatement();
//            ResultSet rs = stm.executeQuery(query);
//            while (rs.next()) {
//                Account account = new Account();
//                account.setAccountID(rs.getInt("accountID"));
//                account.setFullname(rs.getString("fullname"));
//                account.setUsername(rs.getString("username"));
//                account.setPassword(rs.getString("password"));
//                account.setEmail(rs.getString("email"));
//                account.setPhone(rs.getString("phone"));
//                account.setDateofbirth(rs.getDate("dateofbirth"));
////                return account;
//            }
//        } catch (SQLException e) {
//            Logger.getLogger(Account_DAO.class.getName()).log(Level.SEVERE, null, e);
//        }
//        return new ArrayList<>();
//
//    }
}
