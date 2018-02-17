using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using miCrudMvc4.Models;

namespace miCrudMvc4.Controllers
{
    public class AreaController : Controller
    {
        //
        // GET: /Area/

        public areaModels model = new areaModels();


        public ActionResult Index()
        {
            return View(model.ListArea());
        }

        public ActionResult Datails(int id) 
        {
            var area = model.BuscarArea(id);

            return View();        
        }

        public ActionResult Create() 
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(area a) 
        {
            try
            {
                if (model.InsertArea(a).Equals("Ok"))
	            {
		            return RedirectToAction("Index");

	            }else
	            {
                    return RedirectToAction("Create");

	            }
            }
            catch
            {
                
                return View();
            }
                        
        }


        public ActionResult Edit(int id) 
        { 
        
            var area = model.BuscarArea(id);
            return View(area);
        }

        [HttpPost]
        public ActionResult Edit(int id, area a) 
        {
            try
            {
                area are = new area();
                are.are_cod = id;
                are.are_des = a.are_des;
                if (model.UpdateArea(are).Equals("Ok"))
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    return RedirectToAction("Edit");
                }
            }
            catch
            {
                return View();
            }

        }

        public ActionResult Delete(int id)
        {

            var area = model.BuscarArea(id);
            return View(area);
        }

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection) 
        {

            try
            {
                if (model.DeleteArea(id).Equals("Ok"))
                {
                    return RedirectToAction("Index");
                }
                else
                {
                    return RedirectToAction("Delete");
                }
            }
            catch 
            {
                return View();
            }
        }


    }
}
