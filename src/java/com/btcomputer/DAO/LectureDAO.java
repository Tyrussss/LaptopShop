/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.DAO;

import com.btcomputer.model.Category;
import com.btcomputer.model.Course;
import com.btcomputer.model.Lecture;
import com.btcomputer.model.Staff;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
public class LectureDAO {

    private UtilDB ultiDB;

    public LectureDAO() {

        ultiDB = new UtilDB();
        ultiDB.connect();
    }

    public ArrayList<Lecture> getALL() {
        ArrayList<Lecture> list = new ArrayList<>();
        try {
            String query = "select * from Lecture";
            Statement stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);

            while (rs.next()) {
                Lecture lecture = new Lecture();
                lecture.setLectureID(rs.getInt("lectureID"));
                lecture.setCourseID(rs.getInt("courseID"));
                lecture.setLecturersID(rs.getInt("lecturersID"));
                lecture.setName(rs.getString("name"));
                lecture.setLectureprice(rs.getDouble("lectureprice"));
                lecture.setDescription(rs.getString("description"));
                lecture.setVideo(rs.getString("video"));
                lecture.setPicturecard(rs.getString("picturecard"));

                list.add(lecture);
            }

        } catch (SQLException e) {
            Logger.getLogger(LectureDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public ArrayList<Lecture> getNewLecture(int number) {
        ArrayList<Lecture> list = new ArrayList<>();
        try {
            String query = "Select top " + number + "* from Lecture order by lectureID desc";
            Statement stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                Lecture lecture = new Lecture();
                lecture.setLectureID(rs.getInt("lectureID"));
                lecture.setCourseID(rs.getInt("courseID"));
                lecture.setLecturersID(rs.getInt("lecturersID"));
                lecture.setName(rs.getString("name"));
                lecture.setLectureprice(rs.getDouble("lectureprice"));
                lecture.setDescription(rs.getString("description"));
                lecture.setVideo(rs.getString("video"));
                lecture.setPicturecard(rs.getString("picturecard"));

                list.add(lecture);
            }
        } catch (SQLException e) {
            Logger.getLogger(LectureDAO.class.getName()).log(Level.SEVERE, null, e);

        }
        return list;
    }

    public Lecture getbyID(int lectureID) {
        String query = "Select * from Lecture where lectureID=" + lectureID;
        Statement stm;
        try {
            stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            if (rs.next()) {
                Lecture lecture = new Lecture();
                lecture.setLectureID(rs.getInt("lectureID"));
                lecture.setCourseID(rs.getInt("courseID"));
                lecture.setLecturersID(rs.getInt("lecturersID"));
                lecture.setName(rs.getString("name"));
                lecture.setLectureprice(rs.getDouble("lectureprice"));
                lecture.setDescription(rs.getString("description"));
                lecture.setVideo(rs.getString("video"));
                lecture.setPicturecard(rs.getString("picturecard"));
                CourseDAO courseDAO = new CourseDAO();
                lecture.setCourse(courseDAO.getbyID(lecture.getCourseID()));
                TeacherDAO teacherDAO = new TeacherDAO();
                lecture.setTeacher(teacherDAO.getbyID(lecture.getLecturersID()));

                return lecture;
            }
        } catch (SQLException e) {
            Logger.getLogger(LectureDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public ArrayList<Lecture> getByCategory(int courseID, int start, int number) {
        ArrayList<Lecture> list = new ArrayList<>();
        try {
            String query = "Select * from Lecture where  courseID =? order by lectureID";
            query += " OFFSET ? ROWS FETCH NEXT ? ROW ONLY";
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setInt(1, courseID);
            pstm.setInt(2, start);
            pstm.setInt(3, number);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Lecture lecture = new Lecture();
                lecture.setLectureID(rs.getInt("lectureID"));
                lecture.setCourseID(rs.getInt("courseID"));
                lecture.setLecturersID(rs.getInt("lecturersID"));
                lecture.setName(rs.getString("name"));
                lecture.setLectureprice(rs.getDouble("lectureprice"));
                lecture.setDescription(rs.getString("description"));
                lecture.setVideo(rs.getString("video"));
                lecture.setPicturecard(rs.getString("picturecard"));

                CourseDAO courseDAO = new CourseDAO();
                lecture.setCourse(courseDAO.getbyID(lecture.getCourseID()));
                list.add(lecture);
            }

        } catch (SQLException e) {
            Logger.getLogger(LectureDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public ArrayList<Lecture> getByCourse(int courseID) {
        ArrayList<Lecture> list = new ArrayList<>();
        try {
            String query = "Select * from Lecture where  courseID =? order by lectureID desc";

            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setInt(1, courseID);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Lecture lecture = new Lecture();
                lecture.setLectureID(rs.getInt("lectureID"));
                lecture.setCourseID(rs.getInt("courseID"));
                lecture.setLecturersID(rs.getInt("lecturersID"));
                lecture.setName(rs.getString("name"));
                lecture.setLectureprice(rs.getDouble("lectureprice"));
                lecture.setDescription(rs.getString("description"));
                lecture.setVideo(rs.getString("video"));
                lecture.setPicturecard(rs.getString("picturecard"));

                CourseDAO courseDAO = new CourseDAO();
                lecture.setCourse(courseDAO.getbyID(lecture.getCourseID()));
                list.add(lecture);
            }

        } catch (SQLException e) {
            Logger.getLogger(LectureDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public ArrayList<Lecture> getByAll(int start, int number) {
        ArrayList<Lecture> list = new ArrayList<>();
        try {
            String query = "Select * from Lecture order by lectureID";
            query += " OFFSET ? ROWS FETCH NEXT ? ROW ONLY";
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);

            pstm.setInt(1, start);
            pstm.setInt(2, number);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Lecture lecture = new Lecture();
                lecture.setLectureID(rs.getInt("lectureID"));
                lecture.setCourseID(rs.getInt("courseID"));
                lecture.setLecturersID(rs.getInt("lecturersID"));
                lecture.setName(rs.getString("name"));
                lecture.setLectureprice(rs.getDouble("lectureprice"));
                lecture.setDescription(rs.getString("description"));
                lecture.setVideo(rs.getString("video"));
                lecture.setPicturecard(rs.getString("picturecard"));

                CourseDAO courseDAO = new CourseDAO();
                lecture.setCourse(courseDAO.getbyID(lecture.getCourseID()));
                list.add(lecture);
            }

        } catch (SQLException e) {
            Logger.getLogger(LectureDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public int getCount(int courseID) {
        int count = 0;
        try {
            String query = "Select * from Lecture where courseID=" + courseID;
            Statement stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                count++;
            }
        } catch (SQLException e) {
            Logger.getLogger(LectureDAO.class.getName()).log(Level.SEVERE, null, e);

        }
        return count;
    }

    public int getCountAll() {
        int count = 0;
        try {
            String query = "Select * from Lecture";
            Statement stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);
            while (rs.next()) {
                count++;
            }
        } catch (SQLException e) {
            Logger.getLogger(LectureDAO.class.getName()).log(Level.SEVERE, null, e);

        }
        return count;
    }

    public ArrayList<Lecture> searchbyLecture(String searchKeyWord) {
        ArrayList<Lecture> list = new ArrayList<>();
        try {
            String query = "Select * from Lecture where  name like '%" + searchKeyWord + "%'";
            Statement stm = ultiDB.getConnection().createStatement();
            ResultSet rs = stm.executeQuery(query);

            while (rs.next()) {
                Lecture lecture = new Lecture();
                lecture.setLectureID(rs.getInt("lectureID"));
                lecture.setCourseID(rs.getInt("courseID"));
                lecture.setLecturersID(rs.getInt("lecturersID"));
                lecture.setName(rs.getString("name"));
                lecture.setLectureprice(rs.getDouble("lectureprice"));
                lecture.setDescription(rs.getString("description"));
                lecture.setVideo(rs.getString("video"));
                lecture.setPicturecard(rs.getString("picturecard"));

                CourseDAO courseDAO = new CourseDAO();
                lecture.setCourse(courseDAO.getbyID(lecture.getCourseID()));
                list.add(lecture);
            }

        } catch (SQLException e) {
            Logger.getLogger(LectureDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return list;
    }

    public boolean addNew(Lecture lecture) {

        String query = "insert into lecture(name,lectureprice,description,video,picturecard,courseID,lecturersID) values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setString(1, lecture.getName());
            pstm.setDouble(2, lecture.getLectureprice());
            pstm.setString(3, lecture.getDescription());
            pstm.setString(4, lecture.getVideo());
            pstm.setString(5, lecture.getPicturecard());
            pstm.setInt(6, lecture.getCourseID());
            pstm.setInt(7, lecture.getLectureID());
            int result = pstm.executeUpdate();
            if (result != 0) {
                return true;
            }
        } catch (SQLException e) {
//            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
        return false;

    }

    public boolean update(Lecture lecture) {

        String query = "update lecture set name=?,lectureprice=?,description=?,video=?,picturecard=?,";
        query += "courseID=?,lecturersID=? where lectureID=?";

        try {
            PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query);
            pstm.setString(1, lecture.getName());
            pstm.setDouble(2, lecture.getLectureprice());
            pstm.setString(3, lecture.getDescription());
            pstm.setString(4, lecture.getVideo());
            pstm.setString(5, lecture.getPicturecard());
            pstm.setInt(6, lecture.getCourseID());
            pstm.setInt(7, lecture.getLectureID());
            int result = pstm.executeUpdate();
            if (result != 0) {
                return true;
            }
        } catch (SQLException e) {
//            Logger.getLogger(StaffDAO.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
        return false;
    }

    public boolean delete(int lectureID) {
        boolean check = false;
        String query = "select * from BillOrderdetail where lectureID=?";
        try {
            PreparedStatement pstm1 = ultiDB.getConnection().prepareStatement(query);
            pstm1.setInt(1, lectureID);
            ResultSet result1 = pstm1.executeQuery();
            while (result1.next()) {
                check = true;
            }

            if (check == true) {
                return false;
            } else {
                String query1 = "delete from lecture where lectureID=?";
                try {
                    PreparedStatement pstm = ultiDB.getConnection().prepareStatement(query1);
                    pstm.setInt(1, lectureID);
                    int result = pstm.executeUpdate();
                    if (result != 0) {
                        return true;
                    }
                } catch (SQLException e) {
                    return false;
                }
               
            }
        } catch (SQLException e) {
//            Logger.getLogger(LectureDAO.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
        return false;
    }

}
