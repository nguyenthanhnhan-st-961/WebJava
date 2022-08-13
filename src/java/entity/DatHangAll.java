
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Timestamp;
import java.time.LocalDateTime;

/**
 *
 * @author ABC
 */
public class DatHangAll {

    private int idDatHang;
    private int idUser;
    private String tenUser;
    private String diachi;
    private String sdt;
    private int idSP;
    private String tenSP;
    private String hinhAnh;
    private int SL;
    private float thanhTien;
    private float donGia;
    private Timestamp ngaydat;
    private String ghichu;
    private boolean thanhtoan;
    private String trangthai;

    public DatHangAll() {
    }

    public DatHangAll(int idDatHang, int idUser, String tenUser, String diachi, String sdt, int idSP, String tenSP, String hinhAnh, int SL, float thanhTien, float donGia, Timestamp ngaydat, String ghichu, boolean thanhtoan, String trangthai) {
        this.idDatHang = idDatHang;
        this.idUser = idUser;
        this.tenUser = tenUser;
        this.diachi = diachi;
        this.sdt = sdt;
        this.idSP = idSP;
        this.tenSP = tenSP;
        this.hinhAnh = hinhAnh;
        this.SL = SL;
        this.thanhTien = thanhTien;
        this.donGia = donGia;
        this.ngaydat = ngaydat;
        this.ghichu = ghichu;
        this.thanhtoan = thanhtoan;
        this.trangthai = trangthai;
    }

    public int getIdDatHang() {
        return idDatHang;
    }

    public void setIdDatHang(int idDatHang) {
        this.idDatHang = idDatHang;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getTenUser() {
        return tenUser;
    }

    public void setTenUser(String tenUser) {
        this.tenUser = tenUser;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public int getIdSP() {
        return idSP;
    }

    public void setIdSP(int idSP) {
        this.idSP = idSP;
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

    public Timestamp getNgaydat() {
        return ngaydat;
    }

    public void setNgaydat(Timestamp ngaydat) {
        this.ngaydat = ngaydat;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    public boolean isThanhtoan() {
        return thanhtoan;
    }

    public void setThanhtoan(boolean thanhtoan) {
        this.thanhtoan = thanhtoan;
    }

    public String getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
    }
    
     

}