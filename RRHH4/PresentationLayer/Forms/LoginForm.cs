using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RRHH
{
    public partial class LoginForm : Form //Da a entender que es una interfaz grafica
    {
        //Constructor, inicializa todos los botones, cuadros de texto
        public LoginForm()
        {
            InitializeComponent();
        }
        
        private void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            //Se obtienen los datos correspondientes que se veran en las cajas de texto
            string nombreUsuario = txtUsuario.Text.Trim();
            string contraseña = txtContraseña.Text.Trim();
            //Trim() hace que se eliminen los espacios extra del texto
            
            Usuario usuario = new Usuario(); // Se crea un nuevo objeto de la clase usuario

            if (usuario.ValidarUsuario(nombreUsuario, contraseña))
            {
                // Obtener el rol y el ID del usuario
                string rol = usuario.ObtenerRol(nombreUsuario); //Devuelve rol
                int usuarioID = usuario.ObtenerUsuarioID(nombreUsuario);//Devuelve identificador

                // Registrar actividad
                ConexionBD conexion = new ConexionBD();
                conexion.RegistrarActividad(usuarioID, "Inicio de sesión exitoso");

                // Pasar el rol al formulario principal
                MainMenuForm menu = new MainMenuForm(rol);
                menu.Show();
                this.Hide();
                //Se muestra el mensaje de bienvenida
                //Membresiales correctas
                MessageBox.Show($"Bienvenido, {rol}.", "Acceso concedido", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                //Membresiales incorrectas
                MessageBox.Show("Usuario o contraseña incorrectos.", "Acceso denegado", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        //Membresia correcta
        private void btnSalir_Click(object sender, EventArgs e)
        {
            Application.Exit(); // Cierra la aplicación
        }
    }
}
