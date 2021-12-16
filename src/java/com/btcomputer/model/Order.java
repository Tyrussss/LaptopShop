/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author nguye
 */
public class Order {
    private int oderID;
    private int accountID;
    private Date orderDate;
    private int staffID;
    private int statusID;
    
    private Account account;
    private Status status;
    private Staff staff;
    private ArrayList<Orderdetail> listOrderdetail;
    

    public Order() {
    }

    public Order(int oderID, int accountID, Date orderDate, int staffID, int statusID) {
        this.oderID = oderID;
        this.accountID = accountID;
        this.orderDate = orderDate;
        this.staffID = staffID;
        this.statusID = statusID;
    }

    public Order(int oderID, int accountID, Date orderDate, int staffID, int statusID, Account account, Status status, ArrayList<Orderdetail> listOrderdetail) {
        this.oderID = oderID;
        this.accountID = accountID;
        this.orderDate = orderDate;
        this.staffID = staffID;
        this.statusID = statusID;
        this.account = account;
        this.status = status;
        this.listOrderdetail = listOrderdetail;
    }

    public Order(int oderID, int accountID, Date orderDate, int staffID, int statusID, Account account, Status status, Staff staff, ArrayList<Orderdetail> listOrderdetail) {
        this.oderID = oderID;
        this.accountID = accountID;
        this.orderDate = orderDate;
        this.staffID = staffID;
        this.statusID = statusID;
        this.account = account;
        this.status = status;
        this.staff = staff;
        this.listOrderdetail = listOrderdetail;
    }

    public int getOderID() {
        return oderID;
    }

    public void setOderID(int oderID) {
        this.oderID = oderID;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int customerID) {
        this.accountID = customerID;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public int getStaffID() {
        return staffID;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }

    public int getStatusID() {
        return statusID;
    }

    public void setStatusID(int statusID) {
        this.statusID = statusID;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public ArrayList<Orderdetail> getListOrderdetail() {
        return listOrderdetail;
    }

    public void setListOrderdetail(ArrayList<Orderdetail> listOrderdetail) {
        this.listOrderdetail = listOrderdetail;
    }

    public Staff getStaff() {
        return staff;
    }

    public void setStaff(Staff staff) {
        this.staff = staff;
    }

  
    
}
