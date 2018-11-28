<%-- 
    Document   : suspend_ads
    Created on : Dec 6, 2017, 4:53:51 PM
    Author     : AhMeD...SoLiMaN
--%>

<%@page import="db.connect"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/adminprofile.css">
        <title>Suspend Adverdisement</title>
    </head>
    <body>
        <h1>Suspend Adverdisement</h1>
          <% 
             ArrayList user_ads = new ArrayList();
            try{
            connect con = new connect();
            user_ads = con.get_all_ads();
             }catch(NullPointerException e){
            System.out.print("error" + e);
             }
                    
        if(user_ads.isEmpty()){
        %>
        <div class="container">You Do Not Have any Advertisement Yet
            
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
             <form action="suspend_ads">
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
            <br><button class="button" value="suspend" type="submit">SUSPEND</button>
             </form>
        </div>
        
        <%
        }
}
        %>
    </body>
</html>
