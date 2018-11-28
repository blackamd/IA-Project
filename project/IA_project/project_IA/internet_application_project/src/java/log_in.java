/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import db.connect;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
 * @author AhMeD...SoLiMaN
 */
@WebServlet(urlPatterns = {"/log_in"})
public class log_in extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet log_in</title>");            
            out.println("</head>");
            out.println("<body>");
            
            // --------------- connection object create ----------
            connect con = new connect();
            
            // --------------- retrive Form value From Log in Page ----------
            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            String user = request.getParameter("button");
            String admin = request.getParameter("button");
            
            // --------------- Condition check if button submit is [User]OR[Admin]----------
            if(user.equals("user")){
                String rigth_pass = new String();
                try {
                    rigth_pass = con.log_in(email);
                    } catch (SQLException ex) {
                    out.println("SQLException ex = "+ex+"<br>");
                }
                    // --------------- Condition check if is password is Right----------
                    if(rigth_pass.equals(password)){
                        // --------------- collect user data From DB----------
                        String[] user_data = new String[4];
                        try {
                            user_data = con.get_user_data(email);
                        } catch (SQLException ex) {
                            out.println("SQLException ex = "+ex+"<br>");
                        }
                        // --------------- create session for User Sign_up page ----------
                        HttpSession user_session = request.getSession();
                        user_session.setAttribute("user_id", user_data[0]);
                        user_session.setAttribute("name", user_data[1]);
                        user_session.setAttribute("email", email);
                        user_session.setAttribute("password", password);
                        user_session.setAttribute("address", user_data[3]);
                        user_session.setAttribute("phone", user_data[2]);
                        
                        // --------------- go to [user_home]----------
                        response.sendRedirect("user_home.jsp");
                    }
                    else{
                        
                        response.sendRedirect("index.jsp");
                    }              
            }
            else if(admin.equals("admin")){
                String[] admin_log = new String[2];
                String rigth_pass = new String();
                String is_admin = new String(); 
                
                        try {
                            admin_log = con.log_in_with_admin(email);
                        } catch (SQLException ex) {
                            out.println("SQLException ex = "+ex+"<br>");
                        }
                        //-------------------------------------------------------
                        rigth_pass = admin_log[0];
                        is_admin = admin_log[1];
                        
                        // --------------- Condition check if is password and he is admin is Right----------
                    if(rigth_pass.equals(password) && is_admin.equals("1") ){
                        // --------------- collect user data From DB----------
                        String[] user_data = new String[4];
                        try {
                            user_data = con.get_user_data(email);
                        } catch (SQLException ex) {
                            out.println("SQLException ex = "+ex+"<br>");
                        }
                        // --------------- create session for User Sign_up page ----------
                        HttpSession user_session = request.getSession();
                        user_session.setAttribute("name", user_data[1]);
                        user_session.setAttribute("email", email);
                        user_session.setAttribute("password", password);
                        user_session.setAttribute("address", user_data[3]);
                        user_session.setAttribute("phone", user_data[2]);
                        user_session.setAttribute("user_id", user_data[0]);
                        
                        // --------------- go to [admin_home]----------
                        response.sendRedirect("admin_home.jsp");
                    }
                    else{
                        
                        response.sendRedirect("index.jsp");
                    }
                        
                
            }
            else{
                out.println("Error Can't happen");
            }
            
            out.println("</body>");
            out.println("</html>");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
