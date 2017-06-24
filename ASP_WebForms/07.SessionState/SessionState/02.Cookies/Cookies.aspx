<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="_02.Cookies.Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookies - Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Label ID="LabelLoggedIn" runat="server" Text="Not logged"></asp:Label>
                <br />
            </div>
            <div>
                <asp:Button ID="ButtonLogMe" runat="server" Text="Log Me" OnClick="buttonLogMe_Click" />
            </div>
        </div>
    </form>
</body>
</html>
