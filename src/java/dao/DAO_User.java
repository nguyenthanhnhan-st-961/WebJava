/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.User;
import entity.UserRoles;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ABC
 */
public class DAO_User {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    DBContext db;

    public DAO_User() throws Exception {
        db = new DBContext();
        con = db.getConnection();
    }

    public void datLaiMatKhau(String email, String newPW) throws ClassNotFoundException, SQLException {
        String query = "UPDATE [BANHANGGL].[dbo].[tb_USERS] SET [PasswordHash] = ? WHERE Email = ?";
        con = new DBContext().getConnection();
        ps = con.prepareStatement(query);
        ps.setString(1, newPW);
        ps.setString(2, email);
        ps.executeUpdate();
        
    }

    public User GetUserByEmil(String emString) {
        String query = "select * from tb_USERS where Email = ?";
        try {
            con = new DBContext().getConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, emString);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public UserRoles GetRoleById(int id) {
        String query = "SELECT [UserId] ,[RoleId] FROM [BANHANGGL].[dbo].[tb_USEROLES] "
                + "where UserId = ?";
        try {
            con = new DBContext().getConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserRoles(
                        rs.getInt(1),
                        rs.getInt(2));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void PhanQuyen(int id) {
        String query = "INSERT INTO [BANHANGGL].[dbo].[tb_USEROLES] ([UserId] ,[RoleId]) VALUES (?,2)";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void DangKy(String email, String pw, String phone, String dc, String name) {

        User us = GetUserByEmil(email);
        if (us == null) {
            String query = "INSERT INTO [BANHANGGL].[dbo].[tb_USERS]\n"
                    + "           ([Email]\n"
                    + "           ,[PasswordHash]\n"
                    + "           ,[PhoneNumber]\n"
                    + "           ,[Diachi]\n"
                    + "           ,[Name]\n"
                    + "           ,[XacNhanEmail])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?)";
            try {
                con = new DBContext().getConnection();
                ps = con.prepareStatement(query);
                ps.setString(1, email);
                ps.setString(2, pw);
                ps.setString(3, phone);
                ps.setString(4, dc);
                ps.setString(5, name);
                ps.setBoolean(6, false);
                ps.executeUpdate();

                User user = GetUserByEmil(email);

                int id = user.getId();

                PhanQuyen(id);

            } catch (Exception e) {
            }
        }
    }

    public User GetUser(String emString, String pwString) {
        String query = "select * from tb_USERS where Email = ? and PasswordHash = ?";
        try {
            con = new DBContext().getConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, emString);
            ps.setString(2, pwString);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public User DangNhap(String emString, String pwString) {
        User us = GetUser(emString, pwString);
        if (us != null) {
            return us;
        }
        return null;
    }

    public void editMK(String emString, String pwnString) {
        String query = "UPDATE [BANHANGGL].[dbo].[tb_USERS] SET [PasswordHash] = ? WHERE Email = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pwnString);
            ps.setString(2, emString);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public boolean DoiMk(String emString, String pwString, String pwnString) {
        User us = GetUser(emString, pwString);
        if (us != null) {
            editMK(emString, pwnString);
            return true;
        }
        return false;
    }

    public static void main(String[] args) throws Exception {
        DAO_User d = new DAO_User();
        String em = "77@gmail.com";
        String p = "5";
        String pn = "1";
        String ph = "1";
        String dc = "1";
        String name = "1";

//        d.DangKy(em, p, ph, dc, name);
//        System.out.println();
        
        d.datLaiMatKhau(em, "4");
    }

}
