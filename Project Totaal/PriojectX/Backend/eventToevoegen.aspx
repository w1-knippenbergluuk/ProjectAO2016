<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eventToevoegen.aspx.cs" Inherits="cms_eventToevoegen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/StyleSheet.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">
    <div align="center">    
    <div class="header">
        <h2>Toevoegen Evenement/Programma</h2>
    </div>

        <div class="tableContainer">
            <h2>Toevoegen Programma</h2>
        </div>

        <div class="tableContainer">
            <table class="table">
                <tr>
                    <td></td>
                    <td><h2>Programma</h2></td>
                    <td></td>
                </tr>
                <tr>                    
                    <td></td>
                    <td><asp:TextBox ID="intProgrammaID" placeholder="ProgrammaID" runat="server" Class="textbox"
                    Width="180px"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:TextBox ID="txtEvenementNaam" placeholder="Evenement Naam" runat="server" Class="textbox"
                    Width="180px"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:TextBox ID="txtPodium" placeholder="Podium" runat="server" Class="textbox"
                    Width="180px"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:TextBox ID="txtAritestNaam" placeholder="ArtiestNaam" runat="server" Class="textbox"
                    Width="180px"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:TextBox ID="Tijdstip" placeholder="Evenement Naam" runat="server" Class="textbox"
                    Width="180px"></asp:TextBox></td>
                    <td>HH-MM-SS</td>
                </tr>
            </table>
        </div>

        <asp:Button ID="btnsubmit" runat="server" Text="Toevoegen"
           Width="81px" onclick="btnsubmit_Click" class="submitButton"/>
    </div>

    </form>
</body>
</html>
