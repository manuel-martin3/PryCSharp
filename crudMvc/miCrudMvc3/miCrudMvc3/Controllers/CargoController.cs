using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using miCrudMvc3.Models;

namespace miCrudMvc3.Controllers
{
    public class CargoController : Controller
    {
        //
        // GET: /Cargo/

        sampleDBEntities entidad = new sampleDBEntities();

        public ActionResult Index()
        {
            var listaCargos = entidad.cargo;

            return View(listaCargos.ToList());
        }

        public ActionResult ListadoMaestroCargos() 
        {
            var listaCargos = entidad.cargo;

            return View(listaCargos.ToList());
        }

        public ActionResult usuarioxCargo(string cargo) 
        { 
            var modelo = from p in entidad.usuario where p.cargo.car_des == cargo select p;
            return View(modelo.ToList());
        }

        public ActionResult LisatadoUsuarioconDescripcionCargo() 
        {
            var modelo = from p in entidad.usuario
                         join c in entidad.cargo
                         on p.car_cod equals c.car_cod
                         select new ElUsuario
                         {
                             cod_usu = p.cod_usu,
                             nom_usu = p.nom_usu,
                             car_des = c.car_des
                         };

            return View(modelo.ToList());


        }


    }
}
