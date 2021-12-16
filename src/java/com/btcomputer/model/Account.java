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
public class Account {

    private int accountID;
    private String fullname;
    private String username;
    private String password;
    private String email;
    private String phone;
    private Date dateofbirth;
    private String hashCode;
//    private String searchText;

    public Account() {
    }

    public Account(int accountID, String fullname, String username, String password, String email, String phone, Date dateofbirth, String hashCode) {
        this.accountID = accountID;
        this.fullname = fullname;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.dateofbirth = dateofbirth;
        this.hashCode = hashCode;
    }

    public Account(int accountID, String fullname, String username, String password, String email, String phone, Date dateofbirth) {
        this.accountID = accountID;
        this.fullname = fullname;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.dateofbirth = dateofbirth;
    }

    public Account(int accountID, String username, String password, String email, String phone, Date dateofbirth) {
        this.accountID = accountID;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.dateofbirth = dateofbirth;
    }

    public Account(int accountID, String username, String password, String email, String phone) {
        this.accountID = accountID;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(Date dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getHashCode() {
        return hashCode;
    }

    public void setHashCode(String hashCode) {
        this.hashCode = hashCode;
    }
    
    
    
}
