/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Tai Cao
 */
public class Customer {
    private int cusID;
    private String name;
    private boolean gender;
    private String dob;
    private String phone;
    private String email;

    public Customer() {
    }
    
    public Customer(String name, boolean gender, String dob, String phone, String email) {
        this.name = name;
        this.gender = gender;
        this.dob = dob;
        this.phone = phone;
        this.email = email;
    }

    public Customer(int cusID, String name, boolean gender, String dob, String phone, String email) {
        this.cusID = cusID;
        this.name = name;
        this.gender = gender;
        this.dob = dob;
        this.phone = phone;
        this.email = email;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Customer{" + "cusID=" + cusID + ", name=" + name + ", gender=" + gender + ", dob=" + dob + ", phone=" + phone + ", email=" + email + '}';
    }
}
