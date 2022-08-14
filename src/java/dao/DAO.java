/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.SanPham;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
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
    
    public void addChiTietDatHang(int idDatHang, int idSP, int soLuong, int thanhTien) throws SQLException {
        String query = "INSERT INTO [BANHANGGL].[dbo].[tb_CHITIETDATHANG]\n"
                + "     VALUES\n"
                + "           (?,?,?,?)";
        ps = con.prepareStatement(query);
        ps.setInt(1, idDatHang);
        ps.setInt(2, idSP);
        ps.setInt(3, soLuong);
        ps.setInt(4, thanhTien);
        ps.executeUpdate();

    }

    public void thanhToan(int idKH, LocalDateTime ngayDatHang, String ghiChu, boolean thanhToan, String trangThai) throws SQLException {
        String query = "INSERT INTO [BANHANGGL].[dbo].[tb_DATHANG]\n"
                + "           ([Id]\n"
                + "             ,[NGAYDAT]\n"
                + "           ,[GHICHU]\n"
                + "           ,[THANHTOAN]\n"
                + "           ,[TRANGTHAI])\n"
                + "     VALUES(?,?,?,?,?)";

        String time = ngayDatHang.getYear() + "-" + "08" + "-" + ngayDatHang.getDayOfMonth() + " " + ngayDatHang.getHour() + ":" + ngayDatHang.getMinute() + ":" + ngayDatHang.getSecond();

        ps = con.prepareStatement(query);
        ps.setInt(1, idKH);
        ps.setString(2, time);
        ps.setString(3, ghiChu);
        ps.setBoolean(4, thanhToan);
        ps.setString(5, trangThai);
        ps.executeUpdate();
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
        if (index == 0) {
            end = 20;
        } else {
            end = (index - 1) * 20;
        }

        List<SanPham> list = new ArrayList<>();
        String query = "select *\n"
                + "from\n"
                + "(\n"
                + "select *,\n"
                + "ROW_NUMBER() OVER (ORDER BY IDSANPHAM) AS Seq\n"
                + "from tb_SANPHAM\n"
                + ")t\n"
                + "where Seq BETWEEN ?+1 AND ?+20";

        try {
//            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, end);
            ps.setInt(2, end);
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
    //lọc san phẩm theo hãng
    public List<String> getAllHang(){
        String query = "select distinct HANG from tb_SANPHAM";
        List<String> list = new ArrayList<>();
        try {
            con = new DBContext().getConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                String hang = rs.getString("HANG");
                list.add(hang);
                
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    
    }
    public List<SanPham> getSanPhamHang(String hang){
        String query = "select * from tb_SANPHAM where HANG = ?";
        List<SanPham> listSP = new ArrayList<SanPham>();
    try {
            con = new DBContext().getConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, hang);
            rs = ps.executeQuery();
            while (rs.next()) {
                SanPham sp = new SanPham(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7));
                listSP.add(sp);
            }
            return listSP;
        } catch (Exception e) {
        }
        return null;
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

    public void ThayDoiTrangThai(String email) throws SQLException {
        String query = "UPDATE [tb_USERS]\n"
                + "   SET [XacNhanEmail] = 'true'\n"
                + " WHERE Email = ?";

        try {
            ps = con.prepareStatement(query);
            ps.setString(1, email);

            ps.executeUpdate();
        } catch (Exception e) {
        }

    }
//    public void DatHangChiTiet(String idDH, String idSP){
//        String query = 
//        
//    }

    public static void main(String[] args) throws Exception {
//        DAO dao = new DAO();
//       SanPham list =  dao.getSanPhamHang("Oppo");
//        System.out.println(list);

//        dao.thanhToan("1", new Date(12, 8, 2022), new Date(13, 8, 2022), "", 10000, true, "chua thanh toan");
//        List<SanPham> list = dao.getSanPhamByName("iphone");
//        for (SanPham k : list) {
//            System.out.println(k);
//        }
    }
}
