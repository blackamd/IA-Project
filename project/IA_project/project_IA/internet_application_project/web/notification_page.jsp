<%-- 
    Document   : notification_page
    Created on : Dec 16, 2017, 1:26:25 PM
    Author     : AhMeD...SoLiMaN
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="db.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/editadvertisement.css">
        <title>Notification Page</title>
    </head>
    <body>
    <center> <h1>NOTIFICATION.S</h1> </center>
       
            <% 
            
             ArrayList user_ads = new ArrayList();
            try{
            connect con = new connect();
            String user_id = new String();
            user_id = session.getAttribute("user_id").toString();
            user_ads = con.get_user_ads(user_id);
             }catch(NullPointerException e){
            System.out.print("error" + e);
             }
                    
        if(user_ads.isEmpty()){
        %>
        <div class="container">No Notifications
            
            <button class="button" value="Edit" type="submit">OK</button>
        </div>
        <%
        }
        else{

            Iterator itr = user_ads.iterator();
            while (itr.hasNext()) {
            ArrayList pList = (ArrayList) itr.next();
        %>
         <div class="container">
             <form action="edit.jsp">
                 
            id : <%=pList.get(0)%>
            Date : <%=pList.get(1)%>
            type : <%=pList.get(2)%>
            size : <%=pList.get(3)%>
            price : <%=pList.get(4)%>
            location : <%=pList.get(5)%>
            floor : <%=pList.get(6)%>
            offers : <%=pList.get(7)%>
            Discription : <%=pList.get(8)%>
            status : <%=pList.get(9)%>
            Suspend : <%=pList.get(10)%>
            
            
            
            
            <input type="hidden" value="<%=pList.get(0)%>" name="ads_id">
            <button class="button" value="Edit" type="submit">Edit</button>
             </form>
        </div>
        
        <%
        }
}
        %>
    </body>
</html>