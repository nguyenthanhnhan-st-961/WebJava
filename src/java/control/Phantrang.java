/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.SanPham;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "Phantrang", urlPatterns = {"/phantrang"})
public class Phantrang extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            HttpSession session = request.getSession();
            DAO dao = new DAO();

            List<SanPham> list = dao.getAllSP();

            String indexSPString = request.getParameter("idSP");
            if (indexSPString == null) {
                indexSPString = "1";
            }
            int indexSP = Integer.parseInt(indexSPString);
            List<SanPham> listorder = dao.getAllSanPhamPage(indexSP);
            List<SanPham> listSP = dao.getAllSP();
            int countSP = listSP.size();
            if (countSP % 20 != 0) {
                countSP = countSP / 20 + 1;
            } else {
                countSP = countSP / 20;
            }
            request.setAttribute("countSP", countSP);
            request.setAttribute("countAllSP", listSP.size());
            request.setAttribute("listSPorder", listorder);
            session.setAttribute("truocdoSP", indexSP - 1);
            session.setAttribute("ketiepSP", indexSP + 1);

            PrintWriter outpPrintWriter = response.getWriter();

            for (SanPham sanPham : listorder) {
                outpPrintWriter.println("<div class=\"col\">\n"
                        + "                    <div class=\"card shadow card-hover\" style=\"border-radius:8px\">\n"
                        + "                        <a href=\"#\">\n"
                        + "                            <img src=\""+sanPham.getHinhAnh()+"\" class=\"card-img-top\" alt=\""+sanPham.getHinhAnh()+"\" style=\"border-radius:8px; margin-top:1rem\">\n"
                        + "                        </a>\n"
                        + "                        <div class=\"card-body\">\n"
                        + "                            <h6 class=\"card-title\" style=\"font-weight:700\">"+sanPham.getTenSanPham()+" </h6>\n"
                        + "                            <p class=\"card-text\" style=\"color: red; font-weight: 700\">"+sanPham.getGiaBan()+"₫</p>\n"
                        + "                        </div>\n"
                        + "                    </div>\n"
                        + "                </div>");
            }

        }
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
            Logger.getLogger(Phantrang.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Phantrang.class.getName()).log(Level.SEVERE, null, ex);
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
