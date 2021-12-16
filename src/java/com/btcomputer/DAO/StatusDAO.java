/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.DAO;

import com.btcomputer.model.Account;
import com.btcomputer.model.Status;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
public class StatusDAO {
      private UtilDB ultiDB;

    public StatusDAO() {

        ultiDB = new UtilDB();
        ultiDB.connect();
    }
    public Status getbyID(int statusID) {
        String query = "Select * from Status where statusID='"+statusID+"'";
        Statement stm;
        try {
            stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            if (rs.next()) {
                Status status = new Status();
                status.setStatusID(rs.getInt("statusID"));
                status.setStatusName(rs.getString("statusName"));                
                
                return status;
            }
        } catch (SQLException e) {
            Logger.getLogger(StatusDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
}
