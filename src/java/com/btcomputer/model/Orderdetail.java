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
public class Orderdetail {
    private int orderID;
    private int lectureID;
    private int quantity;
    
//    private Order invoice;
    private Lecture lecture;

    public Orderdetail() {
    }

    public Orderdetail(int orderID, int quantity) {
        this.orderID = orderID;
        this.quantity = quantity;
    }

    public Orderdetail(int orderID, int lectureID, int quantity, Lecture lecture) {
        this.orderID = orderID;
        this.lectureID = lectureID;
        this.quantity = quantity;
//        this.invoice = invoice;
        this.lecture = lecture;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getLectureID() {
        return lectureID;
    }

    public void setLectureID(int lectureID) {
        this.lectureID = lectureID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    
    public Lecture getLecture() {
        return lecture;
    }

    public void setLecture(Lecture lecture) {
        this.lecture = lecture;
    }

    
    
    
    
}
