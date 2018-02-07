using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using Entidades;
using Logica_B;

using System.Diagnostics;



namespace simplecrud
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

        }

        private void Form1_Load(object sender, EventArgs e)
        {

            txt_n1.Text = "0";
            txt_n2.Text = "0";
            txt_n3.Text = "0";
            lbl_avg.Text = "0";
            cargarData();

        }

        private void cargarData() {
            DataTable dt = new DataTable();
            var BL = new bAlumno();
            var BE = new tb_alumno();

            dt = BL.GetAll(BE).Tables[0];
            dgvAlumnos.DataSource = dt;
            dgvAlumnos.EnableHeadersVisualStyles = false;
            dgvAlumnos.AutoGenerateColumns = false;
        }

        #region MyRegion
          private void button1_Click(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }      
        #endregion

        private void btnSav_Click(object sender, EventArgs e)
        {
            var BL = new bAlumno();
            var BE = new tb_alumno();
            BE.nomalu = txt_nom.Text;
            BE.apealu = txt_ape.Text;
            BE.dnialu = txt_dni.Text;
            BE.n1 = Convert.ToInt32(txt_n1.Text);
            BE.n2 = Convert.ToInt32(txt_n2.Text);
            BE.n3 = Convert.ToInt32(txt_n3.Text);
            BE.prom = Convert.ToDecimal(lbl_avg.Text);
            
            if (BL.Insert(BE))
            {
                cargarData();
                MessageBox.Show("Proceso fue ejecutado correctamente !!!", "Información", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

        }

        private void txt_n1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                if (txt_n1.Text.Length >= 2)
                {
                    txt_n2.Focus();
                }
            }
        }

        private void txt_n2_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                if (txt_n2.Text.Length >= 2)
                {
                    txt_n3.Focus();
                }
            }
            
        }

        private void txt_n3_KeyDown(object sender, KeyEventArgs e)
        {

            if (txt_n3.Text.Length >= 2)
            {
                if (e.KeyCode == Keys.Enter)
                {
                    int n1 = Convert.ToInt32(txt_n1.Text);
                    int n2 = Convert.ToInt32(txt_n2.Text);
                    int n3 = Convert.ToInt32(txt_n3.Text);
                    decimal prom = Convert.ToDecimal(lbl_avg.Text);


                    if ((n1 > 0 && n2 > 0 && n3 > 0))
                    {
                        prom = (n1 + n2 + n3) / 3;
                        lbl_avg.Text = prom.ToString();
                    }
                    else
                    {
                        MessageBox.Show("Faltan Datos !!!", "Información", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
               
            }

        }

        private void txt_n3_KeyUp(object sender, KeyEventArgs e)
        {

        }

        private void dgvAlumnos_KeyUp(object sender, KeyEventArgs e)
        {
            if (dgvAlumnos.RowCount>0)
            {
                txt_nom.Text = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["nomalu"].Value.ToString();
                txt_ape.Text = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["apealu"].Value.ToString();
                txt_dni.Text = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["dnialu"].Value.ToString();
                txt_n1.Text = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["n1"].Value.ToString();
                txt_n2.Text = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["n2"].Value.ToString();
                txt_n3.Text = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["n3"].Value.ToString();
                lbl_avg.Text = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["prom"].Value.ToString();   
            }
            
        }

        private void btnUpd_Click(object sender, EventArgs e)
        {
            var BL = new bAlumno();
            var BE = new tb_alumno();
            string id_alu = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["Idalu"].Value.ToString();
            BE.nomalu = txt_nom.Text;
            BE.apealu = txt_ape.Text;
            BE.dnialu = txt_dni.Text;
            BE.n1 = Convert.ToInt32(txt_n1.Text);
            BE.n2 = Convert.ToInt32(txt_n2.Text);
            BE.n3 = Convert.ToInt32(txt_n3.Text);
            BE.prom = Convert.ToDecimal(lbl_avg.Text);
            BE.Idalu = Convert.ToInt32(id_alu.ToString());

            if (BL.Update(BE))
            {
                cargarData();
                MessageBox.Show("Proceso fue ejecutado correctamente !!!", "Información", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnDel_Click(object sender, EventArgs e)
        {
            var BL = new bAlumno();
            var BE = new tb_alumno();
            string id_alu = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["Idalu"].Value.ToString();           
            BE.Idalu = Convert.ToInt32(id_alu.ToString());

            if (BL.Delete(BE))
            {
                cargarData();
                MessageBox.Show("Proceso fue ejecutado correctamente !!!", "Información", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnExi_Click(object sender, EventArgs e)
        {
            Close();
        }



    }
}
