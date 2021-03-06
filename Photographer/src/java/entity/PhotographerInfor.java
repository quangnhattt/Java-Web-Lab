/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Admin
 */
public class PhotographerInfor {
    private int id;
    private String address;
    private String city;
    private String country;
    private String phone;
    private String email;
    private String aboutMe;
    private String specialImage;
    private String title;
    private String map;

    public PhotographerInfor() {
    }

    public PhotographerInfor(int id, String address, String city, String country, String phone, String email, String aboutMe, String specialImage, String title, String map) {
        this.id = id;
        this.address = address;
        this.city = city;
        this.country = country;
        this.phone = phone;
        this.email = email;
        this.aboutMe = aboutMe;
        this.specialImage = specialImage;
        this.title = title;
        this.map = map;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
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

    public String getAboutMe() {
        return aboutMe;
    }

    public void setAboutMe(String aboutMe) {
        this.aboutMe = aboutMe;
    }

    public String getSpecialImage() {
        return specialImage;
    }

    public void setSpecialImage(String specialImage) {
        this.specialImage = specialImage;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMap() {
        return map;
    }

    public void setMap(String map) {
        this.map = map;
    }
    
}
