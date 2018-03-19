using System.ComponentModel.DataAnnotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Registro_Usuarios.Models
{
    public class userLogin
    {
        [EmailAddress]
        [Required(ErrorMessage = "<font color='red'>El Email es Requerido</font>")]
        [Display(Name = "Correo Electronico")]
        public String email { get; set; }

        [StringLength(100, ErrorMessage = "El número de caracteres de {0} debe ser al menos {2}", MinimumLength = 3)]
        [Required(ErrorMessage = "<font color='red'>El Password es Requerido</font>")]
        [Display(Name = "contraseña")]

        public String password { get; set; }

        public String userName { get; set; }

        UserDataDataContext user = new UserDataDataContext();

        public bool login() 
        {
            var query = from u in user.users
                        where u.email == email && u.password == password
                        select u;
            if (query.Count()>0)
            {
                var query2 = from u in user.users
                             where u.email == email
                             select u;
                var datos = query2.ToList();
                foreach (var Data in datos)
                {
                    userName = Data.username;                    
                }
                
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}   