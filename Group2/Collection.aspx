<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Collection.aspx.cs" Inherits="Group2.Collection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 510px;
            height: 223px;
        }

         .auto-style21 {
            width: 284px;
            height: 223px;
        }
        .auto-style25 {
            width: 284px;
            text-align: center;
            color: #9900FF;
            height: 83px;
        }
        .auto-style26 {
            width: 510px;
            height: 83px;
        }
        .auto-style27 {
            height: 83px;
        }
        .auto-style28 {
            width: 100%;
        }
        .auto-style30 {
            text-align: center;
        }
        .auto-style32 {
            height: 223px;
        }
        .auto-style33 {
            height: 45px;
        }
        .auto-style34 {
            width: 100%;
            text-align: center;
            color: #9900FF;
            height: 184px;
        }
        .auto-style36 {
            text-align: center;
            font-family: "Leelawadee UI";
            color: #000000;
            font-weight: bold;
            font-size: large;
        }
        .auto-style37 {
            text-align: left;
        }
        .auto-style38 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style30" style="font-family: 'Leelawadee UI'; color: #9900CC">CollectR</h1>
            <p class="auto-style30" style="font-family: 'Leelawadee UI'; color: #9900CC">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style37">
                        <asp:Button ID="btnProfileReturn" runat="server" BackColor="#CCCCFF" Font-Bold="True" OnClick="btnProfileReturn_Click" Text="Profile" Width="125px" />
                        </td>
                        <td>&nbsp;</td>
                        <td class="auto-style38">
                        <asp:Button ID="btnLogout" runat="server" BackColor="#CCCCFF" Font-Bold="True" OnClick="btnLogout_Click" Text="Logout" Width="125px" />
                        </td>
                    </tr>
                </table>
            </p>
            <p class="auto-style36">
                My Collection</p>
            <table class="auto-style28">
                <tr>
                    <td class="auto-style21">
                    </td>
                    <td class="auto-style1">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderWidth="2px" CellPadding="3" DataKeyNames="CollectionID" DataSourceID="SqlDataSource1" GridLines="None" PageSize="6" BorderStyle="Ridge" CellSpacing="1">
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
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" ForeColor="White" Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style32"></td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style26">
                        <table class="auto-style34">
                            <tr>
                                <td class="auto-style33">Item Name<br />
                        <asp:TextBox ID="txtItemNameC" runat="server" Width="100px"></asp:TextBox>
                                </td>
                                <td class="auto-style33">Manufacturer<br />
                        <asp:TextBox ID="txtManufacturerC" runat="server" Width="100px"></asp:TextBox>
                                </td>
                                <td class="auto-style33">Country of Origin<br />
                        <asp:TextBox ID="txtCountryOriginC" runat="server" Width="100px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Date Acquired<br />
                        <asp:TextBox ID="txtDateAcqC" runat="server" Width="100px"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                                <td>Image URL<br />
                        <asp:TextBox ID="txtImageURLC" runat="server" Width="100px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                        <asp:Button ID="btnAddToColle" runat="server" BackColor="#CCCCFF" Font-Bold="True" OnClick="btnAddToColle_Click" Text="Add" Width="77px" />
                                </td>
                                <td></td>
                                <td>
                        <asp:Button ID="btnRemoveFromColle" runat="server" BackColor="#CCCCFF" Font-Bold="True" OnClick="btnRemoveFromColle_Click" Text="Remove" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style27">
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Collections] ORDER BY [Acquisition] DESC" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    </form>
</body>
</html>
