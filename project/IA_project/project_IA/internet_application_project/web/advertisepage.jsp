<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.connect"%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>advertise page</title>
  <link rel="stylesheet" href="css/standardize.css">
  <link rel="stylesheet" href="css/advertisepage-grid.css">
  <link rel="stylesheet" href="css/advertisepage.css">
</head>
<body class="body page-advertisepage clearfix">
    <%
    String ads_id = request.getParameter("ads_id") ;
    ArrayList ads =null;
    
    try{
        connect con = new connect();
        ads = new ArrayList();
        ads = con.get_ads_details(ads_id);
    }catch(NullPointerException e){
        System.out.println("className.methodName()" + e);
    }
    Iterator itr = ads.iterator();
    ArrayList dList = (ArrayList) itr.next();
    
    %>
  <div class="container"></div>
  <div class="wrapper wrapper-1">The House Photo</div>
  <div class="element"></div>
  <div class="wrapper wrapper-2"> TYPE : <%=dList.get(2)%> 
</div>
  <div class="wrapper wrapper-3">SIZE : <%=dList.get(3)%> 
</div>
  <div class="wrapper wrapper-4">PRICE : <%=dList.get(4)%> </div>
  <div class="wrapper wrapper-5">FLOOR : <%=dList.get(6)%> 
</div>
  <div class="wrapper wrapper-6">LOCATION : <%=dList.get(5)%> 
</div>
  <div class="wrapper wrapper-7">STATUS : <%=dList.get(9)%> 
</div>
<form action="getusercontacts.jsp">
    <input type="hidden" value="<%=dList.get(10)%>" name="user_id">
<button  class="_button">Get user contacts</button>
</form> 
<div class="wrapper wrapper-8">DESCRIPTION : <%=dList.get(8)%> 
</div>
</body>
</html>