using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using logica;
using entidad;

namespace formulario
{
    public partial class SimpleCRUD : Form
    {
        public SimpleCRUD()
        {
            InitializeComponent();
        }

        private void SimpleCRUD_Load(object sender, EventArgs e)
        {
            this.refresca();
            this.cargarcombo();
        }

        private void btn_insert_Click(object sender, EventArgs e)
        {
            string rpta = "";
            try
            {
                lgk_alu obj = new lgk_alu();
                propiedades enti = new propiedades();
                enti.nomalu = txt_nom.Text;
                enti.apealu = txt_ape.Text;
                enti.dnialu = txt_dni.Text;
                obj.regi_alu(enti);
                this.Refresh();
                cargarcombo();
                rpta = "Buen trabajo...";                
            }
            catch (Exception ex)
            {
                rpta = ex.Message;                
            }

            MessageBox.Show(rpta);
        }

        private void btn_update_Click(object sender, EventArgs e)
        {
            string rpta = "";
            try
            {
                lgk_alu obj = new lgk_alu();
                propiedades enti = new propiedades();
                enti.idalu = Int16.Parse(this.txt_id.Text);                
                enti.nomalu = txt_nom.Text;
                enti.apealu = txt_ape.Text;
                enti.dnialu = txt_dni.Text;
                obj.regi_alu(enti);
                this.Refresh();
                cargarcombo();
                rpta = "Buen trabajo...";
            }
            catch (Exception ex)
            {
                rpta = ex.Message;
            }

            MessageBox.Show(rpta);
        }

        private void btn_delete_Click(object sender, EventArgs e)
        {
            string rpta = "";
            try
            {
                lgk_alu obj = new lgk_alu();
                propiedades enti = new propiedades();
                enti.idalu = Int16.Parse(this.txt_id.Text);                
                obj.eli_alu(enti);
                this.Refresh();
                cargarcombo();
                rpta = "Buen trabajo...";                
            }
            catch (Exception ex)
            {
                rpta = ex.Message;                
            }

            MessageBox.Show(rpta);
        }

        private void dgv_detalle_DoubleClick(object sender, EventArgs e)
        {
            this.txt_id.Text = Convert.ToString(this.dgv_detalle.CurrentRow.Cells["idalu"].Value);
            this.txt_nom.Text = Convert.ToString(this.dgv_detalle.CurrentRow.Cells["nomalu"].Value);
            this.txt_ape.Text = Convert.ToString(this.dgv_detalle.CurrentRow.Cells["apealu"].Value);
            this.txt_dni.Text = Convert.ToString(this.dgv_detalle.CurrentRow.Cells["dnialu"].Value);
        }

        private void btn_search_Click(object sender, EventArgs e)
        {
            this.buscar();
        }

        #region metodos
        public void buscar()
        {
            int a = Int16.Parse(this.txt_id.Text);
            lgk_alu obj = new lgk_alu();
            propiedades enti = new propiedades();
            enti.idalu = a;
            dgv_detalle.DataSource = obj.busca_alu(enti);
        }

        public void refresca() {
            lgk_alu obj = new lgk_alu();
            propiedades enti = new propiedades();
            dgv_detalle.DataSource = obj.lista_alu();
        }

        public void cargarcombo() {
            lgk_alu obj = new lgk_alu();
            propiedades enti = new propiedades();
            cmb_data.DataSource = obj.lista_alu();
            cmb_data.DisplayMember = "nomalu";
            cmb_data.ValueMember = "idalu";
        }

        #endregion
                
    }
}
