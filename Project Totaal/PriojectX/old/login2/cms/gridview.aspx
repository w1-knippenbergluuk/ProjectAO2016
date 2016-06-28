<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gridview.aspx.cs" Inherits="cms_gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            yo
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringTest %>" DeleteCommand="DELETE FROM [Account] WHERE [AccountID] = @original_AccountID AND [Email] = @original_Email AND [Gebruikersnaam] = @original_Gebruikersnaam AND [Wachtwoord] = @original_Wachtwoord AND (([Rechten] = @original_Rechten) OR ([Rechten] IS NULL AND @original_Rechten IS NULL))" InsertCommand="INSERT INTO [Account] ([Email], [Gebruikersnaam], [Wachtwoord], [Rechten]) VALUES (@Email, @Gebruikersnaam, @Wachtwoord, @Rechten)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Account]" UpdateCommand="UPDATE [Account] SET [Email] = @Email, [Gebruikersnaam] = @Gebruikersnaam, [Wachtwoord] = @Wachtwoord, [Rechten] = @Rechten WHERE [AccountID] = @original_AccountID AND [Email] = @original_Email AND [Gebruikersnaam] = @original_Gebruikersnaam AND [Wachtwoord] = @original_Wachtwoord AND (([Rechten] = @original_Rechten) OR ([Rechten] IS NULL AND @original_Rechten IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_AccountID" Type="Int32" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Gebruikersnaam" Type="String" />
                <asp:Parameter Name="original_Wachtwoord" Type="String" />
                <asp:Parameter Name="original_Rechten" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Gebruikersnaam" Type="String" />
                <asp:Parameter Name="Wachtwoord" Type="String" />
                <asp:Parameter Name="Rechten" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Gebruikersnaam" Type="String" />
                <asp:Parameter Name="Wachtwoord" Type="String" />
                <asp:Parameter Name="Rechten" Type="String" />
                <asp:Parameter Name="original_AccountID" Type="Int32" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Gebruikersnaam" Type="String" />
                <asp:Parameter Name="original_Wachtwoord" Type="String" />
                <asp:Parameter Name="original_Rechten" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AccountID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="AccountID" HeaderText="AccountID" InsertVisible="False" ReadOnly="True" SortExpression="AccountID" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Gebruikersnaam" HeaderText="Gebruikersnaam" SortExpression="Gebruikersnaam" />
                <asp:BoundField DataField="Wachtwoord" HeaderText="Wachtwoord" SortExpression="Wachtwoord" />
                <asp:BoundField DataField="Rechten" HeaderText="Rechten" SortExpression="Rechten" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
