using MVCDemo1.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCDemo1.Controllers
{
    public class HomeController : Controller
    {
        NORTHWNDEntities1 db = new NORTHWNDEntities1();

        public ActionResult Index()
        {
            List<Categories> catList = db.Categories.ToList();
            ViewBag.ListOfCategoria = new SelectList(catList, "CategoryID", "CategoryName"); 
            return View();
        }


        public JsonResult GetStatusList() 
        {
            List<ProductViewModel> ProductList = db.Products.Where(x => x.Discontinued==false).Select(x => new ProductViewModel
            {
                ProductID= x.ProductID,
                ProductName= x.ProductName,
                QuantityPerUnit= x.QuantityPerUnit,
                CategoryName = x.Categories.CategoryName
            }).ToList();

            return Json(ProductList,JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetProductById(int ProductID) 
        { 
        
            Products model = db.Products.Where(x=>x.ProductID==ProductID).SingleOrDefault();
            string value=string.Empty;
            value = JsonConvert.SerializeObject(model,Formatting.Indented,new JsonSerializerSettings{
                ReferenceLoopHandling=ReferenceLoopHandling.Ignore
            });

            return Json(value,JsonRequestBehavior.AllowGet); 
        }


        public JsonResult SaveDataInDatabase(ProductViewModel model)
        {
            var result = false;
            try
            {
                if (model.ProductID > 0)
                {
                    Products product = db.Products.SingleOrDefault(x => x.Discontinued == false && x.ProductID == model.ProductID);
                    product.ProductName = model.ProductName;
                    product.QuantityPerUnit = model.QuantityPerUnit;
                    product.CategoryID = model.CategoryID;
                    db.SaveChanges();
                    result = true;
                }
                else
                {
                    Products product = new Products();
                    product.ProductName = model.ProductName;
                    product.QuantityPerUnit = model.QuantityPerUnit;
                    product.CategoryID = model.CategoryID;
                    product.Discontinued = false;
                    db.Products.Add(product);
                    db.SaveChanges();
                    result = true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return Json(result, JsonRequestBehavior.AllowGet);
        }


        public JsonResult DeleteRecord(int ProductID)
        {
            bool result = false;
            Products product = db.Products.SingleOrDefault(x => x.Discontinued == false && x.ProductID == ProductID);
            if (product != null)
            {
                product.Discontinued = true;
                db.SaveChanges();
                result = true;
            }
            
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}