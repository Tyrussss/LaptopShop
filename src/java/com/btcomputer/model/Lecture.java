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
public class Lecture {
    private int lectureID;
    private int courseID;
    private int lecturersID;
    private String name;
    private double lectureprice;
    private String description;
    private String video;
    private String picturecard;
    
    private Teacher teacher;
    private Course course;
    
    public Lecture() {
    }

    public Lecture(int lectureID, int courseID, int lecturersID, String name, double lectureprice, String description, String video, String picturecard, Teacher teacher, Course course) {
        this.lectureID = lectureID;
        this.courseID = courseID;
        this.lecturersID = lecturersID;
        this.name = name;
        this.lectureprice = lectureprice;
        this.description = description;
        this.video = video;
        this.picturecard = picturecard;
        this.teacher = teacher;
        this.course = course;
    }

    public Lecture(int lectureID, int courseID, int lecturersID, String name, double lectureprice, String description, String video) {
        this.lectureID = lectureID;
        this.courseID = courseID;
        this.lecturersID = lecturersID;
        this.name = name;
        this.lectureprice = lectureprice;
        this.description = description;
        this.video = video;
    }

    public Lecture(int lectureID, int courseID, int lecturersID, String name, double lectureprice, String description, String video, Teacher teacher, Course course) {
        this.lectureID = lectureID;
        this.courseID = courseID;
        this.lecturersID = lecturersID;
        this.name = name;
        this.lectureprice = lectureprice;
        this.description = description;
        this.video = video;
        this.teacher = teacher;
        this.course = course;
    }

    public int getLectureID() {
        return lectureID;
    }

    public void setLectureID(int lectureID) {
        this.lectureID = lectureID;
    }

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public int getLecturersID() {
        return lecturersID;
    }

    public void setLecturersID(int lecturersID) {
        this.lecturersID = lecturersID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getLectureprice() {
        return lectureprice;
    }

    public void setLectureprice(double lectureprice) {
        this.lectureprice = lectureprice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String getPicturecard() {
        return picturecard;
    }

    public void setPicturecard(String picturecard) {
        this.picturecard = picturecard;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }
   
    
}
