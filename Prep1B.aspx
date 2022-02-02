<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejag9603.master" AutoEventWireup="true" CodeFile="Prep1B.aspx.cs" Inherits="MIS316_Prep1B" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlName" runat="server">
    Your Name:
    <asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <br />
    Do you have any siblings?<br />
    <asp:RadioButton ID="rbSiblingsYes" runat="server" Text="Yes" GroupName="siblings" />
    <br />
    <asp:RadioButton ID="rbSiblingsNo" runat="server" Checked="True" OnCheckedChanged="RadioButton2_CheckedChanged" Text="No" GroupName="siblings" />
    <br />
    <br />
    <asp:Button ID="btnNameContinue" runat="server" Text="Continue" OnClick="btnNameContinue_Click" />
</asp:Panel>
<asp:Panel ID="pnlNumberofSiblings" runat="server" Visible="False">
    How many siblings do you have?
    <asp:TextBox ID="txtNumberOfSiblings" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvNumberOfSiblings" runat="server" ControlToValidate="txtNumberOfSiblings" ErrorMessage="*Required" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvNumberOfSiblings" runat="server" ControlToValidate="txtNumberOfSiblings" Display="Dynamic" ErrorMessage="*1-99" ForeColor="Red" MaximumValue="99" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
    <br />
    <br />
    <br />
    <asp:Button ID="btnSiblingsContinue" runat="server" Text="Continue" OnClick="btnSiblingsContinue_Click" />
    <br />
    <br />
</asp:Panel>
<p>
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

