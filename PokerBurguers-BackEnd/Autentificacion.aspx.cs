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
            //Validar que ambos textbox tengan infromación
            if (tbUsuario.Text != "" && tbContraseña.Text != "") 
            {
                string Usuario, Contraseña;
                Usuario = tbUsuario.Text;
                Contraseña = tbContraseña.Text;

            } 
        }
    }
}