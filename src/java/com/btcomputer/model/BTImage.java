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
public class BTImage {
    private int imageID;
    private String imageName;
    private String url;
    private BTProduct product;

    public BTImage() {
    }

    public BTImage(int imageID, String imageName, String url, BTProduct product) {
        this.imageID = imageID;
        this.imageName = imageName;
        this.url = url;
        this.product = product;
    }

    public int getImageID() {
        return imageID;
    }

    public void setImageID(int imageID) {
        this.imageID = imageID;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public BTProduct getProduct() {
        return product;
    }

    public void setProduct(BTProduct product) {
        this.product = product;
    }
    
    
}
