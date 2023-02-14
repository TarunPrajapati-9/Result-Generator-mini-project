<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MiniProject.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link  rel="stylesheet" type="text/css" href="StyleSheet1.css"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1040px;
        }
        .auto-style2 {
            height: 231px;
            width: 690px;
        }
    </style>
</head>
<body style="background-color:aliceblue" >
        <form id="form1" runat="server">
        <div style="background-image: url('Pics/pexels-veeterzy-303383.jpg')" class="auto-style1" align="center">
            <asp:Panel ID="Panel1" runat="server" GroupingText="Login Page">
                <table class="auto-style2">
                    <tr>
                        <td>Username :</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="335px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name Not Matched"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Password :</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="38px" Width="335px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Incorrect!"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Login" Width="117px" />
                            <br />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/cna.aspx">Create New Account</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/fpwd.aspx">Forget Password</asp:HyperLink>
            </asp:Panel>
            </div>
    </form>
    
</body>
</html>
