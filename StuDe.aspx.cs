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

public partial class StuDe : System.Web.UI.Page
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
        
        SqlConnection conn = new SqlConnection();
        //conn.ConnectionString = "server=.\\sqlexpress; database=manage;uid=sa;pwd=sa123";
        conn.ConnectionString = db.conStr;
        string strDel = "select * from student where stud_id=" + DropDownList1.SelectedValue;
        SqlCommand cmd = new SqlCommand(strDel, conn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        conn.Open();
        da.Fill(ds, "student");
        conn.Close();
        lblName.Text = ds.Tables["student"].Rows[0][1].ToString();
        lblSex.Text = ds.Tables["student"].Rows[0][2].ToString();
        lblBir.Text = ds.Tables["student"].Rows[0][3].ToString();
        lblAdd.Text = ds.Tables["student"].Rows[0][4].ToString();
        lblClass.Text = ds.Tables["student"].Rows[0][5].ToString();
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        string StrDelete = "delete from student where stud_id=" + DropDownList1.SelectedValue;
        db dbom = new db();
        int i = dbom.InfoExec(StrDelete);
        if (i > 0)
        {
            Response.Write("<script>alert('删除成功')</script>");
        }
        else
            Response.Write("<script>alert('删除失败')</script>");
        Server.Transfer("Students.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("Students.aspx");
    }
}
