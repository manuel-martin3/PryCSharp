using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Entidades;
using Aceso_DB;

namespace Logica_B
{
    public class bAlumno
    {
        xAlumno tablaDA = new xAlumno();

        public bool Insert(tb_alumno BE)
        {
            return tablaDA.Insert(BE);
        }
        public bool Update(tb_alumno BE)
        {
            return tablaDA.Update(BE);
        }
        public bool Delete(tb_alumno BE)
        {
            return tablaDA.Delete(BE);
        }
        public DataSet GetAll(tb_alumno BE)
        {
            return tablaDA.GetAll(BE);
        }

    }
}
