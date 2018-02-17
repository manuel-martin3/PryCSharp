using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace miCrudMvc4.Models
{
    public class areaModels
    {
        DataEmpresaDataContext contexto = new DataEmpresaDataContext();

        public List<area> ListArea() { 
        
            List<area> lista = new List<area>();

            var consulta = contexto.PR_SEARCHAREA(0);

            foreach (var area in consulta)
	        {
                area a = new area();
                a.are_cod = area.are_cod;
                a.are_des = area.are_des;
                lista.Add(a);
	        }

            
            return lista;
        }

        public area BuscarArea(int codigo) { 
        
            area a = new area();
            try 
	        {
	            var consulta = contexto.PR_SEARCHAREA(codigo);
                foreach (var area in consulta)
	            {
                    a.are_cod = area.are_cod;
                    a.are_des = area.are_des;
		 
	            }
		
	        }
	        catch (Exception ex)
	        {
		
		        throw ex;
	        }

            return a;
        }

        public string InsertArea(area a) {

            string resulstado = "";

            try
            {
                contexto.PR_INSERTAREA(a.are_des);
                resulstado = "Ok";
            }
            catch (Exception ex)
            {

                resulstado = ex.Message;
            }

            return resulstado;
        }

        public string UpdateArea(area a) { 
        
            string resultado = "";
            try
            {
                contexto.PR_UPDATEAREA(a.are_cod, a.are_des);
                resultado = "Ok";
            }
            catch (Exception ex)
            {

                resultado = ex.Message;
            }

            return resultado;
        }

        public string DeleteArea(int codigo) {

            string resultado = "";
            try
            {
                contexto.PR_DELETEAREA(codigo);
                resultado = "Ok";
            }
            catch (Exception ex)
            {

                resultado = ex.Message;
            }

            return resultado;
        }

    }
}