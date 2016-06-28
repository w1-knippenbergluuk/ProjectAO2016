<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eventToevoegen.aspx.cs" Inherits="cms_eventToevoegen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <fieldset style ="width:200px;">
    <legend>Evenement toevoegen </legend>
        <asp:TextBox ID="txtEvenementNaam" placeholder="Evenement Naam" runat="server"
            Width="180px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txtAdres" placeholder="Adres" runat="server"
            Width="180px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txtPostcode" placeholder="Postcode" runat="server"
            Width="180px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txtPlaats" placeholder="Plaats" runat="server"
            Width="180px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txtLand" placeholder="Land" runat="server"
            Width="180px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txtDatum" placeholder="Datum" runat="server"
            Width="180px" TextMode="DateTime" > </asp:TextBox>
        <br />
        <br />
        <a href="loginpage.aspx">Inloggen</a>
        <asp:Button ID="btnsubmit" runat="server" Text="Toevoegen"
           Width="81px" onclick="btnsubmit_Click" />
            <br />
           
    </fieldset>
    </div>

    </form>
</body>
</html>
