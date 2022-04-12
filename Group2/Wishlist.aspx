<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Wishlist.aspx.cs" Inherits="Group2.Wishlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style20 {
            margin-left: 55px;
        }
         .auto-style22 {
            width: 399px;
        }
        .auto-style25 {
            width: 310px;
        }
        .auto-style26 {
            text-align: center;
        }
        .auto-style27 {
            width: 310px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCollectR" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#9900CC" Text="CollectR" CssClass="auto-style20" Font-Names="Leelawadee UI"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnReturnProfile" runat="server" BackColor="#CCCCFF" Font-Bold="True" ForeColor="#9900CC" OnClick="btnReturnProfile_Click" Text="Profile" Width="90px" />
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="lblWishList" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#9900CC" Text="My Wishlist" CssClass="auto-style20" Font-Names="Leelawadee UI"></asp:Label>
                    </td>
                    <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <div class="auto-style26">
                            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="300px">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                            </asp:GridView>
                        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                        <div class="auto-style26">
                            <br />
                            <asp:Button ID="btnAddtoWL" runat="server" BackColor="#CCCCFF" Font-Bold="True" ForeColor="#9900CC" Text="Add" Width="66px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnEditWL" runat="server" BackColor="#CCCCFF" Font-Bold="True" ForeColor="#9900CC" Text="Edit" Width="69px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" BackColor="#CCCCFF" Font-Bold="True" ForeColor="#9900CC" Text="Remove" Width="86px" />
                        </div>
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
