<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="MiniProject.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link  rel="stylesheet" type="text/css" href="StyleSheet1.css"/>
    <style type="text/css">
        .auto-style5 {
            width: 253px;
        }
        .auto-style6 {
            height: 26px;
            width: 253px;
        }
        .auto-style9 {
            width: 561px;
            height: 488px;
        }
    .auto-style10 {
        width: 662px;
        height: 913px;
    }
        .auto-style11 {
            width: 762px;
            height: 1316px;
        }
        .auto-style12 {
            height: 61px;
        }
        .auto-style13 {
            width: 606px;
            height: 896px;
        }
        .auto-style20 {
            height: 14px;
            width: 156px;
        }
        .auto-style29 {
            height: 11px;
        }
        .auto-style31 {
            width: 227px;
            height: 17px;
        }
        .auto-style32 {
            height: 17px;
            width: 245px;
        }
        .auto-style33 {
            height: 17px;
        }
        .auto-style35 {
            width: 227px;
            height: 23px;
        }
        .auto-style36 {
            height: 23px;
            width: 245px;
        }
        .auto-style37 {
            height: 23px;
        }
        .auto-style38 {
            height: 14px;
        }
        .auto-style39 {
            height: 14px;
            width: 245px;
        }
        .auto-style40 {
            height: 18px;
        }
        .auto-style41 {
            width: 227px;
            height: 18px;
        }
        .auto-style42 {
            height: 18px;
            width: 245px;
        }
        .auto-style43 {
            height: 20px;
        }
        .auto-style44 {
            width: 227px;
            height: 20px;
        }
        .auto-style45 {
            height: 20px;
            width: 245px;
        }
        .auto-style47 {
            height: 19px;
        }
        .auto-style48 {
            width: 227px;
            height: 19px;
        }
        .auto-style49 {
            height: 19px;
            width: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:Panel ID="Panel1" runat="server" GroupingText="Update Marks">
            <table class="auto-style13" style="border-style: double; text-align: center; background-color: #C0C0C0;" align="center">
        <caption>
            <p>
            </p>
            <tr>
                <td colspan="3" style="border-style: groove" class="auto-style37">Update Marks</td>
            </tr>
            <tr>
                <td style="border-style: groove" class="auto-style47">ER No.</td>
                <td style="border-style: groove" class="auto-style48">
                    <asp:TextBox ID="er" runat="server" BorderStyle="Solid" Height="35px" Width="245px"></asp:TextBox>
                </td>
                <td class="auto-style49" style="border-style: groove">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="er" ErrorMessage="ER not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove" class="auto-style43">ASP.NET</td>
                <td style="border-style: groove" class="auto-style44">
                    <asp:TextBox ID="asp" runat="server" BorderStyle="Solid" Height="30px" Width="245px"></asp:TextBox>
                </td>
                <td class="auto-style45" style="border-style: groove">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="asp" ErrorMessage="Mark not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove" class="auto-style40">ENS</td>
                <td style="border-style: groove" class="auto-style41">
                    <asp:TextBox ID="ens" runat="server" BorderStyle="Solid" Height="30px" Width="245px"></asp:TextBox>
                </td>
                <td class="auto-style42" style="border-style: groove">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ens" ErrorMessage="Mark not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style38" style="border-style: groove">ICN</td>
                <td class="auto-style20" style="border-style: groove">
                    <asp:TextBox ID="icn" runat="server" BorderStyle="Solid" Height="30px" Width="245px"></asp:TextBox>
                </td>
                <td class="auto-style39" style="border-style: groove">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="icn" ErrorMessage="Mark not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove" class="auto-style37">JAVA</td>
                <td style="border-style: groove" class="auto-style35">
                    <asp:TextBox ID="java" runat="server" BorderStyle="Solid" Height="30px" Width="245px"></asp:TextBox>
                </td>
                <td class="auto-style36" style="border-style: groove">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="java" ErrorMessage="Mark not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove" class="auto-style33">PROJECT</td>
                <td style="border-style: groove" class="auto-style31">
                    <asp:TextBox ID="prj" runat="server" BorderStyle="Solid" Height="30px" Width="245px"></asp:TextBox>
                </td>
                <td class="auto-style32" style="border-style: groove">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="prj" ErrorMessage="Mark not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="border-style: groove" class="auto-style29">
                    <asp:Button ID="Button1" runat="server" BorderStyle="Groove" Height="44px" OnClick="Button1_Click" Text="Submit" Width="177px" />
                </td>
            </tr>
        </caption>
</table>
    <p></p>
        </asp:Panel>
        <br />
        <asp:Label ID="Label8" runat="server"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Go Back to Update" OnClick="Button2_Click" BorderStyle="Groove" Height="45px" Width="250px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click1" Text="Show Updated Gradesheet" Height="45px" Width="250px" BorderStyle="Groove" />
        <asp:Panel ID="Panel2" runat="server">
             <p>
                 
                 &nbsp;</p>
        <table class="auto-style11" style="text-align: center; background-color: #C0C0C0; border-style: double">

            <tr>
                <td class="auto-style3" colspan="5" style="border-style: groove">Semester Examination</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="3" style="border-style: groove">Sem-5</td>
                <td class="auto-style6" colspan="2" style="border-style: groove">GradeSheet</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="3" style="border-style: groove">Enrollment No</td>
                <td class="auto-style6" colspan="2" style="border-style: groove">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="5"></td>
            </tr>
            <tr>
                <td class="auto-style6" style="border-style: groove">Subject Code</td>
                <td class="auto-style6" style="border-style: groove">Subject Name</td>
                <td class="auto-style6" style="border-style: groove">Total Marks</td>
                <td class="auto-style6" style="border-style: groove">Obtained Marks</td>
                <td class="auto-style6" style="border-style: groove">Grade</td>
            </tr>
            <tr>
                <td style="border-style: groove">3351603</td>
                <td style="border-style: groove">ASP.NET</td>
                <td style="border-style: groove">100</td>
                <td style="border-style: groove">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td style="border-style: groove" class="auto-style5">
                    <asp:Label ID="aspgrade" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove">3351602</td>
                <td style="border-style: groove">ENS</td>
                <td style="border-style: groove">100</td>
                <td style="border-style: groove">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td style="border-style: groove" class="auto-style5">
                    <asp:Label ID="ensgrade" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove">3351601</td>
                <td style="border-style: groove">ICN</td>
                <td style="border-style: groove">100</td>
                <td style="border-style: groove">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td style="border-style: groove" class="auto-style5">
                    <asp:Label ID="icngrade" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove">3350703</td>
                <td style="border-style: groove">JAVA</td>
                <td style="border-style: groove">100</td>
                <td style="border-style: groove">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td style="border-style: groove" class="auto-style5">
                    <asp:Label ID="javagrade" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove">3351605</td>
                <td style="border-style: groove">PROJECT</td>
                <td style="border-style: groove">100</td>
                <td style="border-style: groove">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
                <td style="border-style: groove" class="auto-style5">
                    <asp:Label ID="projectgrade" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-style: groove">Total</td>
                <td style="border-style: groove">500</td>
                <td style="border-style: groove">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                <td style="border-style: groove" class="auto-style5">&nbsp;</td>
            </tr>
           
            <tr>
                <td colspan="5" style="border-style: groove" class="auto-style12">
                    <asp:Button ID="Button3" runat="server" Height="49px"  Text="Store " Width="173px" OnClick="Button3_Click" BorderStyle="Groove" />
                </td>
            </tr>
        </table>
        <p></p>
        </asp:Panel>
    </div>
</asp:Content>
