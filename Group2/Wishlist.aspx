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
        .auto-style28 {
            text-align: center;
            height: 449px;
            width: 430px;
        }
        .auto-style29 {
            color: #6600CC;
            text-decoration: underline;
        }
        .auto-style30 {
            color: #6600CC;
        }
        .auto-style31 {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCollectR" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#9900CC" Text="CollectR" CssClass="auto-style20" Font-Names="Leelawadee UI"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnReturnProfile" runat="server" BackColor="#CCCCFF" Font-Bold="True" ForeColor="#9900CC" OnClick="btnReturnProfile_Click" Text="Profile" Width="90px" />
                    </td>
                    <td class="auto-style22">
                        <asp:SqlDataSource ID="sqlDSWishList" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Wishlist] WHERE (([WishlistID] &gt; @WishlistID) AND ([ItemName] IS NOT NULL)) ORDER BY [DateRequested] DESC">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="0" Name="WishlistID" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblWishList" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#9900CC" Text="My Wishlist" CssClass="auto-style20" Font-Names="Leelawadee UI"></asp:Label>
                    </td>
                    <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">
                        <div class="auto-style26">
                            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="470px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="WishlistID" DataSourceID="sqlDSWishList" PageSize="6">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:BoundField DataField="DateRequested" DataFormatString="{0:d}" HeaderText="Date Added" SortExpression="DateRequested" />
                                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" SortExpression="ItemName" />
                                    <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
                                    <asp:BoundField DataField="CountryofOrigin" HeaderText="Country of Origin" SortExpression="CountryofOrigin" />
                                    <asp:ImageField DataImageUrlField="ImageURL" HeaderText="Image of Item">
                                        <ControlStyle Height="125px" />
                                    </asp:ImageField>
                                </Columns>
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
                        &nbsp;&nbsp;&nbsp;&nbsp;<div class="auto-style28">
                            <strong><span class="auto-style29">
                            <br />
                            </span></strong><span class="auto-style30">Name of Item</span><strong><span class="auto-style29"><br />
                            <asp:TextBox ID="txtItemNameWL" runat="server" Width="224px"></asp:TextBox>
                            <br />
                            <br />
                            </span></strong><span class="auto-style30">Item Manufacturer<br />
                            <asp:TextBox ID="txtManufacturererWL" runat="server" Width="224px"></asp:TextBox>
                            <br />
                            <br />
                            Item&#39;s Country of Origin<br />
                            <asp:TextBox ID="txtCountryOriginWL" runat="server" Width="226px"></asp:TextBox>
                            <br />
                            <br />
                            Item&#39;s Image URL<br />
                            <asp:TextBox ID="txtImageURLWL" runat="server" Width="221px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="btnAddtoWL" runat="server" BackColor="#CCCCFF" Font-Bold="True" ForeColor="#9900CC" Text="Add" Width="66px" OnClick="btnAddtoWL_Click" />
                            <br />
                            <br />
                            <asp:Button ID="btnRemoveFromWL" runat="server" OnClick="btnRemoveFromWL_Click1" Text="Button" />
                            <br />
                            <span class="auto-style31">*Only enter item name to remove from list*</span></span></div>
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
