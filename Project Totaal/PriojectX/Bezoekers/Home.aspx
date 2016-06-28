<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="../js/JavaScript.js"></script>
    <link href="../css/Layout.css" rel="stylesheet" />
    <link href="../css/Home.css" rel="stylesheet" />
    <title>Mojo Concerts - Home</title>
        <!-- favicon -->
        <link rel="apple-touch-icon" sizes="57x57" href="../img/favicon/apple-touch-icon-57x57.png"/>
        <link rel="apple-touch-icon" sizes="60x60" href="../img/favicon/apple-touch-icon-60x60.png"/>
        <link rel="apple-touch-icon" sizes="72x72" href="../img/favicon/apple-touch-icon-72x72.png"/>
        <link rel="apple-touch-icon" sizes="76x76" href="../img/favicon/apple-touch-icon-76x76.png"/>
        <link rel="apple-touch-icon" sizes="114x114" href="../img/favicon/apple-touch-icon-114x114.png"/>
        <link rel="apple-touch-icon" sizes="120x120" href="../img/favicon/apple-touch-icon-120x120.png"/>
        <link rel="apple-touch-icon" sizes="144x144" href="../img/favicon/apple-touch-icon-144x144.png"/>
        <link rel="apple-touch-icon" sizes="152x152" href="../img/favicon/apple-touch-icon-152x152.png"/>
        <link rel="icon" type="image/png" href="../img/favicon/favicon-32x32.png" sizes="32x32"/>
        <link rel="icon" type="image/png" href="../img/favicon/favicon-96x96.png" sizes="96x96"/>
        <link rel="icon" type="image/png" href="../img/favicon/favicon-16x16.png" sizes="16x16"/>
        <link rel="manifest" href="../img/favicon/manifest.json"/>
        <link rel="mask-icon" href="../img/favicon/safari-pinned-tab.svg" color="#5bbad5"/>
        <meta name="msapplication-TileColor" content="#da532c"/>
        <meta name="msapplication-TileImage" content="../img/favicon/mstile-144x144.png"/>
        <meta name="theme-color" content="#ffffff"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-content">
        <h1>Welkom op Mojo Concerts!</h1>
        <div class="content-container" id="content-container1">
            <img src="../img/Dominator.png" id="content-img1"/>
            <img src="../img/Tomorrowland.png" id="content-img2"/>
            <a href="#Evenementen"><div class="caption"><p>Evenementen</p></div></a>
        </div>
        <div class="content-container" id="content-container2">
            <img src="../img/Line-up-flyingDutch.jpg" id="content-img3"/>
            <img src="../img/Line-up-tomorrowland.jpg" id="content-img4"/>
            <img src="../img/Line-up-intents.jpg" id="content-img5"/>
            <img src="../img/Line-up-dominator.jpg" id="content-img6"/>
            <a href="#Programma"><div class="caption"><p>Programma's</p></div></a>
        </div>
        <div class="content-container" id="content-container3">
            <a href="#Artiesten"><div class="caption"><p>Artiesten</p></div></a>
        </div>
    </div>
    <br /><br />
    <div class="content" id="Evenementen">
        <h1 >Aankomende evenementen</h1>
          <div class="container">
            <div class="event-container"></div>
              <div class="info"></div>
          </div>
    </div>
   
     <div class="content" id="Programma">
        <h1>Programma's</h1>
       
            <div class="line-up">
            </div>
        </div>

    <div class="content" id="Artiesten">
        <h1>Artiesten</h1>

        
    </div>
</asp:Content>

