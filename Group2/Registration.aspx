<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Group2.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style6 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style7 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style8 {
            font-size: medium;
        }
        .auto-style9 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style6" style="font-family: 'Leelawadee UI'; color: #9900CC">CollectR</h1>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
            Sign Up Today!</p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
            &nbsp;</p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Label ID="Label2" runat="server" Text="Enter Email:" CssClass="auto-style8" Font-Bold="False" Font-Names="Leelawadee UI"></asp:Label>
                        <asp:Label ID="lblEmailError" runat="server" ForeColor="Red" CssClass="auto-style8"></asp:Label>
                    </p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
                        </p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Label ID="lblUsername" runat="server" Text="Enter Username:" CssClass="auto-style8" Font-Bold="False"></asp:Label>
                        <asp:Label ID="lblUserNameError" runat="server" ForeColor="Red" CssClass="auto-style8"></asp:Label>
                    </p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:TextBox ID="txtUserName" runat="server" OnTextChanged="txtUserName_TextChanged" Width="250px"></asp:TextBox>
                        </p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Label ID="lblPassword" runat="server" Text="Enter Password:" CssClass="auto-style8" Font-Bold="False"></asp:Label>
                        <asp:Label ID="lblPasswordError" runat="server" ForeColor="Red" CssClass="auto-style8"></asp:Label>
                    </p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                        </p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Label ID="lblPasswordConfirm" runat="server" Text="Confirm Password:" CssClass="auto-style8" Font-Bold="False"></asp:Label>
                        <asp:Label ID="lblPasswordConfirmError" runat="server" ForeColor="Red" CssClass="auto-style8"></asp:Label>
                    </p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                        </p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Button ID="btnJoin" runat="server" Text="Join" OnClick="btnJoin_Click" Width="150px" BackColor="#9900CC" Font-Bold="True" Font-Names="Malgun Gothic" Font-Size="Medium" ForeColor="White" Height="35px" />
                    </p>
        <p class="auto-style8" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
            &nbsp;</p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Already Have an Account?" CssClass="auto-style9"></asp:Label>
                    </p>
        <p class="auto-style7" style="font-family: 'Malgun Gothic'; color: #000000; font-weight: bold;">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" BackColor="#CC00FF" Font-Bold="True" Font-Names="Malgun Gothic" ForeColor="White" Height="30px" Width="100px" />
                    </p>
    </form>
</body>
</html>
