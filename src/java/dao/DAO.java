/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.SanPham;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hung
 */
public class DAO {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    DBContext db;

    public DAO() throws Exception {
        db = new DBContext();
        con = db.getConnection();
    }

    public List<SanPham> getAllSP() {
        List<SanPham> list = new ArrayList<>();
        String query = "select * from tb_SANPHAM";

        try {
//            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new SanPham(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void addSP(String tenSP, String hang, float giaBan, String hinhAnh, String moTa, boolean trangThai) {
        try {
            String query = "INSERT INTO [dbo].[tb_SANPHAM]\n"
                    + "           ([TENANPHAM]\n"
                    + "           ,[HANG]\n"
                    + "           ,[GIABAN]\n"
                    + "           ,[HINHANH]\n"
                    + "           ,[MOTA]\n"
                    + "           ,[TRANGTHAI])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?)";
            ps = con.prepareStatement(query);
            ps.setString(1, tenSP);
            ps.setString(2, hang);
            ps.setFloat(3, giaBan);
            ps.setString(4, hinhAnh);
            ps.setString(5, moTa);
            ps.setBoolean(6, trangThai);
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) throws Exception {
        DAO dao = new DAO();

        List<SanPham> list = dao.getAllSP();
        for (SanPham k : list) {
            System.out.println(k);
        }
    }
}
