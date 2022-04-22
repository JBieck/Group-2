<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ProfilePage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style34 {
            text-align: center;
        }
        .auto-style35 {
            text-align: right;
        }
        .auto-style36 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style36">
            <h1 class="auto-style34" style="font-family: 'Leelawadee UI'; color: #9900CC">CollectR</h1>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Button ID="btnHome" runat="server" Text="Home" Width="176px" OnClick="btnHome_Click" BackColor="#6600CC" Font-Bold="True" Font-Names="Leelawadee UI" Font-Size="Medium" ForeColor="White" />
                        </td>
                    <td>&nbsp;</td>
                    <td class="auto-style35">
                        <asp:Button ID="lblLogout" runat="server" Text="Logout" Width="176px" OnClick="lblLogout_Click" BackColor="#6600CC" Font-Bold="True" Font-Names="Leelawadee UI" Font-Size="Medium" ForeColor="White" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" Height="50px" Width="125px">
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:ImageField DataImageUrlField="ImageURL">
                        <ControlStyle Height="95px" Width="95px" />
                        <ItemStyle Width="50px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="UserName" HeaderText="UserName:" SortExpression="UserName">
                    <HeaderStyle Font-Bold="False" Font-Names="Leelawadee UI" Font-Size="Medium" />
                    <ItemStyle Font-Bold="True" Font-Names="Leelawadee UI" Font-Size="Large" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email:" SortExpression="Email">
                    <HeaderStyle Font-Names="Leelawadee UI" Font-Size="Medium" />
                    <ItemStyle Font-Bold="True" Font-Names="Leelawadee UI" Font-Size="Large" />
                    </asp:BoundField>
                </Fields>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:DetailsView>
            <br />
            <div class="auto-style34">
                <br />
                        <asp:Button ID="btnCollections" runat="server" Text="Collections" Width="176px" OnClick="btnCollections_Click" BorderStyle="None" Font-Bold="False" Font-Names="Nirmala UI" Font-Overline="False" Font-Size="Small" ForeColor="#9900CC" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Friends" Width="176px" BorderStyle="None" Font-Names="Nirmala UI" ForeColor="#9900CC" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="lblPrivacy" runat="server" Text="Privacy Settings" Width="176px" BorderStyle="None" Font-Names="Nirmala UI" ForeColor="#9900CC" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnWishlist" runat="server" Text="Wishlist" Width="176px" OnClick="Button3_Click" BorderStyle="None" Font-Names="Nirmala UI" ForeColor="#9900CC" />
                        <br />
                <br />
            </div>
            <div class="auto-style36">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table style="width:100%;">
                    <tr>
                        <td>
                        <asp:TextBox ID="txtImageURLC" runat="server" Width="171px"></asp:TextBox>
                        <asp:Button ID="btnUpdateImage" runat="server" OnClick="Button4_Click" Text="Update Image URL" />
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style35">
                        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Account" />
                        </td>
                    </tr>
                </table>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT  [ImageURL], [Email], [UserName] FROM [Users] WHERE ([UserID] = @UserID)">
                <SelectParameters>
                    <asp:SessionParameter Name="UserID" SessionField="uid" />
                </SelectParameters>
            </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserID], [Email], [UserName], [ImageURL] FROM [Users] WHERE ([UserID] = @UserID)">
            <SelectParameters>
                <asp:SessionParameter Name="UserID" SessionField="uid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
