﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="_01.HtmlServerControl.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <input id="TextField" type="text" runat="server" />
        <input id="ButtonSubmit" type="button"
            runat="server" value="Submit"
            onserverclick="ButtonSubmit_Click" />

        <div runat="server" id="divContainer">
            <input type="text" runat="server" />
            <input type="button" runat="server" value="Submit"
                onclick="btnClick();"
                onserverclick="Unnamed_ServerClick" />
        </div>
    </form>

    <script type="text/javascript">
        function btnClick(ev) {
            alert('hello from client click!');
        }
    </script>

</body>
</html>
