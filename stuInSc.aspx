<%@ Page Language="C#"Debug="true" AutoEventWireup="true" CodeFile="stuInSc.aspx.cs" Inherits="stuInSc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
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
                    姓名：</td>
                <td style="width: 100px">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                        DataTextField="stud_name" DataValueField="stud_name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList></td>
                <td style="width: 100px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:manageConnectionString %>"
                        SelectCommand="SELECT [stuscore], [stud_name] FROM [stuscore]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    成绩：</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtScore" runat="server"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                    <asp:Button ID="btnOk" runat="server" Text="确定" OnClick="btnOk_Click" />
                    <asp:Button ID="Button1" runat="server" Text="取消" OnClick="Button1_Click" /></td>
                <td style="width: 100px">
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
