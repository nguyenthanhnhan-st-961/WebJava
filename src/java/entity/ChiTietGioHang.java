/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author ABC
 */
public class ChiTietGioHang {

    private int idGioHang;
    private int idUser;
    private String tenUser;
    private int idSP;
    private String tenSP;
    private String hinhAnh;
    private int SL;
    private float thanhTien;
    private float donGia;

    public ChiTietGioHang(int idGioHang, int idUser, String tenUser, int idSP, String tenSP, String hinhAnh, int SL, float thanhTien, float donGia) {
        this.idGioHang = idGioHang;
        this.idUser = idUser;
        this.tenUser = tenUser;
        this.idSP = idSP;
        this.tenSP = tenSP;
        this.hinhAnh = hinhAnh;
        this.SL = SL;
        this.thanhTien = thanhTien;
        this.donGia = donGia;
    }

    public String getTenUser() {
        return tenUser;
    }

    public void setTenUser(String tenUser) {
        this.tenUser = tenUser;
    }

    public String getTenSP() {
        return tenSP;
    }

    public void setTenSP(String tenSP) {
        this.tenSP = tenSP;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public ChiTietGioHang(String string, String string0) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
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

    public float getDonGia() {
        return donGia;
    }

    public void setDonGia(float donGia) {
        this.donGia = donGia;
    }

    @Override
    public String toString() {
        return "ChiTietGioHang{" + "idGioHang=" + idGioHang + ", idUser=" + idUser + ", tenUser=" + tenUser + ", idSP=" + idSP + ", tenSP=" + tenSP + ", hinhAnh=" + hinhAnh + ", SL=" + SL + ", thanhTien=" + thanhTien + ", donGia=" + donGia + '}';
    }

   

}
