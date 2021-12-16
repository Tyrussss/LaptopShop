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
public class LectureDetail {
    private int lectureID;
    private String lecturename;
    private String lecturePart;
    private int lectureDuration;

    public LectureDetail() {
    }

    public LectureDetail(int lectureID, String lecturename, String lecturePart, int lectureDuration) {
        this.lectureID = lectureID;
        this.lecturename = lecturename;
        this.lecturePart = lecturePart;
        this.lectureDuration = lectureDuration;
    }

    public int getLectureID() {
        return lectureID;
    }

    public void setLectureID(int lectureID) {
        this.lectureID = lectureID;
    }

    public String getLecturename() {
        return lecturename;
    }

    public void setLecturename(String lecturename) {
        this.lecturename = lecturename;
    }

    public String getLecturePart() {
        return lecturePart;
    }

    public void setLecturePart(String lecturePart) {
        this.lecturePart = lecturePart;
    }

    public int getLectureDuration() {
        return lectureDuration;
    }

    public void setLectureDuration(int lectureDuration) {
        this.lectureDuration = lectureDuration;
    }
    
    
    
}
