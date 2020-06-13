<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scoreUp.aspx.cs" Inherits="scoreUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>修改成绩信息</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body style="text-align: center">
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
        <table>
             <tr>
                <td style="width: 198px">
                    请选择要删除的成绩：</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                        DataTextField="stu" DataValueField="id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:manageConnectionString %>"
                        SelectCommand="SELECT [stud_name]+[class_name] as stu,id FROM [stuscore],[class] where [stuscore].[class_id]= [class].[class_id]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 198px">
                    分数：</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtScore" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 198px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click" Text="确定" />&nbsp;
                    <asp:Button ID="btnDe" runat="server" OnClick="btnDe_Click" Text="取消" /></td>
            </tr>
        </table>
    
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
    <div>
    
    </div>
    </form>
</body>
</html>
