<%-- 
    Document   : add_alert
    Created on : Dec 16, 2017, 12:56:46 PM
    Author     : AhMeD...SoLiMaN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/addadvertisement.css">
        <title>alert Page</title>
    </head>
    <body>
        <div class="container"></div>
  <p class="text">Create alert </p>
  <div class="element"></div>
  <form action="alert">
  <select class="_select _select-1" name="type">
    <option value="Sell" >Sell</option>
    <option value="Rent">Rent</option>
  </select>
  <input class="_input _input-1" placeholder="Size" type="text" name="size">
  <input class="_input _input-2" placeholder="Price" type="text" name="price">
  <input class="_input _input-3" placeholder="Floor" type="text" name="floor">
  <input class="_input _input-4" placeholder="Location" type="text" name="location">
  <input class="_input _input-5" placeholder="Offer" type="text" name="offer">
  <input  placeholder="id" type="text" name="user_id" value="<%=session.getAttribute("user_id")%>">
  <select class="_select _select-2" name="status">
    <option value="Full_Duplex">Full Duplex</option>
    <option value="HALF_Duplex">HALF Duplex</option>
  </select>
  <button class="_button _button-2" type="submit">SUBMIT</button>
</form>
    </body>
</html>
