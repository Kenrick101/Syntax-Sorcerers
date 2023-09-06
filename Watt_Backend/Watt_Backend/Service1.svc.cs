using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Watt_Backend
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

        public void CheckForUser()
        {
            
            

        }

        public int CounttProducts(int Category)
        {
            int productCount = db.Products.Count(u => u.Product_Category.Equals(Category));
            return productCount;
        }

        public List<Product> GetAllProducts()
        {
            // Retrieve all products from the database
            List<Product> products = db.Products.ToList();
            return products;
        }

        public Product GetProduct(int Pro_Id)
        {
            var ProductInfo = (from u in db.Products
                               where u.Product_Id.Equals(Pro_Id)
                               select u).FirstOrDefault();

            if (ProductInfo == null)
            {

                return null;
            }
            else {

                var newPro = new Product
                {
                    Product_Id = ProductInfo.Product_Id,
                    Product_Category = ProductInfo.Product_Category,
                    Product_Name = ProductInfo.Product_Name,
                    Product_Price = ProductInfo.Product_Price,
                    Product_Description = ProductInfo.Product_Description,
                    Power_Output = ProductInfo.Power_Output,
                    Image = ProductInfo.Image,
                    Stock = ProductInfo.Stock

                };
                return newPro;
            }
        }

        public List<Product> GetProductsByCategory(int categoryId)
        {


            // List<Product> productList = (from u in db.Products
            // where u.Product_Category.Equals(categoryId)
            //select u).ToList();


            List<Product> sProducts = new List<Product>();

            var ProdusctInfo = (from u in db.Products
                                where u.Product_Category.Equals(categoryId) select u).DefaultIfEmpty();

            

            foreach (Product p in ProdusctInfo) {

                var FilteredProduct = new Product {

                    Product_Id = p.Product_Id,
                    Product_Category = p.Product_Category,
                    Product_Name = p.Product_Name,
                    Product_Price = p.Product_Price,
                    Product_Description = p.Product_Description,
                    Power_Output = p.Power_Output,
                    Image = p.Image,
                    Stock = p.Stock


                };

                sProducts.Add(FilteredProduct);
            }

            return sProducts;
        }



    }
}
