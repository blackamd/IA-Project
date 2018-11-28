<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="utf-8">
        <title>index</title>
        <link rel="stylesheet" href="css/standardize.css">
        <link rel="stylesheet" href="css/index-grid.css">
        <link rel="stylesheet" href="css/index.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body class="body page-index clearfix">
        <div class="container">            
        </div>
        <p class="text text-1">User Email</p>
        <p class="text text-2">Login</p>
        <p class="text text-3">Password</p>
        <form action="log_in" onsubmit="return validation()">
            <input class="_input _input-1" type="text" name="email" id="email">
            <input class="_input _input-2" type="password" name="pass" id="pass">
            <button type="submit" class="_button _button-2" name="button" value="admin" >Admin login</button>
            <button type="submit" class="_button _button-1" name="button" value="user">User Login</button>            
        </form>
        <script>
            function validation(){
                var email = document.getElementById("email").value;
                var pass = document.getElementById("pass").value;
                if(email !== "" || pass !== ""){
                    return true;
                }
                else{
                    alert("please fill the email and password Important to log_in");
                    return false;
                }
            }
            </script>
        <form action="signup.html">
        <button type="submit" class="_button _button-3" name="button" value="sign">Sign_up</button>
        </form>
    </body>
</html>
