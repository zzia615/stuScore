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
using System.Data.SqlClient;

public partial class scoreDe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["user_name"] == null)
        {
            Response.Write("<script>alert('请先登录再浏览')</script>");
            Server.Transfer("Default.aspx");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Label1.Text = DropDownList1.Text;
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        string StrDelete = "delete from stuscore where id=" + DropDownList1.SelectedValue;
        db dbom = new db();
        int i = dbom.InfoExec(StrDelete);
        if (i > 0)
        {
            Response.Write("<script>alert('删除成功')</script>");
        }
        else
            Response.Write("<script>alert('删除失败')</script>");
        Server.Transfer("score.aspx");
    }
    protected void btnDe_Click(object sender, EventArgs e)
    {
        Server.Transfer("score.aspx");
    }
}
