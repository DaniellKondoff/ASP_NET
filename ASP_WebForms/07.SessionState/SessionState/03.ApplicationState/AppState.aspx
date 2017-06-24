<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppState.aspx.cs" Inherits="_03.ApplicationState.AppState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>App State - Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="labelLoads" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Button ID="buttonAddLoad" runat="server" Text="Post Back"
                OnClick="buttonAddLoad_Click" />
        </div>
    </form>
</body>
</html>
