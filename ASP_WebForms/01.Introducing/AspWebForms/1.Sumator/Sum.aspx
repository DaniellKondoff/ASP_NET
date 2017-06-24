<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sum.aspx.cs" Inherits="_1.Sumator.Sum" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="FirstLabel" runat="server" Text="FirstNumber"></asp:Label><asp:TextBox ID="TextBoxFirstNum" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="SecondLabel" runat="server" Text="SecondNumber"></asp:Label><asp:TextBox ID="TextBoxSecondNum" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="SumLabel" runat="server" Text="SumNums"></asp:Label><asp:TextBox ID="TextBoxSum" runat="server"></asp:TextBox>
</asp:Content>
