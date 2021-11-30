/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuyenng.model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author TuyenTyrusNg
 */
public class Products {
    private String productID;
    private String name;
    private String descriptions;
    private int price;
    private int stock;
    private String maker;
    private String cpu;
    private String ram;
    private String screen;
    private String gpu;
    private String ssd;
    private String hdd;
    private int weight;
    private Date debutYear;
    private Boolean status;
    private String productstype;
    private ProductTypes productstypes;
    private ArrayList<Images> listImages;

    public Products() {
    }

    public Products(String productID, String name, String descriptions, int price, int stock, String marker, String cpu, String ram, String screen, String gpu, String ssd, String hdd, int weight, Date debutYear, Boolean status, String productstype, ProductTypes productstypes) {
        this.productID = productID;
        this.name = name;
        this.descriptions = descriptions;
        this.price = price;
        this.stock = stock;
        this.maker = marker;
        this.cpu = cpu;
        this.ram = ram;
        this.screen = screen;
        this.gpu = gpu;
        this.ssd = ssd;
        this.hdd = hdd;
        this.weight = weight;
        this.debutYear = debutYear;
        this.status = status;
        this.productstype = productstype;
        this.productstypes = productstypes;
        this.listImages = listImages;
    }
    
    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getMaker() {
        return maker;
    }

    public void setMaker(String maker) {
        this.maker = maker;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getScreen() {
        return screen;
    }

    public void setScreen(String screen) {
        this.screen = screen;
    }

    public String getGpu() {
        return gpu;
    }

    public void setGpu(String gpu) {
        this.gpu = gpu;
    }

    public String getSsd() {
        return ssd;
    }

    public void setSsd(String ssd) {
        this.ssd = ssd;
    }

    public String getHdd() {
        return hdd;
    }

    public void setHdd(String hdd) {
        this.hdd = hdd;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public Date getDebutYear() {
        return debutYear;
    }

    public void setDebutYear(Date debutYear) {
        this.debutYear = debutYear;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getProductstype() {
        return productstype;
    }

    public void setProductstype(String productstype) {
        this.productstype = productstype;
    }

    public ProductTypes getProductstypes() {
        return productstypes;
    }

    public void setProductstypes(ProductTypes productstypes) {
        this.productstypes = productstypes;
    }

    public ArrayList<Images> getListImages() {
        return listImages;
    }

    public void setListImages(ArrayList<Images> listImages) {
        this.listImages = listImages;
    }

    public void getProductstypes(ArrayList<ProductTypes> byType) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
