/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.model;

import java.util.Date;

/**
 *
 * @author nguye
 */
public class BTBill {
    private int billID;
    private Date billDate;
    private String billCustomerID;
    private String billStaffID;
    private int billStatusID;

    public BTBill() {
    }

    public BTBill(int billID, Date billDate, String billCustomerID, String billStaffID, int billStatusID) {
        this.billID = billID;
        this.billDate = billDate;
        this.billCustomerID = billCustomerID;
        this.billStaffID = billStaffID;
        this.billStatusID = billStatusID;
    }

    public int getBillID() {
        return billID;
    }

    public void setBillID(int billID) {
        this.billID = billID;
    }

    public Date getBillDate() {
        return billDate;
    }

    public void setBillDate(Date billDate) {
        this.billDate = billDate;
    }

    public String getBillCustomerID() {
        return billCustomerID;
    }

    public void setBillCustomerID(String billCustomerID) {
        this.billCustomerID = billCustomerID;
    }

    public String getBillStaffID() {
        return billStaffID;
    }

    public void setBillStaffID(String billStaffID) {
        this.billStaffID = billStaffID;
    }

    public int getBillStatusID() {
        return billStatusID;
    }

    public void setBillStatusID(int billStatusID) {
        this.billStatusID = billStatusID;
    }
    
    
    
    
    
}
