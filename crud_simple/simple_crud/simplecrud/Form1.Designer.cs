namespace simplecrud
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgvAlumnos = new System.Windows.Forms.DataGridView();
            this.btnSav = new System.Windows.Forms.Button();
            this.btnDel = new System.Windows.Forms.Button();
            this.btnUpd = new System.Windows.Forms.Button();
            this.btnExi = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_nom = new System.Windows.Forms.TextBox();
            this.txt_ape = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txt_dni = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_n1 = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txt_n2 = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txt_n3 = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.lbl_avg = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.idalu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nomalu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.apealu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dnialu = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.n1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.n2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.n3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.prom = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAlumnos)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvAlumnos
            // 
            this.dgvAlumnos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAlumnos.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idalu,
            this.nomalu,
            this.apealu,
            this.dnialu,
            this.n1,
            this.n2,
            this.n3,
            this.prom});
            this.dgvAlumnos.Location = new System.Drawing.Point(38, 181);
            this.dgvAlumnos.Name = "dgvAlumnos";
            this.dgvAlumnos.Size = new System.Drawing.Size(492, 150);
            this.dgvAlumnos.TabIndex = 0;
            this.dgvAlumnos.KeyUp += new System.Windows.Forms.KeyEventHandler(this.dgvAlumnos_KeyUp);
            // 
            // btnSav
            // 
            this.btnSav.Location = new System.Drawing.Point(552, 181);
            this.btnSav.Name = "btnSav";
            this.btnSav.Size = new System.Drawing.Size(75, 23);
            this.btnSav.TabIndex = 1;
            this.btnSav.Text = "Guardar";
            this.btnSav.UseVisualStyleBackColor = true;
            this.btnSav.Click += new System.EventHandler(this.btnSav_Click);
            // 
            // btnDel
            // 
            this.btnDel.Location = new System.Drawing.Point(552, 257);
            this.btnDel.Name = "btnDel";
            this.btnDel.Size = new System.Drawing.Size(75, 23);
            this.btnDel.TabIndex = 2;
            this.btnDel.Text = "Eliminar";
            this.btnDel.UseVisualStyleBackColor = true;
            this.btnDel.Click += new System.EventHandler(this.btnDel_Click);
            // 
            // btnUpd
            // 
            this.btnUpd.Location = new System.Drawing.Point(552, 219);
            this.btnUpd.Name = "btnUpd";
            this.btnUpd.Size = new System.Drawing.Size(75, 23);
            this.btnUpd.TabIndex = 3;
            this.btnUpd.Text = "Modificar";
            this.btnUpd.UseVisualStyleBackColor = true;
            this.btnUpd.Click += new System.EventHandler(this.btnUpd_Click);
            // 
            // btnExi
            // 
            this.btnExi.Location = new System.Drawing.Point(552, 295);
            this.btnExi.Name = "btnExi";
            this.btnExi.Size = new System.Drawing.Size(75, 23);
            this.btnExi.TabIndex = 4;
            this.btnExi.Text = "Salir";
            this.btnExi.UseVisualStyleBackColor = true;
            this.btnExi.Click += new System.EventHandler(this.btnExi_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(35, 99);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Nombre";
            // 
            // txt_nom
            // 
            this.txt_nom.Location = new System.Drawing.Point(112, 96);
            this.txt_nom.Name = "txt_nom";
            this.txt_nom.Size = new System.Drawing.Size(100, 20);
            this.txt_nom.TabIndex = 6;
            // 
            // txt_ape
            // 
            this.txt_ape.Location = new System.Drawing.Point(112, 120);
            this.txt_ape.Name = "txt_ape";
            this.txt_ape.Size = new System.Drawing.Size(100, 20);
            this.txt_ape.TabIndex = 8;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(35, 123);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(49, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Apellidos";
            // 
            // txt_dni
            // 
            this.txt_dni.Location = new System.Drawing.Point(112, 145);
            this.txt_dni.Name = "txt_dni";
            this.txt_dni.Size = new System.Drawing.Size(100, 20);
            this.txt_dni.TabIndex = 10;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(35, 148);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(26, 13);
            this.label3.TabIndex = 9;
            this.label3.Text = "DNI";
            // 
            // txt_n1
            // 
            this.txt_n1.Location = new System.Drawing.Point(283, 96);
            this.txt_n1.MaxLength = 2;
            this.txt_n1.Name = "txt_n1";
            this.txt_n1.Size = new System.Drawing.Size(40, 20);
            this.txt_n1.TabIndex = 12;
            this.txt_n1.Text = "12";
            this.txt_n1.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txt_n1_KeyDown);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(256, 99);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(21, 13);
            this.label4.TabIndex = 11;
            this.label4.Text = "N1";
            // 
            // txt_n2
            // 
            this.txt_n2.Location = new System.Drawing.Point(283, 120);
            this.txt_n2.MaxLength = 2;
            this.txt_n2.Name = "txt_n2";
            this.txt_n2.Size = new System.Drawing.Size(40, 20);
            this.txt_n2.TabIndex = 14;
            this.txt_n2.Text = "13";
            this.txt_n2.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txt_n2_KeyDown);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(256, 123);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(21, 13);
            this.label5.TabIndex = 13;
            this.label5.Text = "N2";
            // 
            // txt_n3
            // 
            this.txt_n3.Location = new System.Drawing.Point(283, 145);
            this.txt_n3.MaxLength = 2;
            this.txt_n3.Name = "txt_n3";
            this.txt_n3.Size = new System.Drawing.Size(40, 20);
            this.txt_n3.TabIndex = 16;
            this.txt_n3.Text = "15";
            this.txt_n3.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txt_n3_KeyDown);
            this.txt_n3.KeyUp += new System.Windows.Forms.KeyEventHandler(this.txt_n3_KeyUp);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(256, 148);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(21, 13);
            this.label6.TabIndex = 15;
            this.label6.Text = "N3";
            this.label6.Click += new System.EventHandler(this.label6_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(339, 99);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(29, 13);
            this.label7.TabIndex = 17;
            this.label7.Text = "AVG";
            // 
            // lbl_avg
            // 
            this.lbl_avg.AutoSize = true;
            this.lbl_avg.Font = new System.Drawing.Font("Microsoft Sans Serif", 36F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_avg.Location = new System.Drawing.Point(332, 112);
            this.lbl_avg.Name = "lbl_avg";
            this.lbl_avg.Size = new System.Drawing.Size(128, 55);
            this.lbl_avg.TabIndex = 18;
            this.lbl_avg.Text = "AVG";
            this.lbl_avg.Click += new System.EventHandler(this.label8_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(194, 9);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(249, 33);
            this.label9.TabIndex = 19;
            this.label9.Text = "Módulo de Notas";
            // 
            // idalu
            // 
            this.idalu.DataPropertyName = "idalu";
            this.idalu.HeaderText = "Id";
            this.idalu.Name = "idalu";
            // 
            // nomalu
            // 
            this.nomalu.DataPropertyName = "nomalu";
            this.nomalu.HeaderText = "Nombre";
            this.nomalu.Name = "nomalu";
            // 
            // apealu
            // 
            this.apealu.DataPropertyName = "apealu";
            this.apealu.HeaderText = "Apellido";
            this.apealu.Name = "apealu";
            // 
            // dnialu
            // 
            this.dnialu.DataPropertyName = "dnialu";
            this.dnialu.HeaderText = "DNI";
            this.dnialu.Name = "dnialu";
            // 
            // n1
            // 
            this.n1.DataPropertyName = "n1";
            this.n1.HeaderText = "N1";
            this.n1.Name = "n1";
            // 
            // n2
            // 
            this.n2.DataPropertyName = "n2";
            this.n2.HeaderText = "N2";
            this.n2.Name = "n2";
            // 
            // n3
            // 
            this.n3.DataPropertyName = "n3";
            this.n3.HeaderText = "N3";
            this.n3.Name = "n3";
            // 
            // prom
            // 
            this.prom.DataPropertyName = "prom";
            this.prom.HeaderText = "AVG";
            this.prom.Name = "prom";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(655, 377);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.lbl_avg);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.txt_n3);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.txt_n2);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txt_n1);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txt_dni);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txt_ape);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txt_nom);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnExi);
            this.Controls.Add(this.btnUpd);
            this.Controls.Add(this.btnDel);
            this.Controls.Add(this.btnSav);
            this.Controls.Add(this.dgvAlumnos);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvAlumnos)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvAlumnos;
        private System.Windows.Forms.Button btnSav;
        private System.Windows.Forms.Button btnDel;
        private System.Windows.Forms.Button btnUpd;
        private System.Windows.Forms.Button btnExi;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_nom;
        private System.Windows.Forms.TextBox txt_ape;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_dni;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_n1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txt_n2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txt_n3;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label lbl_avg;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.DataGridViewTextBoxColumn idalu;
        private System.Windows.Forms.DataGridViewTextBoxColumn nomalu;
        private System.Windows.Forms.DataGridViewTextBoxColumn apealu;
        private System.Windows.Forms.DataGridViewTextBoxColumn dnialu;
        private System.Windows.Forms.DataGridViewTextBoxColumn n1;
        private System.Windows.Forms.DataGridViewTextBoxColumn n2;
        private System.Windows.Forms.DataGridViewTextBoxColumn n3;
        private System.Windows.Forms.DataGridViewTextBoxColumn prom;
    }
}

