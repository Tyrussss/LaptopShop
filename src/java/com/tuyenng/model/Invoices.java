/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuyenng.model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author TuyenTyrusNg
 */
public class Invoices {
    private int id;
    private Date date;
    private String address;
    private String phone;
    private int total;
    private int customerID;
    private int employeeID;
    private Customers customer;
    private Employees employee;
    private ArrayList<InvoiceDetails> listInvoices;

    public Invoices() {
    }

    public Invoices(int id, Date date, String address, String phone, int total, int customerID, int employeeID, Customers customer, Employees employee, ArrayList<InvoiceDetails> listInvoices) {
        this.id = id;
        this.date = date;
        this.address = address;
        this.phone = phone;
        this.total = total;
        this.customerID = customerID;
        this.employeeID = employeeID;
        this.customer = customer;
        this.employee = employee;
        this.listInvoices = listInvoices;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public Customers getCustomer() {
        return customer;
    }

    public void setCustomer(Customers customer) {
        this.customer = customer;
    }

    public Employees getEmployee() {
        return employee;
    }

    public void setEmployee(Employees employee) {
        this.employee = employee;
    }

    public ArrayList<InvoiceDetails> getListInvoices() {
        return listInvoices;
    }

    public void setListInvoices(ArrayList<InvoiceDetails> listInvoices) {
        this.listInvoices = listInvoices;
    }
    
    
}
