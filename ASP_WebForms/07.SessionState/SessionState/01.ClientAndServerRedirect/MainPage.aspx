<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="_01.ClientAndServerRedirect.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Redirection-Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="buttonServerRedirect" runat="server"
          Text="Server Redirect" OnClick="buttonServerRedirect_Click"/>
        <asp:Button ID="buttonRedirect" runat="server"
          Text="Client Redirect" OnClick="buttonRedirect_Click"/>
    </div>
    </form>
</body>
</html>
