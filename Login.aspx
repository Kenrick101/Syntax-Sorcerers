<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Watt_Front_end.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>

  <title>Login Form</title>

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="./style.css">

  <style media="screen">

    *,
    *:before,
    *:after{
      padding: 0;
      margin: 0;
      box-sizing: border-box;
    }

    body{
      background-color: #080710;
      background-image: url("images/solar-panels.jpg");
      background-size: cover;
      background-attachment: fixed;
    }

    .background{
      width: 430px;
      height: 520px;
      position: absolute;
      transform: translate(-50%,-50%);
      left: 50%;
      top: 50%;
      margin-top: 20px;
    }

    .background .shape{
      height: 180px;
      width: 180px;
      position: absolute;
      border-radius: 25%;
    }

    .shape:first-child{
      background: linear-gradient(
        #eadc1d,
        #543308
      );
      left: -50px;
      top: -45px;
    }

    .shape:last-child{
      background: linear-gradient(
        to right,
        #1845ad,
        #23a2f6
      );
      right: -50px;
      bottom: -45px;
    }

    form{
      height: 450px;
      width: 400px;
      background-color: rgba(255,255,255,0.13);
      position: absolute;
      transform: translate(-50%,-50%);
      top: 50%;
      left: 50%;
      border-radius: 10px;
      backdrop-filter: blur(10px);
      border: 2px solid rgba(255,255,255,0.1);
      box-shadow: 0 0 40px rgba(8,7,16,0.6);
      padding: 50px 35px;
    }

    form *{
      font-family: 'Poppins',sans-serif;
      color: #ffffff;
      letter-spacing: 0.5px;
      outline: none;
      border: none;
    }

    form h3{
      font-size: 32px;
      font-weight: 500;
      line-height: 42px;
      text-align: center;
    }

    label{
      display: block;
      margin-top: 30px;
      font-size: 16px;
      font-weight: 500;
    }

    .text-input{
      display: block;
      height: 50px;
      width: 100%;
      background-color: rgba(255,255,255,0.07);
      border-radius: 3px;
      padding: 0 10px;
      margin-top: 8px;
      font-size: 14px;
      font-weight: 300;
    }

    input:focus,
    input:hover{
      background-color: #080710ab;
      border: 2px solid white;
    }

    .text-input::placeholder{
      color: #e5e5e5;
    }

    button{
      margin-top: 50px;
      width: 100%;
      background-color: #ffffff;
      color: #080710;
      padding: 15px 0;
      font-size: 18px;
      font-weight: 600;
      border-radius: 5px;
      cursor: pointer;
    }
    
    button:hover{
      background-color: #b4b7c4;
    }

    .nav-bar{
      background-color: black;
    }

  </style>
</head>
<body>
  <div class="row">
    <div class="nav-bar grid">
        <div class="logo-container"><a href="Index.aspx"><img class="logo" src="./images/WaTT_Logo.png"></a></div>
        <div class="flex-row nav-options">
          
          <div><h2><a href="">Products</a></h2></div>
          <div><h2>|</h2></div>
          <div><h2><a href="">About Us</a></h2></div>
          <div><h2>|</h2></div>
          <div><h2><a href="Register.aspx">Register</a></h2></div>
          
        </div>
    </div>
  </div>

    <div class="background">
      <div class="shape"></div>
      <div class="shape"></div>
    </div>
    
    <form action="Register.aspx">
      <h3>Login Here</h3>

      <label for="username">Username</label>
      <input class="text-input" type="text" placeholder="Email" id="username">

      <label for="password">Password</label>
      <input class="text-input" type="password" placeholder="Password" id="password">

      <button type="submit">Log In</button>
    </form>

    <script src="./script.js"></script>
</body>
</html>

