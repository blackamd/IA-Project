<%-- 
    Document   : admin_user_edit
    Created on : Dec 14, 2017, 10:11:28 PM
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
        <link rel="stylesheet" href="css/adminprofile.css">
        <title>Edit user profile</title>
    </head>
    <body>
        <h1>All Members</h1>
       
            <% 
             ArrayList all_user = new ArrayList();
            try{
            connect con = new connect();            
            all_user = con.show_all_user();
             }catch(NullPointerException e){
            System.out.print("error" + e);
             }
                    
        if(all_user.isEmpty()){
        %>
        <div class="container">You Do Not Have any Members Yet
            
            <button class="button" value="Edit" type="submit">OK</button>
        </div>
        <%
        }
        else{

            Iterator itr = all_user.iterator();
            while (itr.hasNext()) {
            ArrayList pList = (ArrayList) itr.next();
        %>
         <div class="container">
             <form action="admin_edit_profile.jsp">
                 
            id : <%=pList.get(0)%>
            name : <%=pList.get(1)%>
            phone : <%=pList.get(2)%>
            address : <%=pList.get(3)%>
            email : <%=pList.get(4)%>
            password : <%=pList.get(5)%>
    
            <input type="hidden" value="<%=pList.get(0)%>" name="user_id">
            <button class="button" value="Edit" type="submit">Edit</button>
             </form>
        </div>
        
        <%
        }
}
        %>
        
        
        
    </body>
</html>
