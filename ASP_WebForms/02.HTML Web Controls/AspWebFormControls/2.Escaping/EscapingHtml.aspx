﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EscapingHtml.aspx.cs" Inherits="_2.Escaping.EscapingHtml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label runat="server" ID="Text">Text: </asp:Label>
        <asp:TextBox runat="server" ID="TextBoxText"></asp:TextBox><br />
        <asp:Button runat="server" ID="Submit"  Text="Submit" OnClick="Submit_Click"/><br />
        <asp:Label runat="server" ID="LabelResult"><%: this.TextBoxText.Text %></asp:Label><br />
        <asp:TextBox runat="server" ID="TextBoxResult"></asp:TextBox>
    </form>
</body>
</html>
