<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicAJAXForm.aspx.cs" Inherits="_01.DynamicFormAjax.DynamicAJAXForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>Dynamic Form with Partial Rendering - Example</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager" runat="server" />

        What is your favorite drink?<br />
        <asp:UpdatePanel ID="UpdatePanelFavoriteDrink" runat="server" class="panel"
            UpdateMode="Conditional">
            <ContentTemplate>
                <asp:RadioButton ID="RadioButtonBeer" runat="server" AutoPostBack="True"
                    Text="Beer" OnCheckedChanged="RadioButtonBeer_CheckedChanged"
                    GroupName="GroupDrinks" />
                <asp:RadioButton ID="RadioButtonWine" runat="server" AutoPostBack="True"
                    Text="Wine" OnCheckedChanged="RadioButtonWine_CheckedChanged"
                    GroupName="GroupDrinks" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />

        <asp:UpdatePanel ID="UpdatePanelBeersWines" runat="server">
            <ContentTemplate>
                <asp:Panel ID="PanelBeers" runat="server" Visible="false" class="panel">
                    Select your favorite beers:<br />
                    <asp:CheckBoxList ID="CheckBoxListBeers" runat="server" AutoPostBack="True"
                        OnSelectedIndexChanged="CheckBoxListBeers_SelectedIndexChanged">
                        <asp:ListItem Text="Ariana" />
                        <asp:ListItem Text="Zagorka" />
                        <asp:ListItem Text="Shoumensko" />
                    </asp:CheckBoxList>
                </asp:Panel>
                <asp:Panel ID="PanelWines" runat="server" Visible="false" class="panel">
                    Select your favorite wines:<br />
                    <asp:CheckBoxList ID="CheckBoxListWines" runat="server" AutoPostBack="True"
                        OnSelectedIndexChanged="CheckBoxListWines_SelectedIndexChanged">
                        <asp:ListItem Text="Merlo" />
                        <asp:ListItem Text="Cabernet Sauvignon" />
                    </asp:CheckBoxList>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />

        <asp:UpdatePanel ID="UpdatePanelResults" runat="server">
            <ContentTemplate>
                <asp:Panel ID="PanelResults" runat="server" Visible="false" class="panel">
                    Favorite drink: 
                    <asp:Literal ID="LiteralFavoriteDrink" runat="server" />
                    <br />
                    Selected drinks:
                    <asp:Literal ID="LiteralSelectedDrinks" runat="server" />
                    <br />
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel runat="server" UpdateMode="Conditional" ID="LastUpdatePanel">
            <ContentTemplate>
                I am the last update panel. Time updated: <%= DateTime.Now %>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
