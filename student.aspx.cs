using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["user_name"] == null)
        {
            Response.Write("<script>alert('请先登录再浏览')</script>");
            Server.Transfer("Default.aspx");
        }
        else
        {

            Response.Write("学生：" + Session["user_name"].ToString() + "欢迎光临！");

        }  
    }
    protected void btnR_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
}
