<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        welkom 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LT-KNIP\SQLEXPRESS;Initial Catalog=Project_2;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
    </form>
</body>
</html>
