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
public class BTBillDetail {
    private int invoiceID;
    private String productID;
    private int quantity;
    private int unitPrice;

    public BTBillDetail() {
    }

    public BTBillDetail(int invoiceID, String productID, int quantity, int unitPrice) {
        this.invoiceID = invoiceID;
        this.productID = productID;
        this.quantity = quantity;
        this.unitPrice = unitPrice;
    }

    public int getInvoiceID() {
        return invoiceID;
    }

    public void setInvoiceID(int invoiceID) {
        this.invoiceID = invoiceID;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(int unitPrice) {
        this.unitPrice = unitPrice;
    }
    
    
}
