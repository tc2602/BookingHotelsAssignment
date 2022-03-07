/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 *@author Tai Cao
 */
public class Homestay {
    private int id;
    private String name;
    private String address;
    private HomestayType type;
    private String description;
    private String image;

    public Homestay() {
    }
    
    public Homestay(String name, String address, HomestayType type, String description, String image) {
        this.name = name;
        this.address = address;
        this.type = type;
        this.description = description;
        this.image = image;
    }

    public Homestay(int id, String name, String address, HomestayType type, String description, String image) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.type = type;
        this.description = description;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public HomestayType getType() {
        return type;
    }

    public void setType(HomestayType type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Homestay{" + "id=" + id + ", name=" + name + ", address=" + address + ", type=" + type.getTypeID() + ", description=" + description + ", image=" + image + '}';
    }
}
