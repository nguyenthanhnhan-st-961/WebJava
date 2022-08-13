/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import dao.DAO_cart;
import entity.ChiTietGioHang;
import entity.DatHang;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ABC
 */
@WebServlet(name = "ThanhToan", urlPatterns = {"/thanhtoan"})
public class ThanhToan extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession();

        String id = request.getParameter("idUser");
        DAO_cart dao = new DAO_cart();
        List<ChiTietGioHang> list = dao.ShowAllByID(id);
        DAO d = new DAO();
        DAO_cart daoCart = new DAO_cart();
        LocalDateTime time = LocalDateTime.now();
        
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        
        String gc = request.getParameter("gc");
        
        User us = (User) session.getAttribute("user");
          d.thanhToan(us.getId(), time, gc, false, "Chưa thanh toán");
         DatHang lastDonHang = dao.lastDatHang();
        for (ChiTietGioHang ct : list) {
              d.addChiTietDatHang(lastDonHang.getIdDatHang(), ct.getIdSP(), ct.getSL(),(int) ct.getThanhTien());
        }
        
//        (int)ct.getThanhTien(),
        daoCart.removeCartByIDUser(String.valueOf( us.getId()));
        response.sendRedirect("home");
    }
    
    public String transform(double n) {
        String result = "";
        long number = (long) n;
        String zero = "";
        while (true) {
            zero = (number % 1000 == 0) ? "000" : (number % 1000) + "";

            if (number / 1000 == 0) {
                result = zero + result;
                break;
            }
            number /= 1000;
        }
        return result;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ThanhToan.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ThanhToan.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
