<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonnExmp.aspx.cs" Inherits="_04.ButtonsExample.ButtonnExmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Button ID="ButtonExample" 
            runat="server" 
            Text="Normal Button" 
            CommandName="ButtonNormalCmd" 
            OnClick="OnBtnClick" 
            OnCommand="OnCommand"/>
        <br />

        <asp:LinkButton ID="LinkButtonExample"
            runat="server"
            CommandName="LinkButtonCmd"
            OnClick="OnBtnClick"
            Text="Link Button"
            OnCommand="OnCommand"/>
        <br />


         <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
