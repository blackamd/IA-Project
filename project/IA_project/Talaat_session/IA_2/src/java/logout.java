/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import db.ConnectionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
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
@WebServlet(urlPatterns = {"/logout"})
public class logout extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
         ConnectionDB c = new ConnectionDB();
         
        response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
           
            String Name = "Current";
            Cookie cookies [] = request.getCookies ();
            Cookie t = null;
            if (cookies != null)
            {
                for (int i = 0; i < cookies.length; i++) 
                {
                    if (cookies [i].getName().equals (Name))
                    {
                        t = cookies[i];
                        break;
                    }
                }
            }
            HashMap<String, HttpSession> SessionsManager_=(HashMap<String, HttpSession>)request.getServletContext().getAttribute("Manager");
            SessionsManager_.remove(t.getValue());
            request.getServletContext().setAttribute("Manager",SessionsManager_);
            c.DeleteData(t.getValue());
            t.setMaxAge(0);
            response.addCookie(t);
            response.sendRedirect("Intro.jsp");
            
            
            
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "new";
    }

}
