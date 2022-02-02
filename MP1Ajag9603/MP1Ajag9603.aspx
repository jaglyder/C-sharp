<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejag9603.master" AutoEventWireup="true" CodeFile="MP1Ajag9603.aspx.cs" Inherits="MIS316_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:Label ID="lblValueA" runat="server"></asp:Label>
        <asp:TextBox ID="txtValueA" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblValueB" runat="server"></asp:Label>
        <asp:TextBox ID="txtValueB" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
        <asp:Label ID="lblAdd" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnSubtract" runat="server" Text="Subtract" OnClick="btnSubtract_Click" />
        <asp:Label ID="lblSubtract" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnMultiply" runat="server" Text="Multiply" OnClick="btnMultiply_Click" />
        <asp:Label ID="lblMultiply" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnDivide" runat="server" Text="Divide" OnClick="btnDivide_Click" />
        <asp:Label ID="lblDivide" runat="server"></asp:Label>
    </p>
    <asp:Button ID="btnComplete" runat="server" Text="Complete All Calculations" OnClick="btnComplete_Click" />
    <br />
    <br />
    <asp:Button ID="btnClear" runat="server" Text="Clear All" OnClick="btnClear_Click" />
</asp:Content>

