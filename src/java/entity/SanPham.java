/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Hung
 */
public class SanPham {

    private int idSanPham;
    private String tenSanPham;
    private String hang;
    private float giaBan;
    private String hinhAnh;
    private String moTa;
    private boolean trangThai;

    public SanPham() {
    }

    public SanPham(int idSanPham, String tenSanPham, String hang, float giaBan, String hinhAnh, String moTa, boolean trangThai) {
        this.idSanPham = idSanPham;
        this.tenSanPham = tenSanPham;
        this.hang = hang;
        this.giaBan = giaBan;
        this.hinhAnh = hinhAnh;
        this.moTa = moTa;
        this.trangThai = trangThai;
    }

    public int getIdSanPham() {
        return idSanPham;
    }

    public void setIdSanPham(int idSanPham) {
        this.idSanPham = idSanPham;
    }

    public String getTenSanPham() {
        return tenSanPham;
    }

    public void setTenSanPham(String tenSanPham) {
        this.tenSanPham = tenSanPham;
    }

    public String getHang() {
        return hang;
    }

    public void setHang(String hang) {
        this.hang = hang;
    }

    public float getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(float giaBan) {
        this.giaBan = giaBan;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public boolean isTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }

    @Override
    public String toString() {
        return "SanPham{" + "idSanPham=" + idSanPham + ", tenSanPham=" + tenSanPham + ", hang=" + hang + ", giaBan=" + giaBan + ", hinhAnh=" + hinhAnh + ", moTa=" + moTa + ", trangThai=" + trangThai + '}';
    }
    
}
