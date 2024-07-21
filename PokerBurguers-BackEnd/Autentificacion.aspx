<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Autentificacion.aspx.cs" Inherits="PokerBurguers_BackEnd.Autentificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <asp:Label ID="lbTexto" runat="server" Text="Ingrese su usuario y contraseña"></asp:Label>
        <br />
            <asp:Label ID="lbUsuario"   runat="server" Text="Usuario"></asp:Label>
                <asp:TextBox ID="tbUsuario" runat="server"></asp:TextBox>
        <br />
            <asp:Label ID="lbContraseña" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox ID="tbContraseña" runat="server"></asp:TextBox>
        <br />
        <br />
            <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar" OnClick="btnConfirmar_Click" />
    </form>
</body>
</html>
