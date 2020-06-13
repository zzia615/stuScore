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

public partial class score : System.Web.UI.Page
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
            Response.Write("管理员" + Session["user_name"].ToString() + "欢迎光临");

            string strSel = "select * from stuscore";
            db dbcom = new db();
            DataSet ds = dbcom.GetDataset(strSel, "stuscore");
            GridView1.DataSource = ds.Tables["stuscore"];
            GridView1.DataBind();
        }
    }
    protected void btnR_Click(object sender, EventArgs e)
    {
        Server.Transfer("admin.aspx");
    }
}
