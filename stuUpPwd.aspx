<%@ Page Language="C#"Debug="true" AutoEventWireup="true" CodeFile="stuUpPwd.aspx.cs" Inherits="stuUpPwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
    </style>
</head>
<body style="text-align: center">
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
        <table>
            <tr>
                <td style="width: 100px">
                    姓名：</td>
                <td style="width: 115px">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                        DataTextField="user_name" DataValueField="user_name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList></td>
                <td style="width: 100px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:manageConnectionString %>"
                        SelectCommand="SELECT [user_name] FROM [users] WHERE ([user_lever] = @user_lever)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Name="user_lever" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    密码：</td>
                <td style="width: 115px; height: 21px">
                    <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox></td>
                <td style="width: 100px; height: 21px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    </td>
                <td style="width: 115px; height: 21px">
                    <asp:Button ID="btnOk" runat="server" Text="确 定" OnClick="btnOk_Click" />
                    <asp:Button ID="txtDele" runat="server" Text="取 消" OnClick="txtDele_Click" /></td>
                <td style="width: 100px; height: 21px">
                </td>
            </tr>
        </table>
    
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
    <div>
    
    </div>
    </form>
</body>
</html>
