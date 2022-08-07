/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author ABC
 */
public class DanhGia {

    private int idDanhGia;
    private int idUser;
    private int idSP;
    private float diem;
    private String danhGia;

    public DanhGia(int idDanhGia, int idUser, int idSP, float diem, String danhGia) {
        this.idDanhGia = idDanhGia;
        this.idUser = idUser;
        this.idSP = idSP;
        this.diem = diem;
        this.danhGia = danhGia;
    }

    public int getIdDanhGia() {
        return idDanhGia;
    }

    public void setIdDanhGia(int idDanhGia) {
        this.idDanhGia = idDanhGia;
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

    public float getDiem() {
        return diem;
    }

    public void setDiem(float diem) {
        this.diem = diem;
    }

    public String getDanhGia() {
        return danhGia;
    }

    public void setDanhGia(String danhGia) {
        this.danhGia = danhGia;
    }

    @Override
    public String toString() {
        return "DanhGia{" + "idDanhGia=" + idDanhGia + ", idUser=" + idUser + ", idSP=" + idSP + ", diem=" + diem + ", danhGia=" + danhGia + '}';
    }
    

}
