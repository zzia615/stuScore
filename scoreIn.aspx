<%@ Page Language="C#" AutoEventWireup="true" CodeFile="scoreIn.aspx.cs" Inherits="scoreIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>插入成绩信息</title>
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
                <td style="width: 100px">
                    学生：</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                        DataTextField="stud_name" DataValueField="stud_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:manageConnectionString %>"
                        SelectCommand="SELECT stud_name,stud_id FROM student"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    班级：</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
                        DataTextField="class_name" DataValueField="class_id" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:manageConnectionString %>"
                        SelectCommand="SELECT class_name,class_id FROM [class]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    分数：</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtScore" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click" Text="确定" />
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
                    &nbsp;</td>
            </tr>
        </table>
    <div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/image/2.jpg" />
    
    </div>
    </form>
</body>
</html>
