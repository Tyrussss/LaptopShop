/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.model;

/**
 *
 * @author nguye
 */
public class BTProduct {
    private String productID;
    private String producName;
    private String productDescription;
    private int productPrice;
    private int productStock;
    private String productManufacturer;
    private boolean productStatus;
    
    private BTProductType productType;

    public BTProduct() {
    }

    public BTProduct(String productID, String producName, String productDescription, int productPrice, int productStock, String productManufacturer, boolean productStatus, BTProductType productType) {
        this.productID = productID;
        this.producName = producName;
        this.productDescription = productDescription;
        this.productPrice = productPrice;
        this.productStock = productStock;
        this.productManufacturer = productManufacturer;
        this.productStatus = productStatus;
        this.productType = productType;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProducName() {
        return producName;
    }

    public void setProducName(String producName) {
        this.producName = producName;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public int getProductStock() {
        return productStock;
    }

    public void setProductStock(int productStock) {
        this.productStock = productStock;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public boolean isProductStatus() {
        return productStatus;
    }

    public void setProductStatus(boolean productStatus) {
        this.productStatus = productStatus;
    }

    public BTProductType getProductType() {
        return productType;
    }

    public void setProductType(BTProductType productType) {
        this.productType = productType;
    }
    
    
    
}
