using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Anotacion_d_Data.Models
{
    public class datosPersonales
    {
        [Required(ErrorMessage = "El siguiente dato es requerido")]
        public String nombre { get; set; }

        [Required(ErrorMessage = "El siguiente dato es requerido")]
        public String apellido { get; set; }

        [Required(ErrorMessage = "El siguiente dato es requerido")]
        public String edad { get; set; }

        [Phone]
        [Display(Name = "Número Telefónico")]
        [Required(ErrorMessage = "El siguiente dato es requerido")]
        public String number { get; set; }

    }

    public class datosEmail 
    {
        [EmailAddress]
        [Required(ErrorMessage = "El Email es requerido")]
        [Display(Name = "Correo Electronico")]
        public String email { get; set; }

        [StringLength(100,ErrorMessage = "El numero de caracteres de {0} debe ser al menos {2}.",MinimumLength = 6)]
        [Required(ErrorMessage = "El Password es requerido")]
        [Display(Name = "Password")]
        public String password { get; set; }

        [Display(Name = "Confirmar Contraseña")]
        [Compare("password", ErrorMessage = "La Contraseña y la conctraseña de confirmacion no coinciden ")]
        public String confirmaPass { get; set; }

        //[Range(10, 20)]
    }
}