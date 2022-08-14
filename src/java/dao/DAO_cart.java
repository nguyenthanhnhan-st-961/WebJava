/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.ChiTietGioHang;
import entity.DatHang;
import entity.DatHangAll;
import entity.GioHang;
import entity.SanPham;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ABC
 */
public class DAO_cart {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    DBContext db;
    DAO dao;

    public DAO_cart() throws Exception {
        db = new DBContext();
        con = db.getConnection();
        dao = new DAO();
    }

    public List<DatHangAll> getAllDH() {
        List<DatHangAll> list = new ArrayList<>();
        String query = "SELECT     dbo.tb_CHITIETDATHANG.IDDATHANG, dbo.tb_DATHANG.Id, dbo.tb_USERS.Name, dbo.tb_USERS.Diachi,dbo.tb_USERS.PhoneNumber, dbo.tb_CHITIETDATHANG.IDSANPHAM, dbo.tb_SANPHAM.TENSANPHAM, dbo.tb_SANPHAM.HINHANH, \n"
                + "                      dbo.tb_CHITIETDATHANG.SOLUONG, dbo.tb_CHITIETDATHANG.THANHTIEN, dbo.tb_SANPHAM.GIABAN, dbo.tb_DATHANG.NGAYDAT, dbo.tb_DATHANG.GHICHU, dbo.tb_DATHANG.THANHTOAN, \n"
                + "                      dbo.tb_DATHANG.TRANGTHAI\n"
                + "FROM         dbo.tb_CHITIETDATHANG INNER JOIN\n"
                + "                      dbo.tb_DATHANG ON dbo.tb_CHITIETDATHANG.IDDATHANG = dbo.tb_DATHANG.IDDATHANG INNER JOIN\n"
                + "                      dbo.tb_SANPHAM ON dbo.tb_CHITIETDATHANG.IDSANPHAM = dbo.tb_SANPHAM.IDSANPHAM INNER JOIN\n"
                + "                      dbo.tb_USERS ON dbo.tb_DATHANG.Id = dbo.tb_USERS.Id";

        try {
//            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new DatHangAll(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getFloat(10),
                        rs.getFloat(11),
                        rs.getTimestamp(12),
                        rs.getString(13),
                        rs.getBoolean(14),
                        rs.getString(15)
                ));
            }
        } catch (Exception e) {
        }
        return list;

    }
    public List<DatHangAll> getAllDHById(int id) {
        List<DatHangAll> list = new ArrayList<>();
        String query = "SELECT     dbo.tb_CHITIETDATHANG.IDDATHANG, dbo.tb_DATHANG.Id, dbo.tb_USERS.Name, dbo.tb_USERS.Diachi,dbo.tb_USERS.PhoneNumber,dbo.tb_CHITIETDATHANG.IDSANPHAM, dbo.tb_SANPHAM.TENSANPHAM, dbo.tb_SANPHAM.HINHANH, \n"
                + "                      dbo.tb_CHITIETDATHANG.SOLUONG, dbo.tb_CHITIETDATHANG.THANHTIEN, dbo.tb_SANPHAM.GIABAN, dbo.tb_DATHANG.NGAYDAT, dbo.tb_DATHANG.GHICHU, dbo.tb_DATHANG.THANHTOAN, \n"
                + "                      dbo.tb_DATHANG.TRANGTHAI\n"
                + "FROM         dbo.tb_CHITIETDATHANG INNER JOIN\n"
                + "                      dbo.tb_DATHANG ON dbo.tb_CHITIETDATHANG.IDDATHANG = dbo.tb_DATHANG.IDDATHANG INNER JOIN\n"
                + "                      dbo.tb_SANPHAM ON dbo.tb_CHITIETDATHANG.IDSANPHAM = dbo.tb_SANPHAM.IDSANPHAM INNER JOIN\n"
                + "                      dbo.tb_USERS ON dbo.tb_DATHANG.Id = dbo.tb_USERS.Id where dbo.tb_USERS.Id = ?";

        try {
//            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new DatHangAll(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getFloat(10),
                        rs.getFloat(11),
                        rs.getTimestamp(12),
                        rs.getString(13),
                        rs.getBoolean(14),
                        rs.getString(15)
                ));
            }
        } catch (Exception e) {
        }
        return list;

    }
    public DatHang lastDatHang() throws SQLException {
        DatHang result = null;
        String query = "select top 1 * from tb_DATHANG ORDER BY IDDATHANG DESC";
        ps = con.prepareStatement(query);
        rs = ps.executeQuery();
        while (rs.next()) {
            result = new DatHang(rs.getInt(1), rs.getInt(2), rs.getDate(3), rs.getString(4), rs.getBoolean(5), rs.getString(6));
        }

        return result;
    }

    public void addProduct(String id, String idSP, int sl) throws SQLException {
        String query = "insert into tb_GIOHANG values (?,?,?,?,?)";
        SanPham sp = dao.getSanPhamByID(idSP);
        float donGia = sp.getGiaBan();
        ps = con.prepareStatement(query);
        ps.setString(1, id);
        ps.setString(2, idSP);
        ps.setInt(3, sl);
        ps.setFloat(4, sl * donGia);
        ps.setFloat(5, donGia);

        ps.executeUpdate();
    }

    public void removeCartByIDUser(String id) throws SQLException {
        String query = "delete from tb_GIOHANG where Id = ?";
        ps = con.prepareStatement(query);
        ps.setString(1, id);
        ps.executeUpdate();
    }

    public void updateQuantity(String id, String idSP, int newQuantity, int gb) throws SQLException {
        String query = "update tb_GIOHANG set SL = ?,THANHTIEN = ? where Id = ? and IDSANPHAM = ?";
        ps = con.prepareStatement(query);
        ps.setInt(1, newQuantity);
        ps.setInt(2, newQuantity * gb);
        ps.setString(3, id);
        ps.setString(4, idSP);
        ps.executeUpdate();
    }

    public void removeProduct(String id, String idSP) throws SQLException {
        String query = "delete from tb_GIOHANG where Id = ? and IDSANPHAM = ?";
        ps = con.prepareStatement(query);
        ps.setString(1, id);
        ps.setString(2, idSP);
        ps.executeUpdate();
    }

    public GioHang getCart(String idUser, String idspPham) {
        String query = "select * from tb_GIOHANG where Id = ? and IDSANPHAM = ?";
        try {
            con = new DBContext().getConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, idUser);
            ps.setString(2, idspPham);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new GioHang(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getFloat(5),
                        rs.getFloat(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<ChiTietGioHang> ShowAllByID(String id) {
        List<ChiTietGioHang> list = new ArrayList<>();
        String query = "SELECT     dbo.tb_GIOHANG.IDGIOHANG, dbo.tb_USERS.Id, dbo.tb_USERS.Name, dbo.tb_SANPHAM.IDSANPHAM, dbo.tb_SANPHAM.TENSANPHAM, dbo.tb_SANPHAM.HINHANH, dbo.tb_GIOHANG.SL, \n"
                + "                      dbo.tb_GIOHANG.THANHTIEN, dbo.tb_GIOHANG.DONGIA\n"
                + "FROM         dbo.tb_USERS INNER JOIN\n"
                + "                      dbo.tb_GIOHANG ON dbo.tb_USERS.Id = dbo.tb_GIOHANG.Id INNER JOIN\n"
                + "                      dbo.tb_SANPHAM ON dbo.tb_GIOHANG.IDSANPHAM = dbo.tb_SANPHAM.IDSANPHAM\n"
                + "where dbo.tb_GIOHANG.Id = ?";

        try {
//            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new ChiTietGioHang(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getFloat(8),
                        rs.getFloat(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<ChiTietGioHang> ShowAll() {
        List<ChiTietGioHang> list = new ArrayList<>();
        String query = "SELECT     dbo.tb_GIOHANG.IDGIOHANG, dbo.tb_USERS.Id, dbo.tb_USERS.Name, dbo.tb_SANPHAM.IDSANPHAM, dbo.tb_SANPHAM.TENSANPHAM, dbo.tb_SANPHAM.HINHANH, dbo.tb_GIOHANG.SL, \n"
                + "                      dbo.tb_GIOHANG.THANHTIEN, dbo.tb_GIOHANG.DONGIA\n"
                + "FROM         dbo.tb_USERS INNER JOIN\n"
                + "                      dbo.tb_GIOHANG ON dbo.tb_USERS.Id = dbo.tb_GIOHANG.Id INNER JOIN\n"
                + "                      dbo.tb_SANPHAM ON dbo.tb_GIOHANG.IDSANPHAM = dbo.tb_SANPHAM.IDSANPHAM;";

        try {
//            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new ChiTietGioHang(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getFloat(8),
                        rs.getFloat(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) throws Exception {
        DAO_cart dao = new DAO_cart();
//        GioHang gh = dao.getCart("1", "135");
        List<ChiTietGioHang> gh = dao.ShowAllByID("28");
        for (ChiTietGioHang g : gh) {
            System.out.println(g);
        }

//        dao.addProduct("1", "135", 2);
//        dao.updateQuantity("1", "135", 10);
//        dao.removeCartByIDUser("1");
//        dao.removeProduct("1", "135");
    }

    public List<String> getAllHang() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
