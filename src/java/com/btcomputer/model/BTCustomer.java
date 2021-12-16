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
public class BTCustomer {
   private int customerID;
   private String customName;
   private String userName;
   private String passWord;
   private String email;
   private String phone;
   private String address;
   private String gender;
   private int age;
   private String dateCreate ;

    public BTCustomer() {
    }

    public BTCustomer(int customerID, String customName, String userName, String passWord, String email, String phone, String address, String gender, int age, String dateCreate) {
        this.customerID = customerID;
        this.customName = customName;
        this.userName = userName;
        this.passWord = passWord;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
        this.age = age;
        this.dateCreate = dateCreate;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public String getCustomName() {
        return customName;
    }

    public void setCustomName(String customName) {
        this.customName = customName;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(String dateCreate) {
        this.dateCreate = dateCreate;
    }
   

}
