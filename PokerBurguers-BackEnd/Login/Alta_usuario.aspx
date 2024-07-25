<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta_usuario.aspx.cs" Inherits="PokerBurguers_BackEnd.Alta_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="Estilos/index.css" />
<link rel="icon" type="image/x-icon" href="imagenes/icono.ico"/>
    <title>Crear una cuenta</title>
</head>
<body>
    <form id="form1" runat="server">
       <img src="imagenes/ima1.jpg" />
        <table>
           <tr>
               <td>
                   <h2>Datos de usuario</h2>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lbUsuario" runat="server" Text="Nombre de usuario"></asp:Label>
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
           <tr>
               <td>
                   <asp:Label ID="lbConfirmacionContraseña" runat="server" Text="Confirme su contraseña"></asp:Label>
               </td>
               <td>
                        <asp:TextBox ID="tbConfirmacionContraseña" runat="server" TextMode="Password"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <h2>Datos de contacto</h2>
               </td>
            </tr>
           <tr>
               <td>
                   <asp:Label ID="lbNombre" runat="server" Text="Nombre(s)"></asp:Label>
               </td>
               <td>
                        <asp:TextBox ID="tbNombre" runat="server"></asp:TextBox>
               </td>
               <td>
                   <asp:Label ID="lbApellidoP" runat="server" Text="Apellido Paterno"></asp:Label>
               </td>
               <td>
                         <asp:TextBox ID="tbApellidoP" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lbApellidoM" runat="server" Text="Apellido Materno"></asp:Label>
               </td>
               <td>
                        <asp:TextBox ID="tbApellidoM" runat="server"></asp:TextBox>
               </td>
               <td>
                   <asp:Label ID="lbCorreo" runat="server" Text="Correo Electrónico"></asp:Label>
               </td>
               <td>
                        <asp:TextBox ID="tbCorreo" runat="server"></asp:TextBox>
               </td>
            </tr>
            <tr>
               <td>
                   <asp:Label ID="lbSexo" runat="server" Text="Sexo"></asp:Label>
               </td>
               <td>
                   <asp:RadioButtonList ID="rblSexo" runat="server">
                        <asp:ListItem Value="F" Selected="True">Femenino</asp:ListItem>
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                   </asp:RadioButtonList>
              </td>
               <td>
                   <asp:Label ID="lbTelefono" runat="server" Text="Teléfono"></asp:Label>
               </td>
                <td>
                        <asp:TextBox ID="tbTelefono" runat="server"></asp:TextBox>
                </td>
           </tr>
            <tr>
                <td>
                    <h2>Domiciio</h2>
                </td>
            </tr>
           <tr>
               <td>
                   <asp:Label ID="lbCalle" runat="server" Text="Calle"></asp:Label>
               </td>
               <td>
                        <asp:TextBox ID="tbCalle" runat="server"></asp:TextBox>
               </td>
               <td>
                   <asp:Label ID="lbColonia" runat="server" Text="Colonia"></asp:Label>
               </td>
               <td>
                        <asp:TextBox ID="tbColonia" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lbNumeroCasa" runat="server" Text="Número de casa"></asp:Label>
               </td>
               <td>
                        <asp:TextBox ID="tbNumeroCasa" runat="server"></asp:TextBox>
               </td>
               <td>
                   <asp:Label ID="lbCodigoPostal" runat="server" Text="CódigoPostal"></asp:Label>
               </td>
               <td>
                        <asp:TextBox ID="tbCodigoPostal" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lbReferencias" runat="server" Text="Referencias"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="tbReferencias" runat="server"></asp:TextBox>
               </td>
           </tr>
       </table>
        <table>
            <tr>
                <td>
                    <asp:Button ID="btnConfirmarAlta" runat="server" Text="Confirmar" OnClick="btnConfirmarAlta_Click" />
                    <asp:Button ID="btnCancelarAlta" runat="server" Text="Cancelar" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
