<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.Master" AutoEventWireup="true" CodeBehind="Product_Page(Lights).aspx.cs" Inherits="Watt_Front_end.Product_Page_Lights_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="product-banner flex-row">
        <div class="grid banner">
            <div class="banner-info-container flex-col">
                <div class="flex-col banner-info">
                    <h1>Lights</h1>
                    <h5>Shop our wide of generators from household generators that will keep your family doing what they love, to industrial
                        generators that will keep your business going even through dark times. Big or small we have them all. 
                    </h5>
                </div>
            </div>
            <div class="banner-picture flex-col">
                <div class="shape-container flex-row"><img class="clip-art-generator" src="./images/Light_Category_Image.png" width="250px"></div>
            </div>
        </div>
      </div>

    <section runat="server" id="Description">
      <div class="filter-section flex-row">
        <div><h3>Results: 8 generators</h3></div>
      </div>
    
      <div class="product-grid flex-row">
        <div class="product-container flex-col">
            <div class="product-img flex-col"><img src="./images/small-generator-product.png" alt="Generator Product" width="250px"></div>
            <div class="product-info-container flex-col">
                <p>Household Generators</p>
                <h2>Generator x1000</h2>
                <h3>R10 000</h3>
                <button type="button">Add to cart</button>
                <button class="add-to-cart-btn" type="button">Buy Now</button>
            </div>
        </div>
    </div>
    </section>

</asp:Content>
