﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Students.aspx.cs" Inherits="Students" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>学生管理</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="3">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/top.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/image/CAG9MNKD.jpg" />
            </td>
            <td>
    <div style="text-align: center">
        <table>
            <tr>
                <td style="width: 100px">
                    <asp:LinkButton ID="lnkStuIn" runat="server" PostBackUrl="~/StuIn.aspx">插入学生信息</asp:LinkButton></td>
                <td rowspan="3" style="width: 100px">
                    &nbsp;<asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" AllowPaging="True" 
                        OnPageIndexChanging="GridView1_PageIndexChanging" AllowSorting="True" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:LinkButton ID="lnkStuDe" runat="server" PostBackUrl="~/StuDe.aspx">删除学生信息</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Button ID="btnR" runat="server" OnClick="btnR_Click" Text="返 回" /></td>
                <td rowspan="1" style="width: 100px">
                </td>
            </tr>
        </table>
    
    </div>
                </td>
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/image/CAUPB1CO.jpg" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/image/2.jpg" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
