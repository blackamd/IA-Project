<%-- 
    Document   : edit
    Created on : Dec 11, 2017, 12:11:02 PM
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
        <link rel="stylesheet" href="css/editadvertisement.css">
        <title>Edit</title>
    </head>
    <body>
        
        
        <h1>ADS.ID = <%=request.getParameter("ads_id") %></h1>
            <% 
            String ads_id = request.getParameter("ads_id");
            ArrayList id_details = null;
            
            try{
              connect co = new connect();
              id_details = new ArrayList();
              id_details = co.get_ads_details(ads_id);
            }catch(NullPointerException e){
                System.out.println(e);
            }
            Iterator itr = id_details.iterator();
            ArrayList pList = (ArrayList) itr.next();
            %>
            <p>The Advirstiment ID = <%=request.getParameter("ads_id") %> Details</p>
   
    <br>
            <br> Date :[ <%=pList.get(1)%> ] ||
            type :[ <%=pList.get(2)%> ] ||
            size :[ <%=pList.get(3)%> ] ||
            price :[ <%=pList.get(4)%> ] 
            
            <br>location :[ <%=pList.get(5)%> ] ||
            floor :[ <%=pList.get(6)%> ] ||
            offers :[ <%=pList.get(7)%> ] ||
            status :[ <%=pList.get(9)%>] 
            
            <br>Discription :[ <%=pList.get(8)%> ] 
            
    <center>
        -------------------------------------------------------------------------------------
        <h1>Do Some Edit</h1>
    </center>
    <center>
        <form action="edit_ads">
            <p>TYPE..................Size..............PRICE..............LOCATION..............FLOOR..............OFFERS..............STATUS</p>
            <input type="hidden" name="ids_id" value="<%=request.getParameter("ads_id")%>">
            <input type="hidden" name="date" value="<%=pList.get(1)%>">
            <input type="text" name="type" value="<%=pList.get(2)%>">
            <input type="text" name="size" value="<%=pList.get(3)%>">
            <input type="text" name="price" value="<%=pList.get(4)%>">
            <input type="text" name="location" value="<%=pList.get(5)%>">
            <input type="text" name="floor" value="<%=pList.get(6)%>">
            <input type="text" name="offers" value="<%=pList.get(7)%>">
            <input type="text" name="status" value="<%=pList.get(9)%>">
            <p>DISCRIPTION</p>
            <br><input type="text" name="discription" value="<%=pList.get(8)%>">
            <br><button class="button" value="Edit" type="submit">Submit</button>
        </form>
    </center>
    </body>
</html>
