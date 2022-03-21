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
public class Facilities {
    private int FaID;
    private String name;

    public Facilities() {
    }

    public Facilities(int FaID, String name) {
        this.FaID = FaID;
        this.name = name;
    }

    public int getFaID() {
        return FaID;
    }

    public void setFaID(int FaID) {
        this.FaID = FaID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Facilities{" + "FaID=" + FaID + ", name=" + name + '}';
    }
    
    
}
