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
public class Images {
    private String id;
    private String name;
    private String url;
    private String productID;

    public Images() {
    }

    public Images(String id, String name, String url, String productID) {
        this.id = id;
        this.name = name;
        this.url = url;
        this.productID = productID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }
    
    
}
