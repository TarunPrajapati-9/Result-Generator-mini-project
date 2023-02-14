<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Input.aspx.cs" Inherits="MiniProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link  rel="stylesheet" type="text/css" href="StyleSheet1.css"/>
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
        .auto-style6 {
            height: 36px;
        }
        .auto-style7 {
            height: 19px;
        }
        .auto-style10 {
            width: 563px;
            height: 650px;
        }
        .auto-style11 {
            width: 635px;
            height: 686px;
        }
        .auto-style13 {
            width: 579px;
            height: 637px;
        }
        .auto-style14 {
            height: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" GroupingText="Input Marks" BorderColor="#66FF33">
    <table class="auto-style13" style="border-style: double; text-align: center; background-color: #C0C0C0;" align="center">
        <caption>
            <p>
            </p>
            <tr>
                <td colspan="3" style="border-style: groove">Enter Marks</td>
            </tr>
            <tr>
                <td style="border-style: groove">ER No.</td>
                <td style="border-style: groove">
                    <asp:TextBox ID="er" runat="server" BorderStyle="Solid" Height="35px" Width="245px"></asp:TextBox>
                </td>
                <td style="border-style: groove">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="er" ErrorMessage="ER not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove">ASP.NET</td>
                <td style="border-style: groove">
                    <asp:TextBox ID="asp" runat="server" BorderStyle="Solid" Height="30px" Width="245px"></asp:TextBox>
                </td>
                <td style="border-style: groove">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="asp" ErrorMessage="Mark not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove">ENS</td>
                <td style="border-style: groove">
                    <asp:TextBox ID="ens" runat="server" BorderStyle="Solid" Height="30px" Width="245px"></asp:TextBox>
                </td>
                <td style="border-style: groove">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ens" ErrorMessage="Mark not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="border-style: groove">ICN</td>
                <td class="auto-style14" style="border-style: groove">
                    <asp:TextBox ID="icn" runat="server" BorderStyle="Solid" Height="30px" Width="245px"></asp:TextBox>
                </td>
                <td class="auto-style14" style="border-style: groove">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="icn" ErrorMessage="Mark not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove">JAVA</td>
                <td style="border-style: groove">
                    <asp:TextBox ID="java" runat="server" BorderStyle="Solid" Height="30px" Width="245px"></asp:TextBox>
                </td>
                <td style="border-style: groove">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="java" ErrorMessage="Mark not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border-style: groove">PROJECT</td>
                <td style="border-style: groove">
                    <asp:TextBox ID="prj" runat="server" BorderStyle="Solid" Height="30px" Width="245px"></asp:TextBox>
                </td>
                <td style="border-style: groove">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="prj" ErrorMessage="Mark not Enter!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="border-style: groove">
                    <asp:Button ID="Button1" runat="server" BorderStyle="Groove" Height="44px" OnClick="Button1_Click" Text="Submit" Width="177px" />
                </td>
            </tr>
        </caption>
</table>
    <p></p>
        </asp:Panel>
    <asp:Label ID="print" runat="server"></asp:Label>
    <br />
    <asp:Button ID="Button2" runat="server" Text="Show Result" Height="40px" OnClick="Button2_Click" Width="156px" />
    <asp:Panel ID="Panel2" runat="server" GroupingText="Result">
        <p></p>
        <table class="auto-style11" style="text-align: center; background-color: #C0C0C0; border-style: double">
            <tr>
                <td class="auto-style6" colspan="5" style="border-style: groove">Semester Examination</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="3" style="border-style: groove">Sem-5</td>
                <td class="auto-style6" colspan="2" style="border-style: groove">GradeSheet</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="3" style="border-style: groove">Enrollment No</td>
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
                <td style="border-style: groove">
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
                <td style="border-style: groove">
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
                <td style="border-style: groove">
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
                <td style="border-style: groove">
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
                <td style="border-style: groove">
                    <asp:Label ID="projectgrade" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-style: groove">Total</td>
                <td style="border-style: groove">500</td>
                <td style="border-style: groove">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                <td style="border-style: groove">&nbsp;</td>
            </tr>
         
            <tr>
                <td colspan="5" style="border-style: groove">
                    <asp:Button ID="Button3" runat="server" Height="52px" OnClick="Button3_Click" Text="Store " Width="180px" />
                </td>
            </tr>
        </table>
        <p></p>
    </asp:Panel>
</asp:Content>
