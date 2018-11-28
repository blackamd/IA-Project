<%-- 
    Document   : comment_page
    Created on : Dec 12, 2017, 8:38:04 PM
    Author     : AhMeD...SoLiMaN
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/home.css">
        <title>comment Page</title>
    </head>
    <body>
    <center><h1>Comment Page</h1></center>
    
    <div class="container">
        <%
            ArrayList ids_com = null;
            String ads_id = request.getParameter("ads_id_comment");
            try{
                connect con = new connect();
                ids_com = new ArrayList();
                ids_com = con.show_comments(ads_id);
                
                if(ids_com.isEmpty()){
                    %>
                    <div class="container"><h1>No Comment Are There Yet...</h1>
                    </div>
        <%
                }
                else{
                    Iterator itr = ids_com.iterator();
                    
                    while (itr.hasNext()) {
                    ArrayList pList = (ArrayList) itr.next();
                    
                    
                    
                    
                    
                    out.println("ads_id = " + ads_id);
                    out.println("comment = " +pList.get(2));
                    out.println("From User_name = " +pList.get(1) );
                    out.println("<br>");
                    out.println("---------------------------------------------------------------------------- " );
                    out.println("<br>");
                    }
                    

                }
               
                }catch(NullPointerException e){
                out.println("error = " + e);
                 }
        %>
        <form action="add_comment">
        <textarea name="comment" rows="4" cols="50" placeholder="Enter comment here..."></textarea> <input type="submit" value="Comment">
        <input type="hidden" value="<%=ads_id%>" name="ads_id">
        </form>
    </div>
    </body>
</html>
