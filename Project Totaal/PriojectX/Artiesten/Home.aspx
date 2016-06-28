<%@ Page Title="" Language="C#" MasterPageFile="~/Artiesten/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Artiesten_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <link href="../css/StyleSheet.css" rel="stylesheet" />
    <script src="../js/JavaScript.js"></script>
        <title>Tomorrowland - Artiest - Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                Profielstijl:
                <asp:Label ID="ProfielstijlLabel" runat="server" Text='<%# Eval("Profielstijl") %>' />
                <br />
                Tekst:
                <asp:Label ID="TekstLabel" runat="server" Text='<%# Eval("Tekst") %>' />
                <br />
                ArtiestFoto:
                <asp:Label ID="ArtiestFotoLabel" runat="server" Text='<%# Eval("ArtiestFoto") %>' />
                <br />
                ArtiestNaam:
                <asp:Label ID="ArtiestNaamLabel" runat="server" Text='<%# Eval("ArtiestNaam") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project_2ConnectionString %>" SelectCommand="SELECT [Profielstijl], [Tekst], [ArtiestFoto], [ArtiestNaam] FROM [Artiest] WHERE ([AccountID] = @AccountID)">
            <SelectParameters>
                <asp:SessionParameter Name="AccountID" SessionField="AccountID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

