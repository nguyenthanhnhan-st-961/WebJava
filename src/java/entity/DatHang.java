/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Date;

/**
 *
 * @author ABC
 */
public class DatHang {

    private int idDatHang;
    private int idUser;
    private Date ngayDat;
    private String ghiChu;
    private boolean thanhToan;
    private String trangThai;

    public DatHang(int idDatHang, int idUser, Date ngayDat, String ghiChu, boolean thanhToan, String trangThai) {
        this.idDatHang = idDatHang;
        this.idUser = idUser;
        this.ngayDat = ngayDat;
        this.ghiChu = ghiChu;
        this.thanhToan = thanhToan;
        this.trangThai = trangThai;
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

    public Date getNgayDat() {
        return ngayDat;
    }

    public void setNgayDat(Date ngayDat) {
        this.ngayDat = ngayDat;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public boolean isThanhToan() {
        return thanhToan;
    }

    public void setThanhToan(boolean thanhToan) {
        this.thanhToan = thanhToan;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    @Override
    public String toString() {
        return "DatHang{" + "idDatHang=" + idDatHang + ", idUser=" + idUser + ", ngayDat=" + ngayDat + ", ghiChu=" + ghiChu + ", trangThai=" + trangThai + '}';
    }

 
}
