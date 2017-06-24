<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataBindingExample.aspx.cs" Inherits="_01.DataBindingSimpleDemo.DataBindingExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
     <title>Data Binding - Simple Example</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="The description of my page" />
</head>

<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownYesNo" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownYesNo_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Label ID="LabelSelectedYesNo" runat="server"></asp:Label>

        <br />
        <br />
        <br />

        <asp:ListBox ID="ListBoxTowns" runat="server" AutoPostBack="True"
            DataTextField="Name" DataValueField="ID"
            onselectedindexchanged="ListBoxTowns_SelectedIndexChanged"></asp:ListBox>
        <asp:Label ID="LabelSelectedTown" runat="server"></asp:Label>

    </form>
</body>
</html>
