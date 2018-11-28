<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>add advertisement</title>
  <link rel="stylesheet" href="css/standardize.css">
  <link rel="stylesheet" href="css/addadvertisement-grid.css">
  <link rel="stylesheet" href="css/addadvertisement.css">
</head>
<body class="body page-addadvertisement clearfix">
  <div class="container"></div>
  <p class="text">Insert into this form the properties of the advertisement then press confirm and publish</p>
  <div class="element"></div>
  <form action="add_ads">
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
  <textarea class="_textarea" placeholder="Please , Write a brief description about your advertisement here ..." name="description"></textarea>
  <select class="_select _select-2" name="status">
    <option value="Full_Duplex">Full Duplex</option>
    <option value="HALF_Duplex">HALF Duplex</option>
  </select>
  <button class="_button _button-1">Upload a photo</button>
  <button class="_button _button-2" type="submit">Confirm and Publish</button>
</form>
</body>
</html>