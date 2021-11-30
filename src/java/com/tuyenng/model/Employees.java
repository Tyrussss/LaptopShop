/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuyenng.model;

import java.util.Date;

/**
 *
 * @author TuyenTyrusNg
 */
public class Employees {
    private String userName;
    private String password;
    private String name;
    private Date doB;
    private String email;
    private String phone;
    private String address;
    private Boolean status;
    private String avatar;

    public Employees() {
    }

    public Employees(String userName, String password, String name, Date doB, String email, String phone, String address, Boolean status, String avatar) {
        this.userName = userName;
        this.password = password;
        this.name = name;
        this.doB = doB;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.status = status;
        this.avatar = avatar;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDoB() {
        return doB;
    }

    public void setDoB(Date doB) {
        this.doB = doB;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
    
    
}
