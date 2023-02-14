<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="MiniProject.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link  rel="stylesheet" type="text/css" href="StyleSheet1.css"/>
    <style type="text/css">
        .auto-style5 {
            width: 94%;
            height: 414px;
        }
        .auto-style6 {
            width: 1443px;
            height: 310px;
        }
        .auto-style7 {
            width: 311px;
        }
        .auto-style8 {
            height: 41px;
        }
    .auto-style10 {
        width: 527px;
        height: 288px;
    }
    .auto-style11 {
        height: 78px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10" align="center" style="background-color: #00CC00; text-align: center; border-style: double">
            <tr>
                <td colspan="2" class="auto-style3" style="border-style: groove"><h1>Result Generator</h1></td>
            </tr>
            <tr>
                <td class="auto-style6" style="border-style: groove"><h3>Enter Enrollment No.:<br /> (for delete data)</h3></td>
                <td style="border-style: groove" class="auto-style7">
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="270px" BorderStyle="Groove"></asp:TextBox>
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must Filled For Delete!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-style: groove" class="auto-style11">
                    <asp:Button ID="Button1" runat="server" BorderStyle="Groove" Text="Delete" OnClick="Button1_Click" Height="49px" Width="134px" />
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" GroupingText="Delete">
        <h3 style="font-family: Algerian; font-size: large">After Data deleting</h3>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <br />
        <asp:GridView ID="GridView2" runat="server"></asp:GridView>
    </asp:Panel>
</asp:Content>
