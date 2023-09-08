using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Watt_Backend
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        void CheckForUser();

        [OperationContract]
        List<Product> GetAllProducts();

        [OperationContract]
        List<Product> GetProductsByCategory(int categoryId);

        [OperationContract]
        int CounttProducts(int Category);

        [OperationContract]
        Product GetProduct(int Pro_Id);

        [OperationContract]
        bool Register(String Name,String Gender ,DateTime DOB ,String Username, String Password);

        [OperationContract]
        String Login(String Username, String Password);

        [OperationContract]
        bool isManager(String Username);


    }
}
