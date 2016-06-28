<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccountAdmin.aspx.cs" Inherits="login2_cms_AccountAdmin" %>

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
                <h2>Account Gegevens</h2>
                <asp:Button runat="server" Text="Loguit" ID="logout" OnClick="logout_Click" CssClass="headerButton"/>
                <asp:Button runat="server" Text="Mijn Gegevens" ID="mijnAccount" OnClick="mijnGegevens_Click" CssClass="headerButton"/>
            </div>

            <div class="tableContainer">
                <br />
                <table class="table">
                    <tr>
                        <td></td>
                        <td>Uw Account Gegevens</td>
                    </tr>
                    <tr>
                        <td><label>Email:</label></td>
                        <td>
                            <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" Class="textbox"
                            Width="180px"></asp:TextBox>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><label>Gebruikersnaam:</label></td>
                        <td>            
                            <asp:TextBox ID="txtGebruikersnaam" placeholder="Gebruikersnaam" runat="server" Class="textbox"
                            Width="180px"></asp:TextBox>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><label>Wachtwoord:</label></td>
                        <td>
                            <asp:TextBox ID="txtWachtwoord" placeholder="Wachtwoord" runat="server" Class="textbox"
                            Width="180px" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="ErrorWachtwoord" Text="" ForeColor="red"></asp:Label>
                        </td>
                    </tr>
<%--                    <tr>
                        <td><label>Wachtwoord check:</label></td>
                        <td>
                            <asp:TextBox ID="txtWachtwoordCheck" placeholder="Wachtwoord" runat="server" Class="textbox"
                            Width="180px" ></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label runat="server" ID="ErrorWachtwoordCheck" Text=""></asp:Label>
                        </td>
                    </tr>--%>
                    <tr>
                        <td><label>Rechten:</label></td>
                        <td>
                            <asp:TextBox ID="txtRechten" runat="server" Class="textbox"
                            Width="180px" placeholder="Artiest" Text="Artiest" Enabled="false" ></asp:TextBox>
                        </td>
                        <td> Uw rechten zijn als standaard Artiest </td>
                    </tr>
                        <tr>
                            <td></td>
                            <td><asp:Label runat="server" ID="PasAanFeedback"></asp:Label></td>
                            <td></td>
                        </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnsubmit" runat="server" Text="Pas aan" class="submitButton"
                            Width="81px" onclick="btnsubmit_Click" />
                        </td>
                        <td></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
