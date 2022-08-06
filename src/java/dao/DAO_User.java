/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

    public User GetUserByEmil(String emString) {
        String query = "select * from tb_USERS where Email = ?";
        try {
            con = new DBContext().getConnection();//mo ket noi voi sql
            ps = con.prepareStatement(query);
            ps.setString(1, emString);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void DangKy(String id, String email, String pw, String phone, String dc, String name) {

        User us = GetUserByEmil(email);
        if (us == null) {
            String query = "INSERT INTO [BANHANGGL].[dbo].[tb_USERS]\n"
                    + "           ([Id]\n"
                    + "           ,[Email]\n"
                    + "           ,[PasswordHash]\n"
                    + "           ,[PhoneNumber]\n"
                    + "           ,[Diachi]\n"
                    + "           ,[Name])\n"
                    + "     VALUES (?,?,?,?,?,?)";
            try {
                con = new DBContext().getConnection();
                ps = con.prepareStatement(query);
                ps.setString(1, id);
                ps.setString(2, email);
                ps.setString(3, pw);
                ps.setString(4, phone);
                ps.setString(5, dc);
                ps.setString(6, name);
                ps.executeUpdate();
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
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
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
        String id = "5";
        String em = "7";
        String p = "5";
        String pn = "1";
        String ph = "1";
        String dc = "1";
        String name = "1";

        d.DangKy(id, em, p, ph, dc, name);
        System.out.println();
    }

}
