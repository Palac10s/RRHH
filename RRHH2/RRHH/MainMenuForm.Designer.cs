﻿namespace RRHH
{
    partial class MainMenuForm
    {
        private void InitializeComponent()
        {
            this.lblBienvenida = new System.Windows.Forms.Label();
            this.btnGestionColaboradores = new System.Windows.Forms.Button();
            this.btnEquipo = new System.Windows.Forms.Button();
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnHistorial = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblBienvenida
            // 
            this.lblBienvenida.AutoSize = true;
            this.lblBienvenida.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold);
            this.lblBienvenida.Location = new System.Drawing.Point(100, 20);
            this.lblBienvenida.Name = "lblBienvenida";
            this.lblBienvenida.Size = new System.Drawing.Size(316, 25);
            this.lblBienvenida.TabIndex = 0;
            this.lblBienvenida.Text = "Bienvenido al sistema de RRHH";
            // 
            // btnGestionColaboradores
            // 
            this.btnGestionColaboradores.Location = new System.Drawing.Point(125, 69);
            this.btnGestionColaboradores.Name = "btnGestionColaboradores";
            this.btnGestionColaboradores.Size = new System.Drawing.Size(221, 40);
            this.btnGestionColaboradores.TabIndex = 1;
            this.btnGestionColaboradores.Text = "Gestión de Colaboradores";
            this.btnGestionColaboradores.UseVisualStyleBackColor = true;
            this.btnGestionColaboradores.Click += new System.EventHandler(this.btnGestionColaboradores_Click);
            // 
            // btnEquipo
            // 
            this.btnEquipo.Location = new System.Drawing.Point(150, 130);
            this.btnEquipo.Name = "btnEquipo";
            this.btnEquipo.Size = new System.Drawing.Size(180, 40);
            this.btnEquipo.TabIndex = 2;
            this.btnEquipo.Text = "Equipo del Proyecto";
            this.btnEquipo.UseVisualStyleBackColor = true;
            this.btnEquipo.Click += new System.EventHandler(this.btnEquipo_Click);
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(150, 250);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(180, 40);
            this.btnSalir.TabIndex = 4;
            this.btnSalir.Text = "Salir";
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // btnHistorial
            // 
            this.btnHistorial.Location = new System.Drawing.Point(150, 190);
            this.btnHistorial.Name = "btnHistorial";
            this.btnHistorial.Size = new System.Drawing.Size(180, 40);
            this.btnHistorial.TabIndex = 3;
            this.btnHistorial.Text = "Historial de Actividades";
            this.btnHistorial.UseVisualStyleBackColor = true;
            this.btnHistorial.Click += new System.EventHandler(this.btnHistorial_Click);
            // 
            // MainMenuForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(538, 390);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.btnHistorial);
            this.Controls.Add(this.btnEquipo);
            this.Controls.Add(this.btnGestionColaboradores);
            this.Controls.Add(this.lblBienvenida);
            this.Name = "MainMenuForm";
            this.Text = "Menú Principal";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private System.Windows.Forms.Label lblBienvenida;
        private System.Windows.Forms.Button btnGestionColaboradores;
        private System.Windows.Forms.Button btnEquipo;
        private System.Windows.Forms.Button btnHistorial; // Declaración del nuevo botón
        private System.Windows.Forms.Button btnSalir;
    }
}
