using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace mvc_parte2.Controllers
{
    public class ProductosController : Controller
    {
        //
        // GET: /Productos/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Buscar() 
        {
            //Recuperamos los valores nombreProducto
            String nombreProducto = RouteData.Values["nombreProducto"].ToString();
            //Tranformamos el texto plano en HTML
            nombreProducto = Server.HtmlEncode(nombreProducto);
            //Declaramos una variable para mostrar el resultado
            String resultado = String.Empty;
            //Filtramos el producto y posteriormente, por su nombre.
            //Este codigo emula una consulta a una base de datos.
            //que es lo que teoricamente debe de hacer
            switch (nombreProducto)
            {
                case "PC": 
                    { 
                        resultado = "Disponibles 4 Und."; 
                        break; 
                    }

                case "RAM": 
                    { 
                        resultado = "Disponibles 2 Und."; 
                        break; 
                    }

                default: 
                    { 
                        resultado = String.Format("El producto {0} no existe en el Stock",nombreProducto); 
                        break; 
                    }
            }

            //En lugar invobcar la vista Buscar, devolveremos directamente código HTML
            //para ello devolvemos una invocacion al metodo content pasándole directamente 
            //como un parametro el texto HTML (o texto plano) a renderizar
                            
            return Content("<p> " + resultado + "</p>");
        }
	}
}