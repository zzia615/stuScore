<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {}
        .style2
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style2">
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
                <td colspan="3">
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/stuUpPwd.aspx">修改密码</asp:LinkButton></td>
                <td class="style1">
                    <asp:LinkButton ID="lnkStuUp" runat="server" PostBackUrl="~/StuUp.aspx">修改个人资料</asp:LinkButton>
                </td>
                <td class="style1">
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/stuInSc.aspx">成绩查询</asp:LinkButton></td>
                <td style="width: 100px">
                    <asp:Button ID="btnR" runat="server" OnClick="btnR_Click" Text="退 出" /></td>
            </tr>
        </table>
    
    </div>
                </td>
                <td>
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/image/CAUPB1CO.jpg" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/image/2.jpg" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
