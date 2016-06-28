<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ArtiestAdmin.aspx.cs" Inherits="login2_cms_ArtiestAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/StyleSheet.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div align="center">
        <br />
    <div class="header">
        <h2>Account bijwerken</h2>
        <asp:Button runat="server" Text="Loguit" ID="logout" OnClick="logout_Click" CssClass="headerButton"/>
        <asp:Button runat="server" Text="Mijn Account" ID="mijnAccount" OnClick="mijnAccount_Click" CssClass="headerButton"/>
    </div>

    <div class="tableContainer">
        <br />
        <table class="table">
            <tr>
                <td></td>
                <td><asp:Label runat="server" Text="" ID="lblWelkom"> </asp:Label></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td><label>Naam:</label></td>
                <td>
                    <asp:TextBox ID="txtArtiestNaam" placeholder="Artriest naam" runat="server" Class="textbox"
                    Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><label>Email</label></td>
                <td>
                    <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" Class="textbox"
                    Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><label>Foto:</label></td>
                <td>
                    <asp:FileUpload runat="server" ID="FileUpload1"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Image runat="server" ImageUrl="" Width="180px" Height="180px" ID="ArtiestFoto"/>
                </td>
            </tr>
            <tr>
                <td><label>Tekst:</label></td>
                <td>
                    <asp:TextBox ID="txtTekst" placeholder="Tekst" runat="server" Class="textbox"
                    Width="180px" > </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><label>ProfielStijl:</label></td>
                <td>
                    <asp:TextBox ID="txtProfielstijl" placeholder="Profielstijl" runat="server" Class="textbox"
                    Width="180px" > </asp:TextBox>
                </td>
                <td>Keuze uit: Default, Kleurvol, Donker</td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Label runat="server" ID="PasAanFeedback"></asp:Label></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button runat="server" Text="Pas aan" ID="btnsubmit" OnClick="btnsubmit_Click"/></td>
                <td></td>
            </tr>
        </table>
    </div>
    </div>
</form>
</body>
</html>
