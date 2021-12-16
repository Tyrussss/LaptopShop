/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.DAO;

import com.btcomputer.model.Category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
public class CategoryDAO {

    private UtilDB ultiDB;

    public CategoryDAO() {

        ultiDB = new UtilDB();
        ultiDB.connect();
    }

    public ArrayList<Category> getALL() {
        ArrayList<Category> listCat = new ArrayList<>();
        try {
            String query = "select * from Category";
            Statement stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);

            while (rs.next()) {
                Category category = new Category();
                category.setCatID(rs.getInt("catID"));
                category.setCatName(rs.getString("catName"));

                listCat.add(category);
            }

        } catch (Exception e) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listCat;
    }

    public Category getbyID(int catID) {
        String query = "Select * from Category where catID="+catID;
        Statement stm;
        try {
            stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            if (rs.next()) {
                Category category = new Category();
                category.setCatID(rs.getInt("catID"));
                category.setCatName(rs.getString("catName"));
                return category;
            }
        } catch (SQLException e) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public boolean addNew(Category category) {
        
        String query = "insert into Category(catName) values(?)";
        try {
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setString(1, category.getCatName());
            int result = pstm.executeUpdate();
            if (result != 0) {
                return true;
            }
        } catch (SQLException e) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
        
    }

    public boolean delete(int catID) {
        boolean check = false;// false catID ko tồn tại trong Course, true là tồn tại và không đc xóa
        String queryString = "select * from Course where catID=?";
        try {
            PreparedStatement pstm1 = ultiDB.getConnection().prepareStatement(queryString);
            pstm1.setInt(1, catID);
            ResultSet result1 = pstm1.executeQuery();
            while (result1.next()) {
                check = true;
            }

            if (check == true) {
                return false;
            } else {
                String query = "delete from Category where catID=?";
                try {
                    PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
                    pstm.setInt(1, catID);
                    int result = pstm.executeUpdate();
                    if (result != 0) {
                        return true;
                    }
                } catch (SQLException e) {
                    Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, e);
                }
                return false;
            }
        } catch (SQLException e) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, e);
        }
            return false;
    }
    
    public boolean update(Category category){
        
        String query="update category set catName=? where catID=?";
        try {
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setString(1, category.getCatName());
            pstm.setInt(2, category.getCatID());
            int result = pstm.executeUpdate();
            if(result!=0)
                return true;
        } catch (SQLException e) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }
}
