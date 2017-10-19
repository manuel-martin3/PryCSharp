using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using entidad;
using datos;

namespace datos
{
    public class AC_alu
    {
        public string inserta(propiedades var_alu) { 
            
            string rpta="";
            SqlConnection sqlcx = new SqlConnection();
            try
            {
                sqlcx.ConnectionString = cx.objcxdb();
                SqlCommand sqlcmd = new SqlCommand();
                sqlcmd.Connection = sqlcx;
                sqlcmd.CommandText = "insert_alumno";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@nomalu",var_alu.nomalu);
                sqlcmd.Parameters.AddWithValue("@apealu", var_alu.apealu);
                sqlcmd.Parameters.AddWithValue("@dnialu", var_alu.dnialu);
                sqlcx.Open();
                sqlcmd.ExecuteNonQuery();
                rpta = "conexion exitosa";
                if (sqlcx.State== ConnectionState.Open)
                {
                    sqlcx.Close();
                }
            }
            catch (Exception ex)
            {
                rpta = ex.Message;
            }
            return rpta;
        }

        public string modifica(propiedades var_alu) {            
            string rpta = "";
            SqlConnection sqlcx = new SqlConnection();
            try
            {
                sqlcx.ConnectionString = cx.objcxdb();
                SqlCommand sqlcmd = new SqlCommand();
                sqlcmd.Connection = sqlcx;
                sqlcmd.CommandText = "modifica_alumno";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@idalu", var_alu.idalu);
                sqlcmd.Parameters.AddWithValue("@nomalu", var_alu.nomalu);
                sqlcmd.Parameters.AddWithValue("@apealu", var_alu.apealu);
                sqlcmd.Parameters.AddWithValue("@dnialu", var_alu.dnialu);
                sqlcx.Open();
                sqlcmd.ExecuteNonQuery();
                rpta = "conexion exitosa";
                if (sqlcx.State == ConnectionState.Open)
                {
                    sqlcx.Close();
                }
            }
            catch (Exception ex)
            {
                rpta = ex.Message;
            }
            
            return rpta;
        }

        public string elimina(propiedades var_alu) { 
            string rpta = "";
            SqlConnection sqlcx = new SqlConnection();
            try
            {
                sqlcx.ConnectionString = cx.objcxdb();
                SqlCommand sqlcmd = new SqlCommand();
                sqlcmd.Connection = sqlcx;
                sqlcmd.CommandText = "elimina_alumno";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@idalu", var_alu.idalu);
                sqlcx.Open();
                sqlcmd.ExecuteNonQuery();
                rpta = "conexion exitosa";
                if (sqlcx.State == ConnectionState.Open)
                {
                    sqlcx.Close();
                }
            }
            catch (Exception ex)
            {
                rpta = ex.Message;
            }

            return rpta;
        
        }

        public DataTable lista_alu() {
            DataTable data_ta = new DataTable("alumno");
            SqlConnection sqlcx = new SqlConnection();
            try
            {
                sqlcx.ConnectionString = cx.objcxdb();
                sqlcx.Open();

                SqlCommand sqlcmd = new SqlCommand();
                sqlcmd.Connection = sqlcx;
                sqlcmd.CommandText = "listar_alumno";
                sqlcmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sqlad = new SqlDataAdapter(sqlcmd);
                sqlad.Fill(data_ta);
                if (sqlcx.State == ConnectionState.Open)
                {
                    sqlcx.Close();
                }
            }
            catch (Exception ex)
            {
                data_ta = null;
            }
            return data_ta;
        }

        public DataTable busca(propiedades var_alu) {
            DataTable data_ta = new DataTable("alumno");
            SqlConnection sqlcx = new SqlConnection();
            try
            {
                sqlcx.ConnectionString = cx.objcxdb();
                sqlcx.Open();

                SqlCommand sqlcmd = new SqlCommand();
                sqlcmd.Connection = sqlcx;
                sqlcmd.CommandText = "listar_alumno";
                sqlcmd.Parameters.AddWithValue("@idalu",var_alu.idalu);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sqlad = new SqlDataAdapter(sqlcmd);
                sqlad.Fill(data_ta);
                if (sqlcx.State == ConnectionState.Open)
                {
                    sqlcx.Close();
                }
            }
            catch (Exception ex)
            {
                data_ta = null;
            }
            return data_ta;
        }
        
    }
}
