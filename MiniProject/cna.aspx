<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cna.aspx.cs" Inherits="MiniProject.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link  rel="stylesheet" type="text/css" href="StyleSheet1.css"/>
    <title></title>
    <script type="text/javascript">
        document.getElementById("#Button1").onclick(alert("Pranav gand"))
    </script>
</head>
<body style="height: 683px">
    <form id="form1" runat="server">
        <div  style="background-image: url('Pics/pexels-veeterzy-303383.jpg')" class="auto-style1" align="center">
            <asp:Panel ID="Panel1" runat="server" Height="614px">
            <h1>Create New Account</h1>
                <table class="auto-style1">
                    <tr>
                        <td>Username :</td>
                        <td>
                            <asp:TextBox ID="uname" runat="server" Height="30px" Width="233px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname" ErrorMessage="Enter Valid Username"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>E-Mail :</td>
                        <td>
                            <asp:TextBox ID="email" runat="server" Height="30px" Width="233px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Enter Valid Email"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Password :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="psw" runat="server" Height="30px" TextMode="Password" Width="233px"></asp:TextBox>
                        </td>
                        <td class="auto-style3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="psw" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm Password :</td>
                        <td>
                            <asp:TextBox ID="cpsw" runat="server" Height="30px" TextMode="Password" Width="233px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cpsw" ErrorMessage="Much Required this Field"></asp:RequiredFieldValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="psw" ControlToValidate="cpsw" ErrorMessage="Password Unmatched!"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="Button1" runat="server" Height="45px" OnClick="alert('Check')" Text="Create Account" Width="198px" />
                            <br />
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
        </div>
    </form>
</body>
</html>
