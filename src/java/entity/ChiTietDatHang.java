/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author ABC
 */
public class ChiTietDatHang {

    private int idDatHang;
    private int idSP;
    private int SL;
    private float thanhTien;

    public ChiTietDatHang(int idDatHang, int idSP, int SL, float thanhTien) {
        this.idDatHang = idDatHang;
        this.idSP = idSP;
        this.SL = SL;
        this.thanhTien = thanhTien;
    }

    public int getIdDatHang() {
        return idDatHang;
    }

    public void setIdDatHang(int idDatHang) {
        this.idDatHang = idDatHang;
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

    @Override
    public String toString() {
        return "ChiTietDatHang{" + "idDatHang=" + idDatHang + ", idSP=" + idSP + ", SL=" + SL + ", thanhTien=" + thanhTien + '}';
    }
    

}
