<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Group2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 291px;
        }
        .auto-style3 {
            width: 100%;
            margin-bottom: 291px;
        }
        .auto-style4 {
            height: 291px;
            width: 450px;
        }
        .auto-style5 {
            height: 291px;
            width: 253px;
        }
        .auto-style6 {
            height: 291px;
            text-align: center;
        }
        .auto-style7 {
            height: 291px;
            width: 253px;
            text-align: center;
        }
        .auto-style8 {
            height: 291px;
            width: 450px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style6">
                        <asp:ImageButton ID="imgProfile" runat="server" Height="75px" OnClick="ImageButton1_Click" Width="75px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style8">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="456px">
                            <Columns>
                                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Content" HeaderText="Post" SortExpression="Content" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Collections" />
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPost" runat="server" Width="431px"></asp:TextBox>
                        <asp:Button ID="btnPost" runat="server" OnClick="btnPost_Click" Text="Post" Width="440px" />
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT  [UserName], [Date], [Content]
FROM [Posts], [Users]
WHERE Users.UserID = Posts.UserID;"></asp:SqlDataSource>
    </form>
</body>
</html>
