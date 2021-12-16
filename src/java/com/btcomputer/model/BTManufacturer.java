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
public class BTManufacturer {
    private int manufacturerID;
    private String manufacturerName;
    
    private BTNation nation;

    public BTManufacturer() {
    }

    public BTManufacturer(int manufacturerID, String manufacturerName, BTNation nation) {
        this.manufacturerID = manufacturerID;
        this.manufacturerName = manufacturerName;
        this.nation = nation;
    }

    public int getManufacturerID() {
        return manufacturerID;
    }

    public void setManufacturerID(int manufacturerID) {
        this.manufacturerID = manufacturerID;
    }

    public String getManufacturerName() {
        return manufacturerName;
    }

    public void setManufacturerName(String manufacturerName) {
        this.manufacturerName = manufacturerName;
    }

    public BTNation getNation() {
        return nation;
    }

    public void setNation(BTNation nation) {
        this.nation = nation;
    }
    
    
    
}
