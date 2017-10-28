using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace DatatableCrud.Models
{
    [MetadataType(typeof(EmployMetadata))]
    public partial class Employee
    {

    }
    
    public class EmployMetadata
    {
        [Required(AllowEmptyStrings = false, ErrorMessage = "Ingresar Nombre..." )]
        public string FirstName { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "Ingresar Apellidos...")]
        public string LastName { get; set; }
    }
}