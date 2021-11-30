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
public class InvoiceDetails {
    private int quantity;
    private int unitPrice;
    private int invoiceID;
    private int productID;
    private Invoices invoice;
    private Products product;

    public InvoiceDetails() {
    }

    public InvoiceDetails(int quantity, int unitPrice, int invoiceID, int productID, Invoices invoice, Products product) {
        this.quantity = quantity;
        this.unitPrice = unitPrice;
        this.invoiceID = invoiceID;
        this.productID = productID;
        this.invoice = invoice;
        this.product = product;
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

    public int getInvoiceID() {
        return invoiceID;
    }

    public void setInvoiceID(int invoiceID) {
        this.invoiceID = invoiceID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public Invoices getInvoice() {
        return invoice;
    }

    public void setInvoice(Invoices invoice) {
        this.invoice = invoice;
    }

    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }
    
    
}
