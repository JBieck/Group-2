<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Collection.aspx.cs" Inherits="Group2.Collection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 716px;
        }

        .auto-style20 {
            margin-left: 55px;
        }
         .auto-style21 {
            width: 492px;
        }
        .auto-style22 {
            width: 492px;
            text-align: center;
        }
        .auto-style23 {
            font-family: "Leelawadee UI";
            font-weight: bold;
            font-size: larger;
            color: #9900CC;
        }
        .auto-style25 {
            width: 492px;
            text-align: center;
            color: #9900FF;
            height: 83px;
        }
        .auto-style26 {
            width: 716px;
            height: 83px;
        }
        .auto-style27 {
            height: 83px;
        }
        .auto-style28 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style28">
                <tr>
                    <td class="auto-style22">&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnProfileReturn" runat="server" BackColor="#CCCCFF" Font-Bold="True" OnClick="btnProfileReturn_Click" Text="Profile" />
&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCollectR" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#9900CC" Text="CollectR" CssClass="auto-style20" Font-Names="Leelawadee UI"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnLogout" runat="server" BackColor="#CCCCFF" Font-Bold="True" OnClick="btnLogout_Click" Text="Logout" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style23">My Collection</span></td>
                    <td class="auto-style1">
                        <br />
                        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Collections] ORDER BY [Acquisition] DESC"></asp:SqlDataSource>
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="CollectionID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" PageSize="6">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="ItemName" HeaderText="Item Name" SortExpression="ItemName">
                                <ControlStyle Width="250px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ManufacturedBy" HeaderText="Manufactured By" SortExpression="ManufacturedBy" />
                                <asp:BoundField DataField="CountryOfOrigin" HeaderText="Country Of Origin" SortExpression="CountryOfOrigin" />
                                <asp:BoundField DataField="Acquisition" DataFormatString="{0:d}" HeaderText="Acquisition" SortExpression="Acquisition" />
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
                    </td>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        Item Name<br />
                        <asp:TextBox ID="txtItemNameC" runat="server" Width="173px"></asp:TextBox>
                        <br />
                        <br />
                        Manufacturer<br />
                        <asp:TextBox ID="txtManufacturerC" runat="server" Width="178px"></asp:TextBox>
                        <br />
                        <br />
                        Country of Origin<br />
                        <asp:TextBox ID="txtCountryOriginC" runat="server" Width="174px"></asp:TextBox>
                        <br />
                        <br />
                        Date Acquired<br />
                        <asp:TextBox ID="txtDateAcqC" runat="server" Width="175px"></asp:TextBox>
                        <br />
                        <br />
                        Image URL<br />
                        <asp:TextBox ID="txtImageURLC" runat="server" Width="171px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="btnAddToColle" runat="server" BackColor="#CCCCFF" Font-Bold="True" OnClick="btnAddToColle_Click" Text="Add" Width="77px" />
                        <br />
                        <br />
                        <asp:Button ID="btnRemoveFromColle" runat="server" BackColor="#CCCCFF" Font-Bold="True" OnClick="btnRemoveFromColle_Click" Text="Remove" />
                    </td>
                    <td class="auto-style26"></td>
                    <td class="auto-style27">
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
