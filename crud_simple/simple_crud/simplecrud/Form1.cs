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
            nuevo();
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
                string tn1 = txt_n1.Text.PadLeft(2, '0');
                txt_n1.Text = tn1;

                if (txt_n1.Text.Length >= 2)
                {                    
                    if (!validarData(Convert.ToInt32(txt_n1.Text)))
                    {
                        txt_n1.Text = "0";
                        MessageBox.Show("Número está fuera del rango (0 a 20), verificar", "Atención", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        if (!validaAprobado(Convert.ToInt32(txt_n1.Text)))
                        {
                            lbl_n1.ForeColor = Color.Red;
                        }
                        else
                        {
                            lbl_n1.ForeColor = Color.Blue;
                        }
                        txt_n2.Focus();
                    }

                }
            }

        }

        private void txt_n2_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                string tn2 = txt_n2.Text.PadLeft(2, '0');
                txt_n2.Text = tn2;

                if (!validarData(Convert.ToInt32(txt_n2.Text)))
                {
                    txt_n2.Text = "0";
                    MessageBox.Show("Número está fuera del rango (0 a 20), verificar", "Atención", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    if (!validaAprobado(Convert.ToInt32(txt_n2.Text)))
                    {
                        lbl_n2.ForeColor = Color.Red;
                    }
                    else
                    {
                        lbl_n2.ForeColor = Color.Blue;
                    }
                    txt_n3.Focus();
                }
            }
            
        }

        private void txt_n3_KeyDown(object sender, KeyEventArgs e)
        {
                        
                if (e.KeyCode == Keys.Enter)
                {
                    string tn3 = txt_n3.Text.PadLeft(2, '0');
                    txt_n3.Text = tn3;

                    if (!validarData(Convert.ToInt32(txt_n3.Text)))
                    {
                        txt_n3.Text = "0";
                        MessageBox.Show("Número está fuera del rango (0 a 20), verificar", "Atención", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        if (!validaAprobado(Convert.ToInt32(txt_n3.Text)))
                        {
                            lbl_n3.ForeColor = Color.Red;
                        }
                        else
                        {
                            lbl_n3.ForeColor = Color.Blue;
                        }

                        int n1 = Convert.ToInt32(txt_n1.Text);
                        int n2 = Convert.ToInt32(txt_n2.Text);
                        int n3 = Convert.ToInt32(txt_n3.Text);
                        decimal prom = 0;// Convert.ToDecimal(lbl_avg.Text);


                        if ((n1 > 0 && n2 > 0 && n3 > 0))
                        {
                            prom = (n1 + n2 + n3) / 3;
                            if (!validaAprobado(Convert.ToInt32(prom)))
                            {
                                lbl_avg.BackColor = Color.Red;
                            }
                            else
                            {
                                lbl_avg.BackColor = Color.GreenYellow;
                            }
                            lbl_avg.Text = prom.ToString().PadLeft(2,'0');
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
                txt_n1.Text = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["n1"].Value.ToString().PadLeft(2,'0');
                txt_n2.Text = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["n2"].Value.ToString().PadLeft(2, '0');
                txt_n3.Text = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["n3"].Value.ToString().PadLeft(2, '0');
                lbl_avg.Text = dgvAlumnos.Rows[dgvAlumnos.CurrentRow.Index].Cells["prom"].Value.ToString().PadLeft(2, '0');

                if (txt_nom.Text != "")
                {

                    lbl_n1.ForeColor = validaAprobado(Convert.ToInt32(txt_n1.Text)) == false ? Color.Red : Color.Blue;
                    lbl_n2.ForeColor = validaAprobado(Convert.ToInt32(txt_n2.Text)) == false ? Color.Red : Color.Blue;
                    lbl_n3.ForeColor = validaAprobado(Convert.ToInt32(txt_n3.Text)) == false ? Color.Red : Color.Blue;
                    lbl_avg.BackColor = validaAprobado(Convert.ToInt32(lbl_avg.Text)) == false ? Color.Red : Color.GreenYellow;
                }
                else
                {
                    nuevo();
                }

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

        private Boolean validarData (int val) 
        {
            bool valor = true;
            if (val<0 || val>20)
            {
                 valor = false;                
            }

            return valor;
        }


        private Boolean validaAprobado(int val)
        { 
            bool valor = true;

            if (val <= 10)
	        {
                valor = false;
	        }
            
            return valor;
        }

        private void nuevo()
        {
            txt_nom.Text = "";
            txt_ape.Text = "";
            txt_dni.Text = "";

            txt_n1.Text = "00";
            txt_n2.Text = "00";
            txt_n3.Text = "00";

            lbl_avg.Text = "00";
            lbl_n1.ForeColor = Color.Black;
            lbl_n2.ForeColor = Color.Black;
            lbl_n3.ForeColor = Color.Black;
            lbl_avg.BackColor = SystemColors.Control;
        }
        private void btnNew_Click(object sender, EventArgs e)
        {

            nuevo();
        }

        private void lbl_n3_Click(object sender, EventArgs e)
        {

        }

        private void txt_n1_TextChanged(object sender, EventArgs e)
        {
            lbl_n1.Text = txt_n1.Text;
        }

        private void txt_n2_TextChanged(object sender, EventArgs e)
        {
            lbl_n2.Text = txt_n2.Text;
        }

        private void txt_n3_TextChanged(object sender, EventArgs e)
        {
            lbl_n3.Text = txt_n3.Text;
        }



    }
}
