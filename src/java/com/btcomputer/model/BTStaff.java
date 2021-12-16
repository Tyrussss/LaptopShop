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
public class BTStaff {
    
    private int staffID;
    private String staffName;
    private String userName;
    private String passWord;
    private Date dateofBirth;
    private boolean gender;
    private String address;
    private String phone;   
    private boolean admin;

    public BTStaff() {
    }

    public BTStaff(int staffID, String staffName, String userName, String passWord, Date dateofBirth, boolean gender, String address, String phone, boolean admin) {
        this.staffID = staffID;
        this.staffName = staffName;
        this.userName = userName;
        this.passWord = passWord;
        this.dateofBirth = dateofBirth;
        this.gender = gender;
        this.address = address;
        this.phone = phone;
        this.admin = admin;
    }

    public int getStaffID() {
        return staffID;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public Date getDateofBirth() {
        return dateofBirth;
    }

    public void setDateofBirth(Date dateofBirth) {
        this.dateofBirth = dateofBirth;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }
    
    
}
