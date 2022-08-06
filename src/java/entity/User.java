/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author ABC
 */
public class User {
   private String id;
   private String email;
   private String password;
   private String phoneNumber;
   private String diaChi;
   private String name;

    public User(String id, String email, String password, String phoneNumber, String diaChi, String name) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.diaChi = diaChi;
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", email=" + email + ", password=" + password + ", phoneNumber=" + phoneNumber + ", diaChi=" + diaChi + ", name=" + name + '}';
    }
    
    
}
