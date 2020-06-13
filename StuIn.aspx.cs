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

public partial class StuIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["user_name"] == null)
        {
            Response.Write("<script>alert('请先登录再浏览')</script>");
            Server.Transfer("Default.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        db dbm = new db();
        string strInsert = "insert into student (stud_id,stud_name,sex,birthday,address,class_id) values('" + txtId.Text + "','" + txtName.Text + "','" + txtSex.Text + "','" + txtBir.Text + "','" + txtAdd.Text + "','" + txtClass.Text + "')";
        int i = dbm.InfoExec(strInsert);
        if (i > 0)
        {
            Response.Write("<script>alert('插入成功')</script>");
            Server.Transfer("Students.aspx");
        }
        else
            Response.Write("<script>alert('插入失败')</script>");
        Server.Transfer("Students.aspx");
    
    }
    protected void btnDe_Click(object sender, EventArgs e)
    {
        Server.Transfer("Students.aspx");
    }
}
