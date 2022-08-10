/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import dao.DAO_cart;
import entity.ChiTietGioHang;
import entity.SanPham;
import entity.User;
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
@WebServlet(name = "CapnhatGioHang", urlPatterns = {"/capnhatgh"})
public class CapnhatGioHang extends HttpServlet {

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
        String id = request.getParameter("id");
        int sl = Integer.parseInt(request.getParameter("sl"));
        String idsp = request.getParameter("idsp");

        DAO_cart dao = new DAO_cart();
        DAO daosp = new DAO();
        List<ChiTietGioHang> list = dao.ShowAllByID(id);
        SanPham sp = daosp.getSanPhamByID(idsp);
        dao.updateQuantity(id, idsp, sl, (int) sp.getGiaBan());
        String url = request.getParameter("url");
        response.sendRedirect(url);

        PrintWriter out = response.getWriter();

        User us = (User) session.getAttribute("user");

        for (ChiTietGioHang ct : list) {
            out.println("<jsp:include page=\"Header.jsp\"></jsp:include>\n"
                    + "            <div class=\"container\">\n"
                    + "\n"
                    + "                <table class=\"table\" style=\"margin-top: 70px\" >\n"
                    + "                    <thead>\n"
                    + "                        <tr>\n"
                    + "                            <th scope=\"col\"></th>\n"
                    + "                            <th scope=\"col\">Tên sản phẩm</th>\n"
                    + "                            <th scope=\"col\">Số lượng</th>\n"
                    + "                            <th scope=\"col\">Giá bán</th>                        \n"
                    + "                            <th scope=\"col\">Thành tiền</th>\n"
                    + "                            <th scope=\"col\">Chỉnh sửa</th>\n"
                    + "                            <th scope=\"col\">Chi tiết</th>\n"
                    + "\n"
                    + "                        </tr>\n"
                    + "                    </thead>\n"
                    + "                    <tbody >\n"
                    + "                    <c:forEach items=\"${listGH}\" var=\"s\">\n"
                    + "<tr>\n"
                    + "                        <th>\n"
                    + "                            <a href=\"detail?id=" + ct.getIdSP() + "\"><img src=\"" + ct.getHinhAnh() + "\" width=\"150\" height=\"150\" alt=\"" + ct.getTenSP() + "\"/></a>\n"
                    + "\n"
                    + "                        </th>\n"
                    + "                        <td>" + ct.getTenSP() + "</td>\n"
                    + "                        <td>\n"
                    + "                            <div class=\"btn-group\" role=\"group\" aria-label=\"Basic outlined example\">\n"
                    + "                                <button type=\"button\" class=\"btn btn-outline-secondary\">-</button>\n"
                    + "                                <input  id=\"sl_" + ct.getIdSP() + "\" name=\"sl\" style=\"width: 48px\" value=\"" + ct.getSL() + "\" class=\"btn btn-outline-secondary\">\n"
                    + "\n"
                    + "                                <button id=\"tang\" type=\"button\" class=\"btn btn-outline-secondary\">+</button>\n"
                    + "                            </div>\n"
                    + "                        </td>\n"
                    + "                <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\n"
                    + "                <script type=\"text/javascript\">\n"
                    + "\n"
                    + "                    document.getElementById('sl_" + ct.getIdSP() + "').onchange = function () {\n"
                    + "                        var id = document.getElementById(\"sl_" + ct.getIdSP() + "\").value;\n"
                    + "                        $.ajax({\n"
                    + "                            url: \"/NStore/capnhatgh\",\n"
                    + "                            type: \"get\", //send it through get method\n"
                    + "                            data: {'sl': id, 'idsp':" + ct.getIdSP() + ", 'id':" + us.getId() + ", 'url': 'showcart?idUser=" + us.getId() + "'},\n"
                    + "                            success: function (data) {\n"
                    + "                                var row = document.getElementById(\"data\");\n"
                    + "                                row.innerHTML = data;\n"
                    + "                            },\n"
                    + "                            error: function (xhr) {\n"
                    + "                                //Do Something to handle error\n"
                    + "                            }\n"
                    + "                        });\n"
                    + "                    };\n"
                    + "\n"
                    + "                </script>\n"
                    + "\n"
                    + "\n"
                    + "\n"
                    + "\n"
                    + "                <td><fmt:formatNumber type = \"number\" maxFractionDigits = \"3\" value = \"" + ct.getDonGia() + "\" />₫</td>\n"
                    + "                <td><fmt:formatNumber type = \"number\" maxFractionDigits = \"3\" value = \"" + ct.getThanhTien() + "\" />₫</td>\n"
                    + "                <td>\n"
                    + "                    <a href=\"#\"><i class=\"bi bi-pencil-square me-3\"></i></a>\n"
                    + "\n"
                    + "                    <i data-bs-toggle=\"modal\" data-bs-target=\"#_" + ct.getIdGioHang() + "\" style=\"color:red\" class=\"bi bi-x-square\"></i>\n"
                    + "\n"
                    + "                    <!-- Modal -->\n"
                    + "                    <div class=\"modal fade\" id=\"_" + ct.getIdGioHang() + "\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n"
                    + "\n"
                    + "                        <form action=\"xoagh\" class=\"d-flex\" enctype=\"multipart/form-data\" >\n"
                    + "                            <div class=\"modal-dialog\">\n"
                    + "                                <div class=\"modal-content\">\n"
                    + "                                    <div class=\"modal-header\">\n"
                    + "                                        <h5 class=\"modal-title\" id=\"exampleModalLabel\">Bạn có chắc chắn muốn xóa sản phẩm khỏi giỏ hàng</h5>\n"
                    + "                                        <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\" aria-label=\"Close\"></button>\n"
                    + "                                    </div>\n"
                    + "                                    <div class=\"modal-body\">\n"
                    + "                                        <a href=\"detail?id=" + ct.getIdSP() + "\"><img src=\"" + ct.getHinhAnh() + "\" width=\"150\" height=\"150\" alt=\"" + ct.getTenSP() + "\"/></a>\n"
                    + "                                        <br>\n"
                    + "                                        Sản phẩm: " + ct.getTenSP() + "<br>\n"
                    + "                                        Số lượng: " + ct.getSL() + "<br>\n"
                    + "                                        Đơn giá: <fmt:formatNumber type = \"number\" maxFractionDigits = \"3\" value = \"" + ct.getDonGia() + "\" />₫<br>\n"
                    + "                                        Thành tiền: <fmt:formatNumber type = \"number\" maxFractionDigits = \"3\" value = \"" + ct.getThanhTien() + "\" />₫\n"
                    + "\n"
                    + "                                    </div>\n"
                    + "\n"
                    + "                                    <input name=\"id\" value=\"" + us.getId() + "\" hidden>\n"
                    + "                                    <input name=\"idSP\" value=\"" + ct.getIdSP() + "\" hidden>\n"
                    + "                                    <input name=\"url\" value=\"showcart?idUser=" + us.getId() + "\" hidden>\n"
                    + "\n"
                    + "                                    <div class=\"modal-footer\">\n"
                    + "                                        <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Hủy</button>\n"
                    + "                                        <button type=\"submit\" class=\"btn btn-danger\">Xác nhận</button>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>\n"
                    + "                        </form>\n"
                    + "\n"
                    + "\n"
                    + "\n"
                    + "\n"
                    + "                    </div>\n"
                    + "                </td>\n"
                    + "                <td>\n"
                    + "                    <a href=\"#\"><i class=\"bi bi-info-square\"></i></a>\n"
                    + "                </td>\n"
                    + "\n"
                    + "                </tr>\n"
                    + "                </c:forEach>\n"
                    + "                </tbody>\n"
                    + "            </table>\n"
                    + "        </div>\n"
                    + "\n"
                    + "        <jsp:include page=\"Footer.jsp\"></jsp:include>\n");
        }

        out.println("");

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
            Logger.getLogger(CapnhatGioHang.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(CapnhatGioHang.class.getName()).log(Level.SEVERE, null, ex);
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
