<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuIn.aspx.cs" Inherits="StuIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>插入学生信息</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 22px;
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
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/image/CAG9MNKD.jpg" />
            </td>
            <td>
    <div style="text-align: center">
        <table>
            <tr>
                <td style="width: 100px; height: 26px">
                    学号</td>
                <td style="width: 223px; height: 26px">
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px">
                    学生名:&nbsp;</td>
                <td style="width: 223px; height: 26px">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    性别：</td>
                <td style="width: 223px">
                    <asp:TextBox ID="txtSex" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    出生日期：</td>
                <td style="width: 223px">
                    <asp:TextBox ID="txtBir" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    住址：</td>
                <td style="width: 223px">
                    <asp:TextBox ID="txtAdd" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    班级号：</td>
                <td style="width: 223px">
                    <asp:TextBox ID="txtClass" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 223px; text-align: center;">
                    <asp:Button ID="btnIn" runat="server" OnClick="Button2_Click"
                        Text="插入" />
                    &nbsp; &nbsp;&nbsp; 
                    <asp:Button ID="btnDe" runat="server" PostBackUrl="~/Students.aspx"
                        Text="取消" OnClick="btnDe_Click" />
                    &nbsp;&nbsp; &nbsp; &nbsp;
                </td>
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
