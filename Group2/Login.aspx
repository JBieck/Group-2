<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Group2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 318px;
        }
        .auto-style8 {
            width: 318px;
            height: 30px;
        }
        .auto-style6 {
            width: 318px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style2 {
            width: 318px;
            height: 74px;
        }
        .auto-style3 {
            height: 74px;
        }
        .auto-style4 {
            width: 318px;
            height: 28px;
        }
        .auto-style5 {
            height: 28px;
        }
        .auto-style10 {
            width: 318px;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style20 {
            margin-left: 55px;
        }
         .auto-style30 {
            margin-left: 65px;
        }
        .auto-style31 {
            margin-left: 40px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblCollectR" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#9900CC" Text="CollectR" CssClass="auto-style20" Font-Names="Leelawadee UI"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">
                        <asp:Label ID="lblLogin" runat="server" CssClass="auto-style30" Font-Bold="True" Font-Names="Malgun Gothic" Text="Login" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">
                        <asp:Label ID="lblUsername" runat="server" Text="Enter Username:" Font-Names="Leelawadee UI"></asp:Label>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Enter Password:" Font-Names="Leelawadee UI"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtPassword" runat="server" CausesValidation="True" EnableTheming="True"></asp:TextBox>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#9900CC" CssClass="auto-style31" Font-Bold="True" Font-Names="Malgun Gothic" Width="100px" ForeColor="White" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2">
                        </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblSignUp" runat="server" Font-Bold="True" Text="Dont Have an Account Yet?" Font-Names="Leelawadee UI"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td aria-orientation="horizontal" class="auto-style5">
                        <asp:Button ID="btnSignUp" runat="server" Text="Sign Up!" CssClass="auto-style31" Width="100px" BackColor="#CC00FF" Font-Bold="True" ForeColor="White" />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
