/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuyenng.model;

/**
 *
 * @author TuyenTyrusNg
 */
public class ProductTypes {
    private String productsType;
    private String description;

    public ProductTypes() {
    }

    public ProductTypes(String productsType, String description) {
        this.productsType = productsType;
        this.description = description;
    }

    public String getProductsType() {
        return productsType;
    }

    public void setProductsType(String productsType) {
        this.productsType = productsType;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
