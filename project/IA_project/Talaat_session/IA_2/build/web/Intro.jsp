<%-- 
    Document   : index
    Created on : Oct 24, 2017, 4:48:19 AM
    Author     : Talaat
--%>



<%@page import="java.util.ArrayList"%>
<%@page import="db.ConnectionDB"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session and Cookies</title>
    </head>
    <body>
        <%
            
           
            
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
            if(t == null)
            {out.println("NO COOKIE");
               if(application.getAttribute("Manager")==null)
               {out.println("NO SessionManager");
                   HashMap<String, HttpSession> SessionsManager=new HashMap<String, HttpSession>();
                   application.setAttribute("Manager",SessionsManager);
               }
               %>
               <form action="StoreTheSession">
                   Enter User : <input name="name" type="text">
                   Enter E-mail : <input name="E-mail" type="text">
                   Enter Phone : <input name="Phone" type="text">
                   <input type="submit">
               </form>
               <%
            }
            else
            {
                if(application.getAttribute("Manager")==null)
               {
                    t.setMaxAge(0);
                    response.addCookie(t);
                    response.sendRedirect("Intro.jsp");
               }else{
                       HashMap<String, HttpSession> SessionsManager_;
                       SessionsManager_=(HashMap<String, HttpSession>)application.getAttribute("Manager");
                       HttpSession session_=null;
                       session_=SessionsManager_.get(t.getValue());
                       if(session_!=null)
                       {
                            out.print("User ");
                            out.print(session_.getAttribute("User"));
                            out.print(" in SessionsManager now ");
                            out.println(session_.getAttribute("E-mail"));
                            out.println(session_.getAttribute("Phone"));
                            
                            //out.print(" "+SessionsManager_.size());
                            try{
                             ConnectionDB c = new ConnectionDB();
                            ArrayList <String> data = new ArrayList<String>();
                            data = c.SelectData(t.getValue());
                            out.print("Mail  " + data.get(0));
                            out.print("Phone  " + data.get(1));
                            System.out.println("mail" + data.get(0));
                            }catch(Exception e){
                            System.out.print("error" + e);

                            }
                            

                            %>
                            
                            
                            
                            <form action="logout">
                                <input value="logout" type="submit">
                            </form>
        <%
                       }
                    else{
                            t.setMaxAge(0);
                             //temp.setPath("/");
                               response.addCookie(t);
                            response.sendRedirect("Intro.jsp");
                        }
}
}
                    

            
            
        
        %>
        
    </body>
</html>
