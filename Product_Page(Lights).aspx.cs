using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Watt_Front_end.ServiceReference1;

namespace Watt_Front_end
{
    public partial class Product_Page_Lights_ : System.Web.UI.Page
    {
        Service1Client sc = new Service1Client();
        string Display = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadProductCatalog();
        }

        private void LoadProductCatalog()
        {
            int Amount = sc.CounttProducts(1);
            
                     List <Product> Products;
            
            Products = new List<Product>(sc.GetProductsByCategory(1));

            Display += "<div class='filter-section flex-row'>";
            Display += "<div><h3>Results: " + Amount + " Lights</h3></div>";
            Display += "</div>";

            foreach (Product p in Products) {

               
    
                Display += "<div class='product-grid flex-row'>";
                Display += "<div class='product-container flex-col'>";
                Display += "<div class='product-img flex-col'><img src = '."+p.Image+"'alt='Generator Product' width='250px'></div>";
                Display += "<div class='product-info-container flex-col'>";
                Display += "<p>Household Generators</p>";
                Display += "<h2>"+p.Product_Name+"</h2>";
                Display += "<h3>R"+p.Product_Price+"</h3>";
                Display += "<button type = 'button' > Add to cart</button>";
                Display += "<button class='add-to-cart-btn' type='button'>Buy Now</button>";
                Display += "</div>";
                Display += "</div>";
            }
           
            Description.InnerHtml = Display;
        }

    }
}