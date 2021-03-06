﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimerDemo.aspx.cs" Inherits="TimerDemo.TimerDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Site.css" rel="stylesheet" />
    <title>Timer - Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager" runat="server" /> 
         <p>This text is not updated by the partial rendering.</p>

        <asp:UpdatePanel runat='server' ID='UpdatePanelTime' UpdateMode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="TimerTimeRefresh" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                AJAX Timer updates per 3 seconds:
                <%= DateTime.Now.ToString("HH:mm:ss") %>
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:Timer ID="TimerTimeRefresh" runat="Server" Interval="3000" />
        <p>This text is also not updated.</p>
    </form>
</body>
</html>
