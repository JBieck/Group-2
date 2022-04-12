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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="287px" ImageUrl="~/Images/SelenePetIMG.jpg" OnClick="ImageButton1_Click" Width="253px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True">
                            <Columns>
                                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Content" HeaderText="Post" SortExpression="Content" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Collections" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
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
