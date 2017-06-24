<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SayHello.aspx.cs" Inherits="_02.HelloAspnet.SayHello" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:PlaceHolder ID="PlaceholderHello" runat="server"></asp:PlaceHolder><br />
    <asp:Literal ID="TextBoxHello" runat="server" Text="Hello from ASPX code!"></asp:Literal><br />
    <asp:Literal ID="TextBoxAssembly" runat="server"></asp:Literal>
</asp:Content>


