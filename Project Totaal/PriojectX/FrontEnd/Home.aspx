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
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>    
                <div class="container" id="<%# Eval("EvenementNaam") %>">
                    <div class="event-container"><img src="<%#Eval("EvenementFotoUrl") %>" class="evenement-foto"/></div>
                    <div class="info">
                    <h2><%# Eval("EvenementNaam") %><br /></h2>
                    <%# Eval("Datum") %> - <%# Eval("Plaats") %> - <%# Eval("Land") %>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>        
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project_2ConnectionString %>" SelectCommand="SELECT [EvenementNaam], [EvenementFotoUrl], [Datum] FROM [Evenement]"></asp:SqlDataSource>
   
     <div class="content" id="Programma">
        <h1>Programma's</h1>
       
            <div class="line-up">
            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                <HeaderTemplate> 
                    <div class="container" >
                    <table class="line-up-data" cellspacing="0" cellpadding="0">
                    <tr><th colspan="3">Tomorrowland 2016</th></tr>
                    <tr><td>Artiest</td><td>Tijdstip</td><td>Podium</td></tr>
                </HeaderTemplate>
                <ItemTemplate>
                        <tr><td><%#Eval("ArtiestNaam") %></td><td><%#Eval("Tijdstip") %></td><td><%#Eval("Podium") %></td></tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                        </div>  
                </FooterTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Project_2ConnectionString %>" SelectCommand="SELECT [Podium], [ArtiestNaam], [Tijdstip], [Evenementnaam] FROM [Programma] WHERE ([EvenementID] = @EvenementID)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="EvenementID" Type="String" />
                </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>

    <div class="content" id="Artiesten">
        <h1>Artiesten</h1>

            <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                    <div class="container">  
                        <div class="event-container"><img src="<%#Eval("ArtiestFoto") %>" class="evenement-foto"/></div>
                        <div class="info" id="artiest-info">
                            <h2><%# Eval("ArtiestNaam") %></h2>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Project_2ConnectionString %>" SelectCommand="SELECT [ArtiestNaam], [Tekst], [ArtiestFoto] FROM [Artiest]"></asp:SqlDataSource>
        
    </div>
</asp:Content>

