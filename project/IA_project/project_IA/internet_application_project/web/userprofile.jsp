<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1.0">
  <title>user profile</title>
  <link rel="stylesheet" href="css/standardize.css">
  <link rel="stylesheet" href="css/userprofile-grid.css">
  <link rel="stylesheet" href="css/userprofile.css">
</head>
<body class="body page-userprofile clearfix">
  <div class="container"></div>
  <div class="element"></div>
  <p class="text text-1">My Profile</p>
  <div class="wrapper wrapper-1"><%=session.getAttribute("name")%></div>
  <p class="text text-2">My Advertisements</p>
  <div class="wrapper wrapper-2">User Photo</div>
  <div class="wrapper wrapper-3"><%=session.getAttribute("email")%></div>
  <div class="wrapper wrapper-4"><%=session.getAttribute("address")%></div>
  <div class="wrapper wrapper-5"><%=session.getAttribute("phone")%></div>
  <button onClick="window.location='user_home.jsp';" class="_button _button-1">Home</button>
  <button onClick="window.location='edit_profile.jsp';" class="_button _button-2">Edit My profile</button>
  <button onClick="window.location='addadvertisement.jsp';" class="_button _button-3">Make New Advertisement</button>
  <button onClick="window.location='editadvertisement.jsp';" class="_button _button-4">Edit Existing Advertisement</button>
  <button onClick="window.location='logout';" class="_button _button-5">Logout</button>
</body>
</html>