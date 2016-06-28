<?php
$pdo = new PDO("sqlsrv:server=.\SQLEXPRESS;database=Project_2",'','');
 $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
if ($pdo)
{
    echo "zeker geconnect";
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="../js/JavaScript.js"></script>
    <link href="../css/Layout.css" rel="stylesheet" />
    <link href="../css/Home.css" rel="stylesheet" />
    </head>
    <body>
    <div id="header">
        <a href="Home.aspx" ><h1>MOJO</h1></a>
    </div>
    <div id="menu">
        <a href="Home.aspx"><img src="../img/mojo-logo.svg" id="scroll-logo" alt="Mojo Concerts"/></a>
        <nav>
            <ul>
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="#Evenementen">Evenementen</a></li>
                <li><a href="#Programma">Programma's</a></li>
                <li><a href="#Artiesten">Artiesten</a></li>
            </ul>
        </nav>
        <div id="scroll-top">
        </div>
    </div>
    <div id="inhoud">
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
    <div class="content" id="evenement">
    <h1>Aankomende Evenementen</h1>
        <div class="container">
            <div class="event-container"></div>
            <div class="info"></div>
        </div>
            
    </div>
     <div class="content" id="Programma">
        <h1>Programma's</h1>
       
            <div class="container">
                <div class="event-container"></div>
            </div>
            
        </div>

    <div class="content" id="Artiesten">
        <h1>Artiesten</h1>
            <div class="container">
                <div class="event-container"></div>
                <div class="info"></div>
            </div>
    </div>
    </div>
    <div id="footer">

    </div>
    </body>
</html>
