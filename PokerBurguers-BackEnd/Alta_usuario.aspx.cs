using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PokerBurguers_BackEnd
{
    public partial class Alta_usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmarAlta_Click(object sender, EventArgs e)
        {
            string SQLInsert;
            //Cambiar el nombre de la base de datos que se tenga de manra local en su PC, el cambio se realizara en el apartado "Source=(Nombre de la conexión local)"
            SqlConnection SQLCon = new SqlConnection("Data Source=DESKTOP-TBKQSJ4\\SQLEXPRESS; Initial Catalog=PokerBurguer; Integrated Security=True");
            SqlCommand SQLcmd = new SqlCommand();

            using (SQLCon) 
            {
                SQLCon.Open();//Pone en uso la base de datos o la abre
                SQLcmd.Connection = SQLCon;

                //Declaración de las variables para tomar los datos que el usuario ingresa en el formulario
                string nombre, apellido_p, apellido_m, correo, telefono, calle, colonia, numerodecasa, codigopostal, referencias;
                char sexo;

                //Asignar a su variable correspondiente a la información ingresada por el usuario
                nombre = tbNombre.Text;
                apellido_p = tbApellidoP.Text;
                apellido_m = tbApellidoM.Text;
                correo = tbCorreo.Text;
                sexo = char.Parse(rblSexo.Text);
                telefono = lbTelefono.Text;
                calle = lbCalle.Text;
                colonia = lbColonia.Text;
                numerodecasa = lbNumeroCasa.Text;
                codigopostal = lbCodigoPostal.Text;
                referencias = lbReferencias.Text;

                //Proceso de inserción del usuario en la tabla "Alta_usuario"
                SQLInsert = string.Format("Insert into Alta_usuario(nombre, apellido_p, apellido_m, correo, sexo, telefono, calle, colonia, numerodecasa, codigopostal, referencias)" +
                "VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}')",nombre,apellido_p,apellido_m,correo,sexo,telefono,calle,colonia,numerodecasa,codigopostal,referencias);
                SQLcmd.CommandText = SQLInsert;
                SQLcmd.ExecuteNonQuery();//Ejecuta el insert dentro del managment

                //Si el querry se ejecuta de manera exitosa mandara el siguiente mensaje "Usuario registrado con exito"
                string script = "alert('Usuario registrado con exito');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Alerta", script, true);

                SQLCon.Close(); //cierra la conexión con base de datos 

                //Limpia los campos donde ingreso la infromación el usuario
                tbNombre.Text = "";
                tbApellidoP.Text = "";
                tbApellidoM.Text = "";
                tbCorreo.Text = "";
                tbTelefono.Text = "";
                tbCalle.Text = "";
                tbColonia.Text = "";
                tbNumeroCasa.Text = "";
                tbCodigoPostal.Text = "";
                tbReferencias.Text = "";
            }
        }
    }
}