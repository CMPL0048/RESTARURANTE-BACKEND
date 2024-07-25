using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PokerBurguers_BackEnd
{
    public partial class Autentificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            //Validar que ambos textbox tengan información
            if (tbUsuario.Text != "" && tbContraseña.Text != "")
            {
                string Usuario, Contraseña;
                Usuario = tbUsuario.Text;
                Contraseña = tbContraseña.Text;

                Poker_BurguersTableAdapters.usuariosTableAdapter taloguin = new Poker_BurguersTableAdapters.usuariosTableAdapter();

                Poker_Burguers.usuariosDataTable dtloguin = taloguin.GetData(Usuario, Contraseña);

                int Registro = dtloguin.Count;
                if (Registro <= 0)
                {
                    string script = "alert('Usuario y/o contraseña incorrectos')";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Alerta", script, true);
                }
                else
                {
                    Response.Redirect("index.html");
                }
            }
            else
            {
                string script = "alert('No pueden quedar en blanco usuario y/o contraseña');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
            }
        }
    }
}