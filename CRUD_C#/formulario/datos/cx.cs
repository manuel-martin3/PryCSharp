using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace datos
{    
    public class cx
    {

        public static string source = ".";
        public static string catalogo = "matricula";
        public static string user = "sa";
        public static string password = "123456";

        public static string objcxdb(){
            string cn = "data source=" + source.ToString() +
                        ";initial catalog=" + catalogo.ToString() +
                        ";user id=" + user.ToString() +
                        ":password=" + password.ToString();
            return cn;
        }
        
    }
}
