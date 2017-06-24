<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebServerControl.aspx.cs" Inherits="_03.WebServerControls.WebServerControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:Label ID="LabelResult" runat="server" Text="" Visible="false" />
        <asp:TextBox ID="TextBoxInput" runat="server" /><br />
        <asp:Button ID="ButtonSubmit" runat="server" Text="Submitt" OnClick="ButtonSubmit_Click" />
    </form>
</body>
</html>
