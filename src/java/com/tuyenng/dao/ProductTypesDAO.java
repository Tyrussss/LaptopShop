/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuyenng.dao;
import com.tuyenng.model.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author TuyenTyrusNg
 */
public class ProductTypesDAO {
    private UtilDB utilDB;

    public ProductTypesDAO(UtilDB utilDB) {
        this.utilDB = utilDB;
    }

    public UtilDB getUtilDB() {
        return utilDB;
    }

    public void setUtilDB(UtilDB utilDB) {
        this.utilDB = utilDB;
    }
    
    public ProductTypesDAO() {
        utilDB = new UtilDB();
        utilDB.connect();
    }
    
    public boolean addNew (ProductTypes producttype) {
        String query = "insert into ProductTypes (producsType, description) value (?, ?)";
        try {
            PreparedStatement pstm = utilDB.getConn().prepareStatement(query);
            pstm.setString(1, producttype.getProductsType());
            pstm.setString(2, producttype.getDescription());
            int result = pstm.executeUpdate();
            if (result != 0) {
                return true;
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(ProductTypesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public boolean update (ProductTypes producttype) {
        String query = "update ProductTypes set productsType =?, description =? where productsType =?";
        try {
            PreparedStatement pstm = utilDB.getConn().prepareStatement(query);
            pstm.setString(1, producttype.getProductsType());
            pstm.setString(2, producttype.getDescription());
            int result = pstm.executeUpdate();
            if (result != 0) {
                return true;
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(ProductTypesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public boolean delete (ProductTypes producttype) {
        boolean flag = false;
        try {
            String query1 = "select * from  Products where productsType ="+producttype.getProductsType();
            Statement stm1 = utilDB.getConn().createStatement();           
            ResultSet rs1 = stm1.executeQuery(query1);
            while (rs1.next()) {flag = true;}
            if (flag == true) {
                return false;
            }
            else{
                String query = "delete from ProductTypes where productsType =?";
                try {
                PreparedStatement pstm = utilDB.getConn().prepareStatement(query);
                pstm.setString(1, producttype.getProductsType());
                
                int result = pstm.executeUpdate();
                if (result != 0) {
                    return true;
                }
            }
                catch (SQLException ex) {
                    Logger.getLogger(ProductTypesDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(ProductTypesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public ArrayList<ProductTypes> getAll() {
        ArrayList<ProductTypes> list = new ArrayList<ProductTypes> ();
        try {
            String query = "select * from  ProductTypes";
            Statement stm = utilDB.getConn().createStatement();           
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) 
            {
                ProductTypes item = new ProductTypes();
                item.setProductsType(rs.getString("productsType"));
                item.setDescription(rs.getString("description"));
                list.add(item);
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(ProductTypesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public ArrayList<ProductTypes> getByType(String productsType) {      
        String sql = "select * from  ProductTypes where productsType ="+productsType;
        Statement stm;
        try {
            
            stm = utilDB.getConn().createStatement();           
            ResultSet rs = stm.executeQuery(sql);
            while (rs.next()) 
            {
                ProductTypes item = new ProductTypes();
                item.setProductsType(rs.getString("productsType"));
                item.setDescription(rs.getString("description"));
            }  
        }
        catch (SQLException ex) {
            Logger.getLogger(ProductTypesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
