using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace miCrudMvc3.Models
{
    public class ElUsuario
    {
        public int cod_usu {get; set;}
        public string nom_usu { get; set; }
        public string car_cod { get; set; }
        public string car_des { get; set; }
    }
}