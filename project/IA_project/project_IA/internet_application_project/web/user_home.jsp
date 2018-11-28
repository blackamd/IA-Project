<%-- 
    Document   : user_home
    Created on : Dec 5, 2017, 8:04:45 PM
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
        <title><%=session.getAttribute("name")%> Home</title>
    </head>
    <body>
    <link async href="http://fonts.googleapis.com/css?family=Warnes" data-generated="http://enjoycss.com" rel="stylesheet" type="text/css"/>
    <center><h1>Welcome <%=session.getAttribute("name")%></h1></center>
    <center><h1>House Buy and Rent</h1></center>
    <center><div class="link">
        <button class="button" onClick="window.location='userprofile.jsp';" value="profile" type="submit">My Profile</button>
        <button class="button" onClick="window.location='add_alert.jsp';" value="contact" type="submit">Alert</button>
        <button class="button" onClick="window.location='notification_page.jsp';" value="contact" type="submit">Notification</button>
        <button class="button" onClick="window.location='logout';" value="logout" type="submit">Log_out</button>
        </div></center><br>
    <center>-----------------------------------------------------------------------------------------------</center>
    <center><form action="search_page.jsp">
            <div  style="background-color: blueviolet">
                    Type <select class="text" name="Type">
			<option value="Rent">Rent</option>
                        <option value="Sell">Sell</option>
			</select>
----                    
                    Rate <input type="text" name="Rate">
----
                    Size <input type="text" name="Size">				
----
                    Price <input type="text" name="Price">				
----
                    <br>Location <input type="text" name="Location">				
----
                    Floor <input type="text" name="Floor">				
----

                    Status <select class="text" name="Status">
			<option value="Full_Duplex">Full_Duplex</option>
			<option value="Half_Duplex">Half_Duplex</option>
			
			</select>
				
                    <br><button type="submit" class="btn btn-primary btn-lg">SEARCH</button>
						
		</div>				
        </form></center>
    <center>-----------------------------------------------------------------------------------------------</center>
    <center><h2>This is all our advertisements</h2></center>
        
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
        
   
    </body>
</html>
