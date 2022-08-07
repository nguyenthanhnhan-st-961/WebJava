/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author ABC
 */
public class GioHang {

    private int idGioHang;
    private int idUser;
    private int idSP;
    private int SL;
    private float thanhTien;
    private String donGia;

    public GioHang(int idGioHang, int idUser, int idSP, int SL, float thanhTien, String donGia) {
        this.idGioHang = idGioHang;
        this.idUser = idUser;
        this.idSP = idSP;
        this.SL = SL;
        this.thanhTien = thanhTien;
        this.donGia = donGia;
    }

    public int getIdGioHang() {
        return idGioHang;
    }

    public void setIdGioHang(int idGioHang) {
        this.idGioHang = idGioHang;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getIdSP() {
        return idSP;
    }

    public void setIdSP(int idSP) {
        this.idSP = idSP;
    }

    public int getSL() {
        return SL;
    }

    public void setSL(int SL) {
        this.SL = SL;
    }

    public float getThanhTien() {
        return thanhTien;
    }

    public void setThanhTien(float thanhTien) {
        this.thanhTien = thanhTien;
    }

    public String getDonGia() {
        return donGia;
    }

    public void setDonGia(String donGia) {
        this.donGia = donGia;
    }

    @Override
    public String toString() {
        return "GioHang{" + "idGioHang=" + idGioHang + ", idUser=" + idUser + ", idSP=" + idSP + ", SL=" + SL + ", thanhTien=" + thanhTien + ", donGia=" + donGia + '}';
    }
    
    
}
