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
public class Course {
    private int courseID;
    private String courseName;
    private int catID;
    
    private Category category;

    public Course() {
    }

    public Course(int courseID, String courseName, int catID) {
        this.courseID = courseID;
        this.courseName = courseName;
        this.catID = catID;
    }

    public Course(int courseID, String courseName, int catID, Category category) {
        this.courseID = courseID;
        this.courseName = courseName;
        this.catID = catID;
        this.category = category;
    }

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public int getCatID() {
        return catID;
    }

    public void setCatID(int catID) {
        this.catID = catID;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    
    
    
    
}
