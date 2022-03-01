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
        .auto-style16 {
            height: 184px;
            width: 2px;
        }
        .auto-style18 {
            width: 2px;
            height: 94px;
        }
        .auto-style24 {
            width: 2px;
            height: 104px;
        }
        .auto-style25 {
            width: 225px;
            height: 184px;
        }
        .auto-style26 {
            width: 225px;
            height: 104px;
        }
        .auto-style27 {
            width: 225px;
            height: 94px;
        }
        .auto-style28 {
            width: 277px;
            height: 184px;
        }
        .auto-style29 {
            width: 277px;
            height: 104px;
        }
        .auto-style30 {
            width: 277px;
            height: 94px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style25">
                        <asp:Image ID="imgProfileImage" runat="server" BorderStyle="Solid" ImageAlign="Middle" ImageUrl="~/Images/el_arbol_de_la_vida-1600x1200.jpg" Width="254px" />
                        <br />
                        <br />
                        <asp:Button ID="btnChangeImage" runat="server" Text="Change Image" />
                    </td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style26">First Name:
                        <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                        <br />
                        <br />
                        Last Name:
                        <asp:Label ID="lblLastName" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:Button ID="btnCollections" runat="server" Text="Collections" Width="176px" />
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="Friends" Width="176px" />
                        <br />
                        <br />
                        <asp:Button ID="Button3" runat="server" Text="Wishlist" Width="176px" />
                        <br />
                    </td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style27">Username:
                        <asp:Label ID="lblUsername" runat="server"></asp:Label>
                        <br />
                        <br />
                        eMail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbleMail" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile" Width="176px" />
                        <br />
                        <br />
                        <asp:Button ID="lvlPrivacy" runat="server" Text="Privacy Settings" Width="176px" />
                        <br />
                        <br />
                        <asp:Button ID="lblLogout" runat="server" Text="Logout" Width="176px" />
                    </td>
                    <td class="auto-style18"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
