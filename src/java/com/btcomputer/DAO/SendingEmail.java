/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btcomputer.DAO;

import java.net.PasswordAuthentication;
import javax.mail.Session;
import java.util.Properties;


/**
 *
 * @author nguye
 */
public class SendingEmail {
    private String userEmail;
    private String hashCode;

    public SendingEmail(String userEmail, String hashCode) {
        this.userEmail = userEmail;
        this.hashCode = hashCode;
    }
    
    public void sendEmail(){
        String email="ntb.iot@gmail.com";
        String password ="Ntbgmail@260987";
        Properties properties=new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        

    }
    
}
