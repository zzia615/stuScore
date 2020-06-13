<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>信息管理</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 184px;
        }
        .style3
        {
            width: 262px;
        }
        .style4
        {
            width: 361px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2" colspan="3">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/top.jpg" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Image ID="Image8" runat="server" ImageUrl="~/image/CAG9MNKD.jpg" />
            </td>
            <td class="style4">
    <div style="text-align: center">
        <table style="text-align: center">
            <tr>
                <td style="width: 100px">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Students.aspx">学生管理</asp:LinkButton></td>
                <td rowspan="4" style="width: 100px">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/class.aspx">班级管理</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/score.aspx">成绩管理</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 100px" rowspan="2">
                    <asp:Button ID="btnR" runat="server" OnClick="btnR_Click" Text="返 回" /></td>
            </tr>
            <tr>
                <td rowspan="1" style="width: 100px">
                </td>
            </tr>
        </table>
    
    </div>
            </td>
            <td>
                <asp:Image ID="Image7" runat="server" Height="145px" 
                    ImageUrl="~/image/CAUPB1CO.jpg" Width="163px" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/image/2.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
