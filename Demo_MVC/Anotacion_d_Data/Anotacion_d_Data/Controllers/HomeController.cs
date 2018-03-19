using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Anotacion_d_Data.Models;

namespace Anotacion_d_Data.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        public ActionResult Index()
        {
            return View();
        }

        //[HttpPost]
        public ActionResult DatosPersonales(datosEmail obj) 
        {

            if (ModelState.IsValid)
            {
                String email = obj.email;
                String pass = obj.password;
                if (email == "quitslim@gmail.com" && pass == "123456")
                {
                    return View();
                }
                else
                {
                    return View("Index");
                }                
            }
            else
            {
                return View("Index");
            }            
        }

        public ActionResult mostrarDatos(datosPersonales obj) 
        {
            
            if (ModelState.IsValid)
            {
                return View(obj);
            }
            else
            {
                return View("datosPersonales");
            }
            
        }
	}
}