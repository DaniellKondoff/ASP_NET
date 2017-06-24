<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dataSpurce.aspx.cs" Inherits="EFTest.dataSpurce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="EntityDataSource2" DataTextField="FirstName" DataValueField="Id"></asp:ListBox>
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=BioBakaryEntities" DefaultContainerName="BioBakaryEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Customers" EntityTypeFilter="Customer">
        </asp:EntityDataSource>
    </form>
</body>
</html>
