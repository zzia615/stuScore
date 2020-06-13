<%@ Page Language="C#" AutoEventWireup="true" CodeFile="classDe.aspx.cs" Inherits="classDe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>删除班级信息</title>
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
                <td style="width: 198px">
                    请选择要删除的班级编号：</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                        DataTextField="class_id" DataValueField="class_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:manageConnectionString %>"
                        SelectCommand="SELECT [class_id] FROM [class]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 198px">
                    班级名称：</td>
                <td style="width: 100px">
                    <asp:Label ID="Label1" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 198px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click" Text="确定" />&nbsp;
                    <asp:Button ID="btnDe" runat="server" OnClick="btnDe_Click" Text="取消" /></td>
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
