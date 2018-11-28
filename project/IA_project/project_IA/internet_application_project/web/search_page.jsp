<%-- 
    Document   : search_page
    Created on : Dec 15, 2017, 3:22:51 PM
    Author     : AhMeD...SoLiMaN
--%>

<%@page import="java.util.Iterator"%>
<%@page import="db.connect"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/home.css">
        <title>Search Page</title>
    </head>
    <body>
        <center><h1>Search</h1></center>
        <%
        String Type = request.getParameter("Type");
        String Rate = request.getParameter("Rate");
        String Size = request.getParameter("Size");
        String Price = request.getParameter("Price");
        String Location = request.getParameter("Location");
        String Floor = request.getParameter("Floor");
        String Status = request.getParameter("Status");
        

        %>
            <br>
            <br> 
            Type :[ <%=Type%> ] ||
            Rate :[ <%=Rate%> ] ||
            Size :[ <%=Size%> ] ||
            Price :[ <%=Price%> ] ||            
            Location :[ <%=Location%> ] ||
            Floor :[ <%=Floor%> ] ||
            Status :[ <%=Status%> ] ||
           
            
    <center>
        -------------------------------------------------------------------------------------
        <h1>Result</h1>
         <% 
             ArrayList search_ads = new ArrayList();
            try{
            connect con = new connect();
            search_ads = con.search_ads(Type,Rate,Size,Price,Location,Floor,Status);
             }catch(NullPointerException e){
            System.out.print("error" + e);
             }
                    
        if(search_ads.isEmpty()){
        %>
        <div class="container">Not Found
            
            <button class="button" value="Edit" type="submit">OK</button>
        </div>
        <%
        }
        else{

            Iterator itr = search_ads.iterator();
            while (itr.hasNext()) {
            ArrayList pList = (ArrayList) itr.next();
            try{
            String suspend = null;
            suspend = new String();
            suspend =String.valueOf(pList.get(10));
            if(suspend.equals("1")){

            }else{
        %>
         <div class="container">
             <form action="advertisepage.jsp">
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
            <br><button class="button" value="view" type="submit">view Ads</button> 
             </form>
            <form action="comment_page.jsp">
                <button class="button" value="comment" type="submit">Comment</button>
                <input type="hidden" value="<%=pList.get(0)%>" name="ads_id_comment">
            
            </form>
        </div>
        
        <%
            }
}catch(NullPointerException e){
out.println("error " + e);
}
        }
}
        %>
    </center>
    </body>
</html>
