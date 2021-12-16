/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuyenng.dao;
import com.tuyenng.model.*;
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
public class ProductsDAO {
    private UtilDB utilDB;

    public ProductsDAO(UtilDB utilDB) {
        this.utilDB = utilDB;
    }

    public UtilDB getUtilDB() {
        return utilDB;
    }

    public void setUtilDB(UtilDB utilDB) {
        this.utilDB = utilDB;
    }
    
    public ProductsDAO() {
        utilDB = new UtilDB();
        utilDB.connect();
    }
    public ArrayList<Products> getByType (String productstype) {
        ArrayList<Products> list = new ArrayList<Products>();
        try {
            String query = "select * from products where productstype =" + productstype;
            Statement stm = utilDB.getConn().createStatement();
            ResultSet rs = stm.executeQuery(query);
            while(rs.next()){
                Products item = new Products();
                item.setProductID(rs.getString("productID"));
                item.setName(rs.getString("name"));
                item.setProductstype(rs.getString("productstype"));
                ProductTypesDAO proDAO = new ProductTypesDAO();
                item.getProductstypes(proDAO.getByType(item.getProductstype()));
                list.add(item);
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(ProductsDAO.class.getName()).log(Level.SEVERE, null, ex);     
        }
        return list;
    }
    
    public ArrayList<Products> getNewProduct (int number) {
        ArrayList<Products> list = new ArrayList<Products>();
        try {
            String query = "select top "+number+" from products order by debutYear desc";
            Statement stm = utilDB.getConn().createStatement();
            ResultSet rs = stm.executeQuery(query);
            while(rs.next()){
                Products item = new Products();
                item.setProductID(rs.getString("productID"));
                item.setName(rs.getString("name"));
                item.setProductstype(rs.getString("productstype"));
                item.setDebutYear(rs.getDate("debutYear"));
                ProductTypesDAO proDAO = new ProductTypesDAO();
                item.getProductstypes(proDAO.getByType(item.getProductstype()));
                list.add(item);
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(ProductsDAO.class.getName()).log(Level.SEVERE, null, ex);     
        }
        return list;
    }
    public ArrayList<Products> getByID (String productID) {
        ArrayList<Products> list = new ArrayList<Products>();
        try {
            String query = "select * from products where productstype =" + productID;
            Statement stm = utilDB.getConn().createStatement();
            ResultSet rs = stm.executeQuery(query);
            while(rs.next()){
                Products item = new Products();
                item.setProductID(rs.getString("productID"));
                item.setName(rs.getString("name"));
                item.setProductstype(rs.getString("productstype"));
                ProductTypesDAO proDAO = new ProductTypesDAO();
                item.getProductstypes(proDAO.getByType(item.getProductstype()));
                list.add(item);
            }
        }
        catch (SQLException ex) {
            Logger.getLogger(ProductsDAO.class.getName()).log(Level.SEVERE, null, ex);     
        }
        return list;
    }
}
