<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Watt_Front_end.Register" %>

<!DOCTYPE html>
<html lang="en">
<head>

  <title>Register Form</title>

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="/style.css">

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
    }

    .background{
      width: 430px;
      height: 520px;
      position: absolute;
      transform: translate(-50%,-50%);
      left: 50%;
      top: 50%;
    }

    .background .shape{
      height: 180px;
      width: 180px;
      position: absolute;
      border-radius: 25%;
    }

    .shape:first-child{
      background: linear-gradient(
        #1845ad,
        #23a2f6
      );
      left: -60px;
      top: -65px;
    }

    .shape:last-child{
      background: linear-gradient(
        to right,
        #543308,
        #eadc1d
      );
      right: -55px;
      bottom: -65px;
    }

    form{
      height: 600px;
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
      line-height: 32px;
      text-align: center;
      margin-top: -30px;
    }

    label{
      display: block;
      margin-top: 23px;
      font-size: 15px;
      font-weight: 500;
    }

    input{
      display: block;
      height: 40px;
      width: 100%;
      background-color: rgba(255,255,255,0.07);
      border-radius: 3px;
      padding: 0 10px;
      margin-top: 4px;
      font-size: 14px;
      font-weight: 300;
    }

    input:focus,
    input:hover{
      background-color: #080710ab;;
    }

    ::-webkit-calendar-picker-indicator {
    filter: invert(1);
}

    select{
      display: block;
      height: 40px;
      width: 100%;
      background-color: rgba(255,255,255,0.07);
      border-radius: 3px;
      padding: 0 10px;
      margin-top: 4px;
      font-size: 14px;
      font-weight: 300;

    }
    select:hover{
      background-color: #080710ab;
    }

    ::placeholder{
      color: #e5e5e5;
    }

    button{
      margin-top: 27px;
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

    nav{
      flex: 1;
      position: relative;
      text-align: right;
      font-size: 20px;
      word-spacing: 10px;
      margin-right: 50px;
      margin-top:20px;
      background-color: rgba(255,255,255,0.13);
      backdrop-filter: blur(10px);
      border: 2px solid rgba(255,255,255,0.1);
      box-shadow: 0 0 40px rgba(8,7,16,0.6);
      border-radius: 10px;
      font-family: 'Poppins',sans-serif;
      width: 240px;
      padding-right: 0px;
      padding-left: 10px;
    }

    nav ul{
      display: inline-block;
      list-style-type: one;
    }

    nav ul li{
      display: inline-block;
      margin-right: 15px;
      color: white;
    }

    .navbar{
      display: flex;
      align-items: center;
      padding: 5px;
      float: right;
    }

    a{
      color: white;
      text-underline-offset:11.5px ;
    }

    a:hover{
      color: rgb(133, 125, 125);
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
          <div><h2><a href="Login.aspx">Login</a></h2></div>
          
        </div>
    </div>
  </div>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form action="Login.aspx">
      <h3>Register Here</h3>

      <label for="Name">Name</label>
      <input type="text" placeholder="Name" id="Name">

      <label for="Gender">Gender</label>
      <select name="gender" id="gender">
        <option value="">-Select Gender-</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        <option value="Other">Other</option>
      </select>

      <label for="Name">Date of Birth</label>
      <input type="date" class="Date">

      <label for="username">Username</label>
      <input type="text" placeholder="Email" id="username">

      <label for="password">Password</label>
      <input type="password" placeholder="Password" id="password">

      <button type="submit">Register</button>

    </form>
    <script src="/script.js"></script>
</body>
</html>

