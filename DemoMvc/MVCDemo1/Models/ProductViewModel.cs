using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCDemo1.Models
{
    public class ProductViewModel
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public Nullable<int> SupplierID { get; set; }
        public Nullable<int> CategoryID { get; set; }
        public string QuantityPerUnit { get; set; }
        public Nullable<decimal> UnitPrice { get; set; }
        public Nullable<short> UnitsInStock { get; set; }
        public Nullable<short> UnitsOnOrder { get; set; }
        public Nullable<short> ReorderLevel { get; set; }
        public bool Discontinued { get; set; }

        public string CategoryName { get; set; }

        public string param { get; set; }
        public int param1 { get; set; }
        public double param2 { get; set; }
        public bool param3 { get; set; }
     
    }
}