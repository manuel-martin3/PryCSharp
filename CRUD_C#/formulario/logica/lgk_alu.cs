using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using entidad;
using datos;
using System.Data;

namespace logica
{
    public class lgk_alu
    {
        public string regi_alu(propiedades var_alu) {

            string rpta = "";
            try
            {
                AC_alu objac_alum = new AC_alu();
                propiedades objac_alu = new propiedades();
                objac_alu.nomalu = var_alu.nomalu;
                objac_alu.apealu = var_alu.apealu;
                objac_alu.dnialu = var_alu.dnialu;
                return objac_alum.inserta(objac_alu);
            }
            catch (Exception ex)
            {
                rpta = ex.Message;
            }

            return rpta;
        }

        public string modi_alu(propiedades var_alu) {
            string rpta = "";
            try
            {
                AC_alu objac_alum = new AC_alu();
                propiedades objac_alu = new propiedades();
                objac_alu.idalu = var_alu.idalu;
                objac_alu.nomalu = var_alu.nomalu;
                objac_alu.apealu = var_alu.apealu;
                objac_alu.dnialu = var_alu.dnialu;
                return objac_alum.modifica(objac_alu);
            }
            catch (Exception ex)
            {
                rpta = ex.Message;
            }

            return rpta;
        }

        public string eli_alu(propiedades var_alu) {
            string rpta = "";
            try
            {
                AC_alu objac_alum = new AC_alu();
                propiedades objac_alu = new propiedades();
                objac_alu.idalu = var_alu.idalu;              
                return objac_alum.elimina(objac_alu);
            }
            catch (Exception ex)
            {
                rpta = ex.Message;
            }
            return rpta;
        }

        public DataTable lista_alu() {
            string rpta = "";
            DataTable ta_al = new DataTable();
            try
            {
                AC_alu objac_alum = new AC_alu();                
                ta_al = objac_alum.lista_alu();                
            }
            catch (Exception ex)
            {
                rpta = ex.Message;
                ta_al = null;
            }
            return ta_al;
        }

        public DataTable busca_alu(propiedades var_alu)
        {
            string rpta = "";
            DataTable ta_al = new DataTable();
            try
            {
                AC_alu objac_alum = new AC_alu();
                propiedades objac_alu = new propiedades();
                objac_alu.idalu = var_alu.idalu;
                ta_al = objac_alum.busca(objac_alu);                   
            }
            catch (Exception ex)
            {
                rpta = ex.Message;
                ta_al = null;
            }
            return ta_al;        
        }
    }
}
