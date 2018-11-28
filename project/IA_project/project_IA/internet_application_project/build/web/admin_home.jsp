<%-- 
    Document   : admin_home
    Created on : Dec 6, 2017, 4:16:30 PM
    Author     : AhMeD...SoLiMaN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/adminprofile.css">
        <title><%=session.getAttribute("name")%> Home</title>
    </head>
    <body>
        <h1>welcome Admin <%=session.getAttribute("name")%></h1>
        <center><div class="link">
        <button class="button" onClick="window.location='admin_user_edit.jsp';" value="edit_user" type="submit">Add User profile</button>
        <button class="button" onClick="window.location='addadmin.html';" value="add_admin" type="submit">Add User As Admin</button>
        <button class="button" onClick="window.location='close_ads.jsp';" value="close" type="submit">Close Adverdisement</button>
        <button class="button" onClick="window.location='suspend_ads.jsp';" value="suspend" type="submit">Suspend Adverdisement</button>
        <button class="button" onClick="window.location='logout';" value="logout" type="submit">Log_out</button>
        </div></center><br>
    <center>-----------------------------------------------------------------------------------------------</center>
    </body>
</html>
