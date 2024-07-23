<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Autentificacion.aspx.cs" Inherits="PokerBurguers_BackEnd.Autentificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="icon" type="image/x-icon" href="imagenes/icono.ico"/>
    <title>Poker Burgers - Inicio de Sesión</title>
</head>
<body>
    <form id="form1" runat="server">
       <section>
           <asp:Label ID="Label1" runat="server" Text="Ingrese su usuario y contraseña"></asp:Label>
            <table>
               <tr>
                   <td>
                       <asp:Label ID="lbUsuario"   runat="server" Text="Usuario"></asp:Label>
                   </td>
                   <td>
                            <asp:TextBox ID="tbUsuario" runat="server"></asp:TextBox>
                   </td>
               </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbContraseña" runat="server" Text="Contraseña"></asp:Label>
                    </td>
                    <td>
                          <asp:TextBox ID="tbContraseña" runat="server" TextMode="Password"></asp:TextBox>  
                    </td>
                </tr>
           </table>
        </section>
            <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar" OnClick="btnConfirmar_Click" />
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
    </form>

</body>
</html>
