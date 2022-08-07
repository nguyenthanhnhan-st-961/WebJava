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

    public List<SanPham> getAllSanPhamPage(int index) {
        
        int end = 0;
        if(index == 0){
            end =20;
        }
        else{
            end = (index - 1) * 20;
        }
        
        
        
        List<SanPham> list = new ArrayList<>();
        String query = "select *\n"
                + "from\n"
                + "(\n"
                + "select *,\n"
                + "ROW_NUMBER() OVER (ORDER BY TENSANPHAM) AS Seq\n"
                + "from tb_SANPHAM\n"
                + ")t\n"
                + "where Seq BETWEEN ? AND ?+19";

        try {
//            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, index);
            ps.setInt(2, index);
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
            String query = "INSERT INTO [BANHANGGL].[dbo].[tb_SANPHAM]\n"
                    + "           ([TENSANPHAM]\n"
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
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    /*
    sửa sản phẩm
     */
    public void updateProduct(String id, String tenSP, String hang, float giaBan, String hinhAnh, String moTa, boolean trangThai) {

        try {
            String query = "UPDATE [BANHANGGL].[dbo].[tb_SANPHAM]\n"
                    + "   SET [TENSANPHAM] = ?\n"
                    + "      ,[HANG] = ?\n"
                    + "      ,[GIABAN] = ?\n"
                    + "      ,[HINHANH] = ?\n"
                    + "      ,[MOTA] = ?\n"
                    + "      ,[TRANGTHAI] = ?\n"
                    + " WHERE IDSANPHAM = ?";
            ps = con.prepareStatement(query);
            ps.setString(1, tenSP);
            ps.setString(2, hang);
            ps.setFloat(3, giaBan);
            ps.setString(4, hinhAnh);
            ps.setString(5, moTa);
            ps.setBoolean(6, trangThai);
            ps.setString(7, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    //tim san pham theo id
    public SanPham getSanPhamByID(String idSP) {
        String query = "select * from tb_SANPHAM where IDSANPHAM = ?";
        try {
            con = new DBContext().getConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, idSP);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new SanPham(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<SanPham> getSanPhamByName(String nameSP) {
        List<SanPham> list = new ArrayList<>();
        String query = "SELECT * FROM tb_SANPHAM WHERE TENSANPHAM LIKE ?";
        try {
            con = new DBContext().getConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + nameSP + "%");
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

    public static void main(String[] args) throws Exception {
        DAO dao = new DAO();

        dao.updateProduct("6", "1", "5555", 1, "3", "6", true);

//        List<SanPham> list = dao.getSanPhamByName("iphone");
//        for (SanPham k : list) {
//            System.out.println(k);
//        }
    }
}
