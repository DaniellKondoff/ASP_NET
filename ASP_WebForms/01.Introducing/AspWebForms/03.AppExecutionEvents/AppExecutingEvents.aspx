<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppExecutingEvents.aspx.cs" Inherits="_03.AppExecutionEvents.AppExecutingEvents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="EventsForm" runat="server">
    <asp:Literal ID="LiteralEvents" runat="server">I'm a literal inside an ASPX form.</asp:Literal>
    <asp:Literal ID="LiteralEventsMessage" runat="server">Look for the WebAppLog.log file in the main project folder.</asp:Literal>
    </form>
</body>
</html>
