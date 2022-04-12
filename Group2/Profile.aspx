<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ProfilePage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 450px;
        }
        .auto-style25 {
            height: 184px;
        }
        .auto-style26 {
            height: 104px;
        }
        .auto-style27 {
            height: 94px;
        }
        .auto-style28 {
            width: 691px;
            height: 184px;
            text-align: right;
        }
        .auto-style20 {
            margin-left: 55px;
        }
         .auto-style29 {
            width: 691px;
            height: 104px;
        }
        .auto-style30 {
            width: 691px;
            height: 94px;
        }
        .auto-style31 {
            height: 184px;
            width: 430px;
        }
        .auto-style32 {
            height: 104px;
            width: 430px;
        }
        .auto-style33 {
            height: 94px;
            width: 430px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style31">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCollectR" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#9900CC" Text="CollectR" CssClass="auto-style20" Font-Names="Leelawadee UI"></asp:Label>
                        <br />
                        <br />
                        <asp:Image ID="imgProfileImage" runat="server" BorderStyle="Solid" ImageAlign="Middle" ImageUrl="~/Images/SelenePetIMG.jpg" Width="200px" Height="228px" />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style32">
                        <asp:Button ID="btnCollections" runat="server" Text="Collections" Width="176px" OnClick="btnCollections_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile" Width="176px" />
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="Friends" Width="176px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="lvlPrivacy" runat="server" Text="Privacy Settings" Width="176px" />
                        <br />
                        <br />
                        <asp:Button ID="Button3" runat="server" Text="Wishlist" Width="176px" OnClick="Button3_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="lblLogout" runat="server" Text="Logout" Width="176px" OnClick="lblLogout_Click" />
                    </td>
                    <td class="auto-style29">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style26"></td>
                </tr>
                <tr>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style30">
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style27"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
