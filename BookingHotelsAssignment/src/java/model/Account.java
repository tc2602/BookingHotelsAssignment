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
public class Account {
    private String username;
    private String passwword;
    private boolean type;
    private int cusID;

    public Account() {
    }

    public Account(String username, String passwword, boolean type, int cusID) {
        this.username = username;
        this.passwword = passwword;
        this.type = type;
        this.cusID = cusID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPasswword() {
        return passwword;
    }

    public void setPasswword(String passwword) {
        this.passwword = passwword;
    }

    public boolean isType() {
        return type;
    }

    public void setType(boolean type) {
        this.type = type;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }
}
