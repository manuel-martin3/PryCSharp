using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using mvc_parte3.Models;

namespace mvc_parte3.Controllers
{
    public class ProductosController : Controller
    {
        List<Datos> producto = new List<Datos>();

        public ProductosController() 
        {
            Datos obj = new Datos();
            obj.descripcion = "Manzana";
            obj.cantidad = 10;
            obj.precio = 10.5m;
            producto.Add(obj);

            Datos obj1 = new Datos();
            obj1.descripcion = "Bananas";
            obj1.cantidad = 3;
            obj1.precio = 3.3m;
            producto.Add(obj1);
        }

        //
        // GET: /Productos/
        public ViewResult mostrarProducto(int id)
        {
            Datos obj = new Datos();
            int a = producto.Count();
            String msg = "";
            if (id < a)
            {
                obj = producto[id];
            }
            else
            {
                obj.descripcion = " ¡¡¡¡ Producto No Identificado !!!!!!! ..:::: Vuelva a intentarlo.::::";

            }



            return View(obj);
        }

        /*
         * subclase de ActionResult ya que es una clase abstracta
         * ViewResult - renderiza, especifica a la secuencia de respuesta
         * PartialViewResult - renderiza una vista parcial especifica a la secuencia de respuesta
         * EmptyResult - devuelve una respuesta vacía
         * RedirectResult - Realiza un redireccion HTTP a una URL que está determinadapor el motor de
         *      enrutamiento, en base de datos a la ruta dada
         * JsonResult - serializa un objeto ViewData dado en formato JSON 
         * JavaScriptResult - Devuelve un fragmento de código JavaScript que se puede ejecutar en el cliente
         * ContentResult - escribe el contenidode la secuencia de respuesta sin necesidad de un punto de vista
         * FileContentResult - devuelve un archivo al cliente
         * FileStreamResult - devuelve un archivo en el cliente que es proporcionada por una corriente
         * FilePathResult - devuelve un archivo al cliente
         * 
         */

	}
}