using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using miCrudMvc2.Models;


namespace miCrudMvc2.Controllers
{
    public class PersonaController : Controller
    {
        //
        // GET: /Persona/

        public ActionResult Index()
        {
            List<Persona> lista = new List<Persona>();

            Persona person1 = new Persona();
            person1.codigo = 1;
            person1.nombre = "Luis";
            person1.apepat = "Gonzalesz";
            person1.apemat = "Perez";
            lista.Add(person1);

            Persona person2 = new Persona();
            person2.codigo = 2;
            person2.nombre = "Juan";
            person2.apepat = "Romero";
            person2.apemat = "Galves";
            lista.Add(person2);

            Persona person3 = new Persona();
            person3.codigo = 3;
            person3.nombre = "Rosa";
            person3.apepat = "Benites";
            person3.apemat = "vilar";
            lista.Add(person3);

            return View(lista);
        }

    }
}
