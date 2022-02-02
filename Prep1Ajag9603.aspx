<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejag9603.master" AutoEventWireup="true" CodeFile="Prep1Ajag9603.aspx.cs" Inherits="MIS316_Prep1ajag9603" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:TextBox ID="txtValueA" runat="server"></asp:TextBox>
        +<asp:TextBox ID="txtValueB" runat="server"></asp:TextBox>
        =<asp:Label ID="lblSum" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

