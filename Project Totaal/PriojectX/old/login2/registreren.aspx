<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registreren.aspx.cs" Inherits="registreren" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <fieldset style ="width:200px;">
    <legend>Register page </legend>
        <asp:TextBox ID="txtusername" placeholder="username" runat="server"
            Width="180px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txtpassword" placeholder="password" runat="server"
            Width="180px" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="txtEmail" placeholder="E-Mail" runat="server"
            Width="180px" TextMode="email"></asp:TextBox>
        <br />
        <br />
        <a href="loginpage.aspx">Inloggen</a>
        <asp:Button ID="btnsubmit" runat="server" Text="Registreren"
           Width="81px" onclick="btnsubmit_Click" />
            <br />
           
    </fieldset>
    </div>

    </form>
</body>
</html>
