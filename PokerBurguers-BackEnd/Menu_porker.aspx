﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu_porker.aspx.cs" Inherits="PokerBurguers_BackEnd.Menu_porker" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>PockerBurgers - Menu</title>
<link rel="icon" type="image/x-icon" href="imagenes/icono.ico"/>
<link rel="stylesheet" href="reset.css"/>
<link rel="stylesheet" href="Estilos/menu.css"/>
<script src="https://kit.fontawesome.com/35a8789608.js" crossorigin="anonymous"></script>
</head>
<body id="menu" runat="server">
            <header>
    <img class="logo" src="imagenes/logo.png"/>
    <div>
        <nav>
            <ul>
                <li><a href="index.html">Inicio</a></li>
                <li><a href="">Menú</a></li>
                <li><a href="">Pedir en línea</a></li>
                <li><a href="sucursales.html">Sucursales</a></li>
                <li><a href="cupones.html">Cupones</a></li>
            </ul>
        </nav>
    </div>
</header>
<div>
    <ul class="productos">
        <li onclick="toggleActive(this)">
            <h2>Hamburguesa</h2><br/>
            <asp:HiddenField ID="ProductoID1" runat="server" Value="1" />
            <button onclick="togglefav()" id="botonfav" class="bo-fav"><i id="a" class="fa-solid fa-heart"></i> </button>
            <img class="imgcomida" src="imagenes/hamburgesa_milanesa.png"/>
            <p class="producto-descripcion"> Hamburguesa con carne de res, queso, lechuga, tomate y salsa especial.</p>
            <p class="producto-precio">$90.00</p><br />
            <button class="buton">Comprar</button>
            <button class="carrito"><i class="fa-solid fa-cart-plus"></i></button>
        </li>

        <li onclick="toggleActive(this)">
            <h2>Alitas de Pollo</h2> <br/>
            <asp:HiddenField ID="HiddenField1" runat="server" Value="1" />
            <button onclick="togglefav2()" id="botonfav2" class="bo-fav"><i id="a2" class="fa-solid fa-heart"></i> </button>
            <img class="imgcomida" src="imagenes/alitas.jpg"/>
            <br />
            <p class="producto-descripcion">Alitas de pollo fritas y sazonadas con salsa BBQ y picante.</p>
            <p class="producto-precio">$170.00</p><br />
            <button class="buton">Comprar</button>
            <button class="carrito"><i class="fa-solid fa-cart-plus"></i></button>
        </li>

        <li onclick="toggleActive(this)">
            <h2>Hamburguesa</h2><br/>
            <asp:HiddenField ID="HiddenField2" runat="server" Value="1" />
            <button onclick="togglefav3()" id="botonfav3" class="bo-fav"><i id="a3" class="fa-solid fa-heart"></i> </button>
            <img class="imgcomida" src="imagenes/hamburguesas-mas-monchosas-de-cdmx.jpeg"/>
            <p class="producto-descripcion">Incluye una hamburguesa con doble carne de res acompañado de papas fritas crujientes.</p>
            <p class="producto-precio">$130.00</p><br />
            <button class="buton">Comprar</button>
            <button class="carrito"><i class="fa-solid fa-cart-plus"></i></button>
       </li>

        <li onclick="toggleActive(this)">
            <h2>Sushi</h2><br/>
            <asp:HiddenField ID="HiddenField3" runat="server" Value="1" />
            <button onclick="togglefav4()" id="botonfav4" class="bo-fav"><i id="a4" class="fa-solid fa-heart"></i> </button>
            <img class="imgcomida" src="imagenes/sushi.jpg"/>
            <p class="producto-descripcion">
                Pariedad de rollos de sushi con ingredientes
                como salmón, atún, aguacate, pepino y arroz.
            </p>
            <p class="producto-precio">$90.00</p><br />
            <button class="buton">Comprar</button>
            <button class="carrito"><i class="fa-solid fa-cart-plus"></i></button>
        </li>
    </ul>
</div>

<footer>
    <img class="logo_footer" src="imagenes/logo.png"/>
    <img class="logo_footer" src="imagenes/facebook.png"/>
    <img class="logo_footer" src="imagenes/Instagram.png"/>
    <p>@Copyright Poker Burguers - 2024</p>
</footer>

<script>
function toggleActive(productos) {
        // Quitar la clase active de todos los elementos
        document.querySelectorAll('.productos li').forEach(el => {
            el.classList.remove('active');
        });
        // Añadir la clase active al elemento clicado
    element.classList.add('active');
    }
</script>
<script>
    var btnfav = document.getElementById('botonfav');
    var a = document.getElementById('a');
    var btnfav2 = document.getElementById('botonfav2');
    var a2 = document.getElementById('a2');
    var btnfav3 = document.getElementById('botonfav3');
    var a3 = document.getElementById('a3');
    var btnfav4 = document.getElementById('botonfav4');
    var a4 = document.getElementById('a4');

    function togglefav() {
        if (btnfav.style.color == "red") {
            a.style.fontSize = "30px"
            btnfav.style.color = "#000000"
            a.style.transform = "none";

        }
        else {
            btnfav.style.color = "red"
            a.style.transform = "scale(1.2)";
        }
    }

    function togglefav2() {
        if (btnfav2.style.color == "red") {
            a2.style.fontSize = "30px"
            btnfav2.style.color = "#000000"
            a2.style.transform = "none";

        }
        else {
            btnfav2.style.color = "red"
            a2.style.transform = "scale(1.2)";
        }
    }

    function togglefav3() {
        if (btnfav3.style.color == "red") {
            a3.style.fontSize = "30px"
            btnfav3.style.color = "#000000"
            a3.style.transform = "none";

        }
        else {
            btnfav3.style.color = "red"
            a3.style.transform = "scale(1.2)";
        }
    }

    function togglefav4() {
        if (btnfav4.style.color == "red") {
            a4.style.fontSize = "30px"
            btnfav4.style.color = "#000000"
            a4.style.transform = "none";

        }
        else {
            btnfav4.style.color = "red"
            a4.style.transform = "scale(1.2)";
        }
    }
</script>
</body>
</html>
