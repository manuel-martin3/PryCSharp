using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aceso_DB
{
    public class conex
    {
        public String AdmConexion()
        {
            String password = "123456";
            String servername = "PC\\SQLEXPRESS";
            String database = "matricula";
            String user = "sa";

            String sconstring = "Data Source=" + servername + ";Initial Catalog=" + database + ";User ID=" + user + ";Password=" + password;

            return (sconstring);
        }


        
    }
}
