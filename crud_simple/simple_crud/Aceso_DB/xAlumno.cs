using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Entidades;

namespace Aceso_DB
{
    public class xAlumno
    {
        conex conBD = new conex();
        public bool Insert(tb_alumno BE)
        {
            using (SqlConnection cnx = new SqlConnection(conBD.AdmConexion()))
            {
                using (SqlCommand cmd = new SqlCommand("ins_registro", cnx))
                {

                    cmd.CommandType = CommandType.StoredProcedure;                    
                    cmd.Parameters.Add("@nomalu", SqlDbType.VarChar, 25).Value = BE.nomalu;
                    cmd.Parameters.Add("@apealu", SqlDbType.VarChar, 25).Value = BE.apealu;
                    cmd.Parameters.Add("@dnialu", SqlDbType.VarChar, 25).Value = BE.dnialu;

                    cmd.Parameters.Add("@n1", SqlDbType.Int).Value = BE.n1;
                    cmd.Parameters.Add("@n2", SqlDbType.Int).Value = BE.n2;
                    cmd.Parameters.Add("@n3", SqlDbType.Int).Value = BE.n3;
                    try
                    {
                        cnx.Open();
                        if (cmd.ExecuteNonQuery() > 0)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.Message);
                    }
                }
            }
        }

        public bool Update(tb_alumno BE)
        {
            using (SqlConnection cnx = new SqlConnection(conBD.AdmConexion()))
            {
                using (SqlCommand cmd = new SqlCommand("upd_registro", cnx))
                {

                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Idalu", SqlDbType.Int).Value = BE.Idalu;
                        cmd.Parameters.Add("@nomalu", SqlDbType.VarChar, 25).Value = BE.nomalu;
                        cmd.Parameters.Add("@apealu", SqlDbType.VarChar, 25).Value = BE.apealu;
                        cmd.Parameters.Add("@dnialu", SqlDbType.VarChar, 25).Value = BE.dnialu;

                        cmd.Parameters.Add("@n1", SqlDbType.Int).Value = BE.n1;
                        cmd.Parameters.Add("@n2", SqlDbType.Int).Value = BE.n2;
                        cmd.Parameters.Add("@n3", SqlDbType.Int).Value = BE.n3;
                    }
                    try
                    {
                        cnx.Open();
                        if (cmd.ExecuteNonQuery() > 0)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.Message);
                    }
                }
            }
        }

        public bool Delete(tb_alumno BE)
        {
            using (SqlConnection cnx = new SqlConnection(conBD.AdmConexion()))
            {
                using (SqlCommand cmd = new SqlCommand("del_registro", cnx))
                {
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Idalu", SqlDbType.Int).Value = BE.Idalu;                        
                    }
                    try
                    {
                        cnx.Open();
                        if (cmd.ExecuteNonQuery() > 0)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.Message);
                    }
                }
            }
        }

        public DataSet GetAll(tb_alumno BE)
        {
            using (SqlConnection cnx = new SqlConnection(conBD.AdmConexion()))
            {
                using (SqlCommand cmd = new SqlCommand("sel_registro", cnx))
                {
                    DataSet ds = new DataSet();
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.Add("@Idalu", SqlDbType.Int).Value = BE.Idalu;                        
                    }
                    try
                    {
                        cnx.Open();
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(ds);
                        }
                        return ds;
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.Message);
                    }
                }
            }
        }
    }
}
