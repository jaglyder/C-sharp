<%@ Page Title="" Language="C#" MasterPageFile="~/MIS316/MasterPagejag9603.master" AutoEventWireup="true" CodeFile="MP2Ajag9603.aspx.cs" Inherits="MIS316_MP2Ajag9603" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
        .auto-style2 {
            text-decoration: underline;
        }
        .auto-style5 {
            height: 162px;
        }
        .auto-style6 {
            height: 161px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1><strong>Grade Summary System</strong><br />
    </h1>
<asp:Panel ID="pnlStudent" runat="server" Width="940px">
    <table>
        <tr>
            <td>First Name:&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfvFirstName0" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;</td>
        </tr>
        <tr>
            <td>Last Name:&nbsp;&nbsp;</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td>Major:</td>
            <td>
                <asp:DropDownList ID="ddlMajor" runat="server" CausesValidation="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Business Analytics">BA</asp:ListItem>
                    <asp:ListItem Value="Information Technology">IT</asp:ListItem>
                    <asp:ListItem Value="Management Infomation Systems">MIS</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvMajor" runat="server" ControlToValidate="ddlMajor" Display="Dynamic" ErrorMessage="* required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnContinue" runat="server" Text="Continue" />
    <br />
</asp:Panel>
    <br />
    <asp:Panel ID="pnlCourse" runat="server" Visible="False">
        <br />
        <h3><strong>
            <asp:Label ID="lblLastName" runat="server"></asp:Label>
            ,
            <asp:Label ID="lblFirstName" runat="server"></asp:Label>
            </strong>&nbsp;(<asp:Label ID="lblMajor" runat="server"></asp:Label>
            )</h3>
        <br />
        <br />
        <table class="auto-style6">
            <tr>
                <td class="auto-style5"><strong><span class="auto-style2">Course History</span><span> </span></strong><span class="auto-style2">
                    <asp:HyperLink ID="hlAddCourse" runat="server" ForeColor="Blue">(Add a New Course)</asp:HyperLink>
                    </span>
                    <asp:RadioButtonList ID="rblCourseHistory" runat="server" AutoPostBack="True">
                    </asp:RadioButtonList>
                    <br />
                    <br />
                    <asp:Button ID="btnRemoveSelected" runat="server" Text="Remove Selected" />
                    <br />
                    <br />
                </td>
                <td class="auto-style5">
                    <asp:Panel ID="pnlAddCourses" runat="server" BackColor="#FFFFD2" Height="141px" Visible="False">
                        <table>
                            <tr>
                                <td>Course Prefix:</td>
                                <td>
                                    <asp:TextBox ID="txtCoursePrefix" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCoursePrefix" runat="server" ControlToValidate="txtCoursePrefix" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Course Number:</td>
                                <td>
                                    <asp:TextBox ID="txtCourseNumber" runat="server" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvCourseNumber" runat="server" ControlToValidate="txtCourseNumber" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>Grade Earned:</td>
                                <td>
                                    <asp:DropDownList ID="ddlGradeEarned" runat="server" AutoPostBack="True">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>A</asp:ListItem>
                                        <asp:ListItem>A-</asp:ListItem>
                                        <asp:ListItem>B+</asp:ListItem>
                                        <asp:ListItem>B</asp:ListItem>
                                        <asp:ListItem>B-</asp:ListItem>
                                        <asp:ListItem>C+</asp:ListItem>
                                        <asp:ListItem>C-</asp:ListItem>
                                        <asp:ListItem>D+</asp:ListItem>
                                        <asp:ListItem>D</asp:ListItem>
                                        <asp:ListItem>D-</asp:ListItem>
                                        <asp:ListItem>F</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvGradeEarned" runat="server" ControlToValidate="ddlGradeEarned" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br />
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                                    &nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <h4 class="auto-style2">Summary</h4>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Number of Courses:</td>
                <td>
                    <asp:Label ID="lblNumberofCourses" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Current GPA:</td>
                <td>
                    <asp:Label ID="lblGPA" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Total Credits:</td>
                <td>
                    <asp:Label ID="lblCredits" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        * assuming all courses are three credits<br />
        <br />
        <asp:LinkButton ID="lbStartOver" runat="server">Start Over</asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
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
    <p class="auto-style1">
    </p>
    <p>
    </p>
</asp:Content>

