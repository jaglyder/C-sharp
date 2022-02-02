<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejag9603.master" AutoEventWireup="true" CodeFile="Prep2A.aspx.cs" Inherits="MIS316_Prep2A" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            width: 49%;
        }
        .auto-style3 {
            width: 609px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="auto-style1">Colors</h1>
    <table class="auto-style2">
        <tr>
            <td class="auto-style3" style="vertical-align: top">
                <asp:RadioButtonList ID="rblColors" runat="server"  Width="362px" AutoPostBack="True" OnSelectedIndexChanged="rblColors_SelectedIndexChanged" BackColor="#CCCCCC" RepeatColumns="2">
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Green</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                    <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Yellow</asp:ListItem>
                    <asp:ListItem>Purple</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Button ID="btnRemoveSelected" runat="server" Text="Remove Selected" CausesValidation="False" OnClick="btnRemoveSelected_Click" Visible="False" />
                <br />
                
            </td>
            <td class="auto-style4" style="vertical-align: top">Add New Color: <asp:TextBox ID="txtNewColor" runat="server" ></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvNewColor" runat="server" ControlToValidate="txtNewColor" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                &nbsp;<br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <br />
                <br />
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
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
</asp:Content>

