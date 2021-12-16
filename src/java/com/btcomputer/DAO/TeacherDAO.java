/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.DAO;

import com.btcomputer.model.Lecture;
import com.btcomputer.model.Teacher;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
public class TeacherDAO {
     private UtilDB ultiDB;

    public TeacherDAO() {

        ultiDB = new UtilDB();
        ultiDB.connect();
    }

    public ArrayList<Teacher> getALL() {
        ArrayList<Teacher> list = new ArrayList<>();
        try {
            String query = "select * from Teacher";
            Statement stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);

            while (rs.next()) {
                Teacher teacher = new Teacher();
                teacher.setLecturersID(rs.getInt("lecturersID"));
                teacher.setAccountID(rs.getInt("accountID"));
                teacher.setLecturersName(rs.getString("lecturersName"));
                teacher.setSpecialize(rs.getString("specialize"));
                teacher.setDescription(rs.getString("description"));
                teacher.setNumberofstudent(rs.getInt("numberofstudent"));
                teacher.setAvatar(rs.getString("avatar"));
                

                list.add(teacher);
            }

        } catch (Exception e) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }
    
    public Teacher getbyID(int teacherID) {
        String query = "Select * from Teacher where lecturersID='" + teacherID + "'";
        Statement stm;
        try {
            stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            if (rs.next()) {
                Teacher teacher = new Teacher();
                teacher.setLecturersID(rs.getInt("lecturersID"));
                teacher.setAccountID(rs.getInt("accountID"));
                teacher.setLecturersName(rs.getString("lecturersName"));
                teacher.setSpecialize(rs.getString("specialize"));
                teacher.setDescription(rs.getString("description"));
                teacher.setNumberofstudent(rs.getInt("numberofstudent"));
                teacher.setAvatar(rs.getString("avatar"));

                return teacher;
            }
        } catch (Exception e) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

     public ArrayList<Teacher> getByLecture(int teacherID) {
        ArrayList<Teacher> list = new ArrayList<>();
        try {
            String query = "Select * from Teacher where  lecturersID='" + teacherID + "'";
            Statement stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Teacher teacher = new Teacher();
                teacher.setLecturersID(rs.getInt("lecturersID"));
                teacher.setAccountID(rs.getInt("accountID"));
                teacher.setLecturersName(rs.getString("lecturersName"));
                teacher.setSpecialize(rs.getString("specialize"));
                teacher.setDescription(rs.getString("description"));
                teacher.setNumberofstudent(rs.getInt("numberofstudent"));
                teacher.setAvatar(rs.getString("avatar"));

               
                list.add(teacher);
            }

        } catch (SQLException e) {
            Logger.getLogger(TeacherDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }
}
