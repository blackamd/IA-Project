<%@page import="db.connect"%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>get user contacts</title>
  <link rel="stylesheet" href="css/standardize.css">
  <link rel="stylesheet" href="css/getusercontacts-grid.css">
  <link rel="stylesheet" href="css/getusercontacts.css">
</head>
<body class="body page-getusercontacts clearfix">
    <%
    String user_id = request.getParameter("user_id") ;
    String[] user_data = new String[4];
    String[] user_data_ = new String[4];
    
    try{
        connect con = new connect();
        user_data = con.get_user_data_byID(user_id);
        
    }catch(NullPointerException e){
        System.out.println("className.methodName()"+ e);
    }
    
    %>
  <div class="container"></div>
  <p class="text">Here you are the details of the owner</p>
  <div class="element"></div>
  <div class="wrapper wrapper-1">Owner Name : <%=user_data[0]%></div>
  <div class="wrapper wrapper-2">Owner Email : <%=user_data[3]%></div>
  <div class="wrapper wrapper-3">Owner Phone : <%=user_data[1]%></div>
  <div class="wrapper wrapper-4">Owner Address : <%=user_data[2]%></div>
  <div class="wrapper wrapper-5">Owner Photo</div>
</body>
</html>