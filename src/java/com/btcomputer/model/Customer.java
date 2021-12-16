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
public class Customer {
   private int customerID;
   private int accountID;
   private String customName;
   private String address;
   private String avatar;
   
   private Account account;

    public Customer() {
    }

    public Customer(int customerID, int accountID, String customName, String address, String avatar) {
        this.customerID = customerID;
        this.accountID = accountID;
        this.customName = customName;
        this.address = address;
        this.avatar = avatar;
    }

    public Customer(int customerID, int accountID, String customName, String address, String avatar, Account account) {
        this.customerID = customerID;
        this.accountID = accountID;
        this.customName = customName;
        this.address = address;
        this.avatar = avatar;
        this.account = account;
    }
    

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getCustomName() {
        return customName;
    }

    public void setCustomName(String customName) {
        this.customName = customName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
   
   
            
}
