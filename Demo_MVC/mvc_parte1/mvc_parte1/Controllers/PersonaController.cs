using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using mvc_parte1.Models;

namespace mvc_parte1.Controllers
{
    public class PersonaController : Controller
    {
        //
        // GET: /Persona/
        public ActionResult Persona()
        {
            Persona obj = new Persona();
            obj.nombre = Request.Form["nombre"].ToString();
            obj.apellido = Request.Form["apellido"].ToString();
            obj.edad = Convert.ToInt32(Request.Form["edad"]);
            return View(obj);
        }

        public ActionResult Index() 
        {
            return View();
        }
	}
}