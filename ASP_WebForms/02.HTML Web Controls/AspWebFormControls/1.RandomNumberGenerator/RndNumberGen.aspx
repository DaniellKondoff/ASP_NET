<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RndNumberGen.aspx.cs" Inherits="_1.RandomNumberGenerator.RndNumberGen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <label for="MinNumber">MinNumber:</label>
        <input type="text" id="MinNumber" runat="server" /><br />
        <label for="MaxNumber">maxNumber:</label>
        <input type="text" id="MaxNumber" runat="server" /><br />
        <input type="submit" id="Submit" runat="server" onserverclick="Submit_ServerClick" />
        <br />
        <span id="Result" runat="server"></span>
    </form>
</body>
</html>
