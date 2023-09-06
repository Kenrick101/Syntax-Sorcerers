<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Watt_Front_end.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .main-banner{
      width: 100%;
      height: 100vh;
      grid-template-columns: 1fr;
      grid-template-rows: 10vh 90vh;
      background-image: url("images/solar-panels.jpg");
      background-attachment: fixed;
      background-size: cover;
    }

        .light-bulb{
      animation: fadeIn 0.5s ease-in;
      animation-delay: 1s;
      opacity: 0;
      animation-fill-mode: forwards;
      padding-top: 10px;
    }

    .products-title{
      margin-top: 50px;
      color: black;
      text-align: center;
    }

    .products-title::after{
      content: '';
      background:  rgb(22, 185, 235);
      width: 105px;
      height: 6px;
      border-radius: 5px;
      position: absolute;
      bottom: 15px;
      left: 50%;
      transform: translate(-50%);
    } 

    .product-category-grid
    {
      margin-top: 50px;
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(400px, 25%));
      gap: 50px;
      margin-left: 50px;
      margin-right: 50px;
      justify-content: center;
    }

    .product-category
    {
      height: 400px;
      background-color: #2C3639;
      color: aliceblue;
      text-align: center;
    }

    .category-title
    {
      margin-top: 30px;
    }


    </style>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
      <div class="hero-container flex-col">
        <div class="hero-content flex-col">
            <div class="hero-heading"><h1>Feeling stuck in the dark?</h1></div>
            <div class="hero-body"><h2>With us the lights stay on.</h2></div>
            <img class="light-bulb" src="./images/lightbulb-02-svgrepo-com.svg" alt="light bulb" height="80px">
        </div>
      </div>
    </div>
  

  <h2 class="products-title">Our Products</h2>

  <div class="product-category-grid">
    <a href="Prduct_Page(Generators).aspx"><div class="product-category product-container flex-col">
      <div class="product-img flex-col"><img src="./images/generator_pic.png" alt="Generator Product" width="200px"></div>
            <div class="product-info-container flex-col">
                <h2 class="category-title">Generators</h2>
            </div>
    </div></a>
    <a href="Product_Page(Solar_Panels).aspx"><div class="product-category product-container flex-col">
      <div class="product-img flex-col"><img src="./images/Solar_Panel_Category_Image.png" alt="Solar Panel Product" width="200px"></div>
            <div class="product-info-container flex-col">
                <h2 class="category-title">Solar Panels</h2>
            </div>
    </div></a>
    <a href="./Product_Page(Inverters).aspx"><div class="product-category product-container flex-col">
      <div class="product-img flex-col"><img src="images/Inverter Category image.png" alt="Inverter Product" width="110px"></div>
            <div class="product-info-container flex-col">
                <h2 class="category-title">Inverters</h2>
            </div>
    </div></a>
    <a href="./Product_Page(Batteries).aspx"><div class="product-category product-container flex-col">
      <div class="product-img flex-col"><img src="./images/Battery_Category_Image.png" alt="Batteries" width="200px"></div>
            <div class="product-info-container flex-col">
                <h2 class="category-title">Batteries</h2>
            </div>
    </div></a>
    <a href="./Product_Page(Lights).aspx"><div class="product-category product-container flex-col">
      <div class="product-img flex-col"><img src="./images/Light_Category_Image.png" alt="Lights Product" width="200px"></div>
            <div class="product-info-container flex-col">
                <h2 class="category-title">Lights</h2>
            </div>
    </div></a>
    <a href="./Product_Page(Other).aspx"><div class="product-category product-container flex-col">
      <div class="product-img flex-col"><img src="./images/Other_Products_Category_Image.jpg" alt="Other Product" width="102px"></div>
            <div class="product-info-container flex-col">
                <h2 class="category-title">Other</h2>
            </div>
    </div></a>
  </div>


</asp:Content>
