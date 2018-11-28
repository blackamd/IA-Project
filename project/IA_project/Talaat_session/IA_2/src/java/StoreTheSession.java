/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import db.ConnectionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 
 * @author Talaat
 */
@WebServlet(urlPatterns = {"/StoreTheSession"})
public class StoreTheSession extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        ConnectionDB c = new ConnectionDB();
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            String name=request.getParameter("name");
            String Email=request.getParameter("E-mail");
            String Phone=request.getParameter("Phone");
            
            HttpSession session=request.getSession();
            session.setAttribute("User",name);
            session.setMaxInactiveInterval(3*60);
            
            HashMap<String, HttpSession> SessionsManager_=(HashMap<String, HttpSession>)request.getServletContext().getAttribute("Manager");
            SessionsManager_.put(session.getId(), session);
            
            Cookie cookie=new Cookie("Current",session.getId());
            cookie.setMaxAge(3*60);
            response.addCookie(cookie);
            
            c.StoreData(session.getId(), Email, Phone);
            
            response.sendRedirect("Intro.jsp");
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(StoreTheSession.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(StoreTheSession.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(StoreTheSession.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(StoreTheSession.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "new";
    }

}
