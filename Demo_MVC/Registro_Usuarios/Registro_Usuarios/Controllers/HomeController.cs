using Registro_Usuarios.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Registro_Usuarios.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        public ActionResult Index()
        {
            return View();
        }

        [AllowAnonymous]
        public ActionResult Usuarios()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<ActionResult> Usuarios(userLogin datos)
        {
            if (ModelState.IsValid)
            {
                if (datos.login()==true)
                {
                    Session["userName"] = datos.userName;
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
	}
}