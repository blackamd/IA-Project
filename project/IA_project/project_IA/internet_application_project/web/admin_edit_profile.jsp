<%-- 
    Document   : admin_edit_profile
    Created on : Dec 15, 2017, 12:03:30 AM
    Author     : AhMeD...SoLiMaN
--%>

<%@page import="db.connect"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/editadvertisement.css">
        <title>edit Page</title>
    </head>
    <body>
        <h1>user.ID = <%=request.getParameter("user_id")%></h1>
            <% 
            String user_id = request.getParameter("user_id");
            ArrayList user_data = null;
            
            try{
              connect co = new connect();
              user_data = new ArrayList();
              user_data = co.show_user(user_id);
            }catch(NullPointerException e){
                System.out.println(e);
            }
            %>
            
   
    <br>
            <br> Name :[ <%=user_data.get(1)%> ] ||
            Phone :[ <%=user_data.get(2)%> ] ||
            Address :[ <%=user_data.get(3)%> ] ||
            Email :[ <%=user_data.get(4)%> ] ||            
            Password :[ <%=user_data.get(5)%> ] ||
           
            
    <center>
        -------------------------------------------------------------------------------------
        <h1>Do Some Edit</h1>
    </center>
    <center>
        <form action="edit_user">
            <p>Name..................Phone..............Address..............Email..............Password</p>
            
            <input type="hidden" name="user_id" value="<%=user_data.get(0)%>">
            <input type="text" name="Name" value="<%=user_data.get(1)%>">
            <input type="text" name="Phone" value="<%=user_data.get(2)%>">
            <input type="text" name="Address" value="<%=user_data.get(3)%>">
            <input type="text" name="Email" value="<%=user_data.get(4)%>">
            <input type="text" name="Password" value="<%=user_data.get(5)%>">
            
            <br><button class="button" value="Edit" type="submit">Submit</button>
        </form>
    </center>
    </body>
</html>
