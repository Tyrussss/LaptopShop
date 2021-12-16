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
public class Teacher {
    
    private int lecturersID;
    private int accountID;
    private String lecturersName;
    private String specialize;
    private String description;
    private int numberofstudent;
    private String avatar;
    
    private Account account;
    

    public Teacher() {
    }

    public Teacher(int lecturersID, int accountID, String lecturersName, String specialize, String description, int numberofstudent, String avatar) {
        this.lecturersID = lecturersID;
        this.accountID = accountID;
        this.lecturersName = lecturersName;
        this.specialize = specialize;
        this.description = description;
        this.numberofstudent = numberofstudent;
        this.avatar = avatar;
    }

    public Teacher(int lecturersID, int accountID, String lecturersName, String specialize, String description, int numberofstudent, String avatar, Account account) {
        this.lecturersID = lecturersID;
        this.accountID = accountID;
        this.lecturersName = lecturersName;
        this.specialize = specialize;
        this.description = description;
        this.numberofstudent = numberofstudent;
        this.avatar = avatar;
        this.account = account;
    }
    

    public int getLecturersID() {
        return lecturersID;
    }

    public void setLecturersID(int lecturersID) {
        this.lecturersID = lecturersID;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getLecturersName() {
        return lecturersName;
    }

    public void setLecturersName(String lecturersName) {
        this.lecturersName = lecturersName;
    }

    public String getSpecialize() {
        return specialize;
    }

    public void setSpecialize(String specialize) {
        this.specialize = specialize;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNumberofstudent() {
        return numberofstudent;
    }

    public void setNumberofstudent(int numberofstudent) {
        this.numberofstudent = numberofstudent;
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
