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
                        <asp:Button ID="btnHome" runat="server" Text="Home" Width="176px" OnClick="btnHome_Click" />
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
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                                <asp:ImageField DataImageUrlField="ImageURL">
                                    <ControlStyle Height="200px" />
                                </asp:ImageField>
                            </Columns>
                        </asp:GridView>
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
                    <td class="auto-style33">
                        <asp:TextBox ID="txtImageURLC" runat="server" Width="171px"></asp:TextBox>
                        <asp:Button ID="btnUpdateImage" runat="server" OnClick="Button4_Click" Text="Update Image URL" />
                    </td>
                    <td class="auto-style30">
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style27">
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Account" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserID], [Email], [UserName], [ImageURL] FROM [Users] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="uid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
