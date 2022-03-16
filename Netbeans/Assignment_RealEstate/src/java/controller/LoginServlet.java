/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author kjuel
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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

        Cookie arr[] = request.getCookies();
        if (arr != null) {
            for (Cookie c : arr) {
                if (c.getName().equals("userC")) {
                    request.setAttribute("username", c.getValue());
                }
                if (c.getName().equals("passC")) {
                    request.setAttribute("password", c.getValue());
                }
            }
        }

        request.getRequestDispatcher("views/dangnhap.jsp").forward(request, response);
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
        String u = request.getParameter("user");
        String p = request.getParameter("pass");
        String remember = request.getParameter("remember");
        AccountDAO dao = new AccountDAO();
        Account a = dao.login(u, p);
        if (a == null) {
            request.setAttribute("mess", "Tài khoản hoặc mật khẩu sai!");
            request.getRequestDispatcher("views/dangnhap.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
            session.setMaxInactiveInterval(1000);

            Cookie uc = new Cookie("userC", u);
            Cookie pc = new Cookie("passC", p);
            uc.setMaxAge(60);

            if (remember != null) {
                pc.setMaxAge(60);
            } else {
                pc.setMaxAge(0);
            }

            response.addCookie(uc);
            response.addCookie(pc);

            response.sendRedirect("home");
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
