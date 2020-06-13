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

public partial class scoreUp : System.Web.UI.Page
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
        
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        //conn.ConnectionString = "server=.\\sqlexpress;database=manage;uid=sa;pwd=sa123";
        conn.ConnectionString = db.conStr;

        string strUpdate = "update stuscore set stuscore ='" + txtScore.Text +  "' where id=" + DropDownList1.SelectedValue;
        SqlCommand cmd = new SqlCommand(strUpdate, conn);
        conn.Open();
        int i = cmd.ExecuteNonQuery();
        conn.Close();
        if (i > 0)
        {
            Response.Write("<script>alert('更新成功')</script>");
        }
        else
        {
            Response.Write("<script>alert('更新失败')</script>");
        }
        Server.Transfer("score.aspx");
    }
    protected void btnDe_Click(object sender, EventArgs e)
    {
        Server.Transfer("score.aspx");
    }
}
