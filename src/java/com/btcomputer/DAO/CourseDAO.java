/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.DAO;


import com.btcomputer.model.Course;
import java.sql.PreparedStatement;
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
public class CourseDAO {
    
     private UtilDB ultiDB;

    public CourseDAO() {

        ultiDB = new UtilDB();
        ultiDB.connect();
    }

    public ArrayList<Course> getALL() {
        ArrayList<Course> listCourse= new ArrayList<>();
        try {
            String query = "select * from Course";
            Statement stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);

            while (rs.next()) {
                Course course = new Course();
                course.setCourseID(rs.getInt("courseID"));
                course.setCourseName(rs.getString("courseName"));                
                course.setCatID(rs.getInt("catID"));
                CategoryDAO categoryDAO=new CategoryDAO();
                course.setCategory(categoryDAO.getbyID(course.getCatID()));

                listCourse.add(course);
            }

        } catch (SQLException e) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listCourse;
    }
      public boolean addNew(Course course) {
        
        String query = "insert into Course(courseName, catID) values(?,?)";
        try {
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setString(1, course.getCourseName());
            pstm.setInt(2, course.getCatID());
            int result = pstm.executeUpdate();
            if (result != 0) {
                return true;
            }
        } catch (SQLException e) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
        
    }
      
       public boolean update(Course course){
        
        String query="update course set courseName=?,catID=? where courseID=?";
        try {
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setString(1, course.getCourseName());
            pstm.setInt(2, course.getCatID());
            pstm.setInt(3, course.getCourseID());
            int result = pstm.executeUpdate();
            if(result!=0)
                return true;
        } catch (SQLException e) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }
       
       public boolean delete(int courseID) {
        boolean check = false;// false course ko tồn tại trong Lecture, true là tồn tại và không đc xóa
        String queryString = "select * from lecture where courseID=?";
        try {
            PreparedStatement pstm1 = ultiDB.getConnection().prepareStatement(queryString);
            pstm1.setInt(1, courseID);
            ResultSet result1 = pstm1.executeQuery();
            while (result1.next()) {
                check = true;
            }

            if (check == true) {
                return false;
            } else {
                String query = "delete from course where courseID=?";
                try {
                    PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
                    pstm.setInt(1, courseID);
                    int result = pstm.executeUpdate();
                    if (result != 0) {
                        return true;
                    }
                } catch (SQLException e) {
                    Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, e);
                }
                return false;
            }
        } catch (SQLException e) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, e);
        }
            return false;
    }
     public Course getbyID(int courseID) {
        String query = "Select * from Course where courseID='"+courseID+"'";
        Statement stm;
        try {
            stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            if (rs.next()) {
                Course course = new Course();
                course.setCourseID(rs.getInt("courseID"));
                course.setCourseName(rs.getString("courseName"));                
                course.setCatID(rs.getInt("catID"));
                return course;
            }
        } catch (SQLException e) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
     
     public ArrayList<Course> getByCategory(int categoryID){
         ArrayList<Course> list =new ArrayList<>();
         try {
             String query ="Select * from Course where  catID='"+categoryID+"'";
             Statement stm = ultiDB.getConnection().createStatement();
             ResultSet rs=stm.executeQuery(query);
             while (rs.next()) {
             Course course=new Course();
             course.setCourseID(rs.getInt("courseID"));
             course.setCourseName(rs.getString("courseName"));
             course.setCatID(rs.getInt("catID"));
             
             CategoryDAO categoryDAO=new CategoryDAO();
             course.setCategory(categoryDAO.getbyID(course.getCatID()));
             list.add(course);
             }
             
         } catch (SQLException e) {
              Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, e);
         }
         return list;
     }
    
}
