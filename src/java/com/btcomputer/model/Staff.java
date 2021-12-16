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
public class Staff {
    private int staffID;
    private String fullname;
    private Date dateofBirth;
    private boolean gender;
    private String address;
    private String phone;
    private String username;
    private String password;
    private boolean admin;
    
    private ArrayList<Order> listOrder;

    public Staff() {
    }

    public Staff(int staffID, String fullname, Date dateofBirth, boolean gender, String address, String phone, String username, String password, boolean admin) {
        this.staffID = staffID;
        this.fullname = fullname;
        this.dateofBirth = dateofBirth;
        this.gender = gender;
        this.address = address;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.admin = admin;
    }

    public Staff(int staffID, String fullname, Date dateofBirth, boolean gender, String address, String phone, String username, String password, boolean admin, ArrayList<Order> listOrder) {
        this.staffID = staffID;
        this.fullname = fullname;
        this.dateofBirth = dateofBirth;
        this.gender = gender;
        this.address = address;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.admin = admin;
        this.listOrder = listOrder;
    }

  

     
    public int getStaffID() {
        return staffID;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
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

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    public ArrayList<Order> getListOrder() {
        return listOrder;
    }

    public void setListOrder(ArrayList<Order> listOrder) {
        this.listOrder = listOrder;
    }

 
    
    
    
}
