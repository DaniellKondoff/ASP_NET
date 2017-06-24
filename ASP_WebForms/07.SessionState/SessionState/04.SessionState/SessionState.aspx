<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SessionState.aspx.cs" Inherits="_04.SessionState.SessionState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LabelPageLoads" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Button ID="ButtonAddLoad" runat="server" Text="Post Back"
                OnClick="buttonAddLoad_Click" />
        </div>
    </form>
</body>
</html>
