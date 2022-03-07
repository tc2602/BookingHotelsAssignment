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
public class Booking {

    private int id;
    private int cusID;
    private Homestay homestay;
    private String date;
    private String datefrom;
    private String dateto;
    private int people;
    private double total;

    public Booking() {
    }

    public Booking(int cusID, Homestay homestay, String date, String datefrom, String dateto, int people, double total) {
        this.cusID = cusID;
        this.homestay = homestay;
        this.date = date;
        this.datefrom = datefrom;
        this.dateto = dateto;
        this.people = people;
        this.total = total;
    }
    
    public Booking(int cusID, Homestay homestay, String date, String datefrom, String dateto, int people) {
        this.cusID = cusID;
        this.homestay = homestay;
        this.date = date;
        this.datefrom = datefrom;
        this.dateto = dateto;
        this.people = people;
    }

    public Booking(int id, int cusID, Homestay homestay, String date, String datefrom, String dateto, int people, double total) {
        this.id = id;
        this.cusID = cusID;
        this.homestay = homestay;
        this.date = date;
        this.datefrom = datefrom;
        this.dateto = dateto;
        this.people = people;
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }

    public Homestay getHomestay() {
        return homestay;
    }

    public void setHomestay(Homestay homestay) {
        this.homestay = homestay;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDatefrom() {
        return datefrom;
    }

    public void setDatefrom(String datefrom) {
        this.datefrom = datefrom;
    }

    public String getDateto() {
        return dateto;
    }

    public void setDateto(String dateto) {
        this.dateto = dateto;
    }

    public int getPeople() {
        return people;
    }

    public void setPeople(int people) {
        this.people = people;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Booking{" + "id=" + id + ", cusID=" + cusID + ", homestay=" + homestay + ", date=" + date + ", datefrom=" + datefrom + ", dateto=" + dateto + ", people=" + people + ", total=" + total + '}';
    }
}
