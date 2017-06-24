<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListControlDemo.aspx.cs" Inherits="_06.ListControls.ListControlDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <h1>ASP.NET List Controls</h1>

        Choose a town:<br />
        <asp:ListBox ID="ListBoxTowns" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ListBoxTowns_SelectedIndexChanged" Height="56px">
            <asp:ListItem Value="1">Sofia</asp:ListItem>
            <asp:ListItem Value="2">Plovdiv</asp:ListItem>
            <asp:ListItem Value="3">Varna</asp:ListItem>
        </asp:ListBox>
        
        <br />
        Choose a means of transportation: <br /><br />
        <asp:DropDownList ID="DropDownListTransport" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownListTransport_SelectedIndexChanged">
            <asp:ListItem Value="2">Bus</asp:ListItem>
            <asp:ListItem Value="1">Train</asp:ListItem>
            <asp:ListItem Value="3">Car</asp:ListItem>
        </asp:DropDownList>

        <h2>Result</h2>
        <asp:Literal ID="LiteralResult" runat="server" />

    </form>
</body>
</html>
