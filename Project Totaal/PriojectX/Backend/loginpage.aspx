<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Inherits="loginpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">

        <div class="header">
            <h2>Login</h2>
        </div>

        <div class="tableContainer">
            <table class="table">
                <tr>
                    <td>
                        <label class="Label">Email: </label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" Class="textbox"
                            Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="EmailError" Text="" ForeColor="red">*</asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label class="Label">Wachtwoord: </label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" placeholder="Wachtwoord" runat="server" Class="textbox" 
                            Width="180px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="WwError" Text="" ForeColor="red">*</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnsubmit" runat="server" Text="Inloggen"
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