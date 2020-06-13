<%@ Page Language="C#" Debug="true"AutoEventWireup="true" CodeFile="StuDe.aspx.cs" Inherits="StuDe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>删除学生信息</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 9px;
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
        <table style="text-align: center">
            <tr>
                <td style="width: 179px">
                    请选择要删除的学号：</td>
                <td style="width: 216px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                        DataTextField="stud_id" DataValueField="stud_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:manageConnectionString %>"
                        SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 179px">
                    学生名:&nbsp;</td>
                <td style="width: 216px">
                    <asp:Label ID="lblName" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 179px">
                    性别：</td>
                <td style="width: 216px">
                    <asp:Label ID="lblSex" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 179px">
                    出生日期</td>
                <td style="width: 216px">
                    <asp:Label ID="lblBir" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 179px">
                    住址：</td>
                <td style="width: 216px">
                    <asp:Label ID="lblAdd" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 179px">
                    班级号：</td>
                <td style="width: 216px">
                    <asp:Label ID="lblClass" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 179px">
                </td>
                <td style="width: 216px">
                    <asp:Button ID="btnOk" runat="server"  Text="确定" OnClick="btnOk_Click" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="取消" /></td>
            </tr>
        </table>
    
    </div>
            </td>
            <td>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/image/CAUPB1CO.jpg" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/image/2.jpg" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
