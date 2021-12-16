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
public class CartItem {
    private Lecture lecture;
    private int quantity;

    public CartItem() {
    }

    public CartItem(Lecture lecture, int quantity) {
        this.lecture = lecture;
        this.quantity = quantity;
    }

    public Lecture getLecture() {
        return lecture;
    }

    public void setLecture(Lecture lecture) {
        this.lecture = lecture;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
}
