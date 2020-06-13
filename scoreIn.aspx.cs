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

public partial class scoreIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["user_name"] == null)
        {
            Response.Write("<script>alert('请先登录再浏览')</script>");
            Server.Transfer("Default.aspx");
        }
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {

        db dbm = new db();
        string strInsert = "insert into stuscore (stud_id,stud_name,class_id,stuscore) values('" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.ToString() + "','"+DropDownList2.SelectedValue+"','"+txtScore.Text+"')";
        int i = dbm.InfoExec(strInsert);
        if (i > 0)
        {
            Response.Write("<script>alert('插入成功')</script>");
        }
        else
            Response.Write("<script>alert('插入失败')</script>");
        Server.Transfer("score.aspx");
    }
    protected void btnDe_Click(object sender, EventArgs e)
    {
        Server.Transfer("score.aspx");
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
