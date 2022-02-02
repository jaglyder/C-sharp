<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejag9603.master" AutoEventWireup="true" CodeFile="MP1Bjag9603.aspx.cs" Inherits="MIS316_MP1Bjag9603" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 710px;
    }
    .auto-style2 {
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><em>Bagel Shop</em><span>&nbsp;</span>[Point of Sales System]</h1>
<asp:Panel ID="pnlCustomer" runat="server">
    Customer Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvCustomerName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    How Many Bagels?:&nbsp;
    <asp:TextBox ID="txtNumofBagels" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvHowMany" runat="server" ControlToValidate="txtNumofBagels" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    &nbsp;<asp:RangeValidator ID="rvfNumofBagels" runat="server" ControlToValidate="txtNumofBagels" ErrorMessage=" enter a whole number between 1-25" ForeColor="Red" MaximumValue="25" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
    <br />
    <br />
    <asp:RadioButton ID="rbDineIn" runat="server" GroupName="bagel sale" Text="Dine In (7% tax)" />
    <br />
    <asp:RadioButton ID="rbCarryOut" runat="server" Checked="True" GroupName="bagel sale" Text="Carry Out" />
    <br />
    <br />
    <asp:Button ID="btnStartOrder" runat="server" OnClick="StartOrder_Click" Text="Start Order" />
    <br />
</asp:Panel>
<asp:Panel ID="pnlDineorCarry" runat="server" Visible="False">
    <table>
        <tr>
            <td><strong>Order for:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
            <td>
                <asp:Label ID="lblOrderFor" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Order Type:</strong></td>
            <td>
                <asp:Label ID="lblOrderType" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Number of Bagels:</strong></td>
            <td>
                <asp:Label ID="lblBagelCount" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><strong>Base Price:</strong></td>
            <td>
                <asp:Label ID="lblBase" runat="server" Text="$2.00"></asp:Label>
            </td>
        </tr>
    </table>
    <strong>
    <br />
    Type of Bagel:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="rbPlain" runat="server" Checked="True" GroupName="TypeofBagel" Text="Plain" />
    &nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="rbWheat" runat="server" GroupName="TypeofBagel" Text="Wheat ($1.00)" />
    &nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="rbEverything" runat="server" GroupName="TypeofBagel" Text="Everything ($1.50)" />
    <br />
    <table>
        <tr>
            <td><strong>Additional Options: </strong>
                <asp:CheckBox ID="cbToasted" runat="server" Text="Toasted ($0.50)" />
                &nbsp;&nbsp;
                <asp:CheckBox ID="cbCreamCheese" runat="server" Text="Cream Cheese ($1.00)" />
                <br />
                <br />
                <table>
                    <tr>
                        <td class="auto-style1"><strong>
                            <br />
                            Payment Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                            <asp:RadioButton ID="rbCash" runat="server" Checked="True" GroupName="PaymentType" Text="Cash" />
                            <strong>&nbsp;&nbsp;&nbsp; </strong>
                            <asp:RadioButton ID="rbCredit" runat="server"
                                GroupName="PaymentType" Text="Credit" />
                            <br />
                            <br />
                           <span>Charge 7% Tax?&nbsp;
                            <asp:Label ID="lblChargeTax" runat="server"></asp:Label>
                            <br />
                            <br />
                            <asp:Button ID="btnFinishOrder" runat="server" OnClick="btnFinishOrder_Click" Text="Finish Order" />
                            <br />
                            </span></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
</asp:Panel>
    <asp:Panel ID="pnlFinishOrder" runat="server" Visible="False">
        <asp:Label ID="lbldineorcarry" runat="server"></asp:Label>
        &nbsp;order for <asp:Label ID="lblName" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblBagelCT" runat="server"></asp:Label>
        &nbsp;<asp:Label ID="lblTypeof" runat="server"></asp:Label>
        <br />
        <br />
        <span >&nbsp;</span><asp:Label ID="lblCashorCredit" runat="server"></asp:Label>
        <br />
        <br />
        <span >Subtotal: $<asp:Label ID="lblSubTotal" runat="server"></asp:Label>
        &nbsp;($<asp:Label ID="lblEach" runat="server"></asp:Label>
        &nbsp;each) Tax: $</span><asp:Label ID="lblTax" runat="server"></asp:Label>
        <br />
        <span >Total due:&nbsp;<b>$</b><asp:Label ID="lblTotal" runat="server" CssClass="auto-style2" Font-Bold="True"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnNextCustomer" runat="server" Text="Next Customer" OnClick="btnNextCustomer_Click" />
        </span>
    </asp:Panel>
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
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

