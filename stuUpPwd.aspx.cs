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

public partial class stuUpPwd : System.Web.UI.Page
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
        string strSel = "select user_password from users where user_name='" + DropDownList1.SelectedValue + "'";
        //DropDownList1.SelectedValue = Session["user_name"].ToString ;
        SqlCommand cmd = new SqlCommand(strSel, conn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        conn.Open();
        da.Fill(ds, "users");
　　　　conn.Close();
        txtPwd.Text = ds.Tables["users"].Rows[0][0].ToString();
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection();
        //conn.ConnectionString = "server=.\\sqlexpress;database=manage;uid=sa;pwd=sa123";

        conn.ConnectionString = db.conStr;
        string strUpdate = "update users set user_password='" + txtPwd.Text + "' where user_name='" + DropDownList1.SelectedValue + "'";
        if ( DropDownList1.SelectedValue != (string )Session["user_name"]) 
        {
            Response.Write("<script>alert('您无权修改别人的密码')</script>");
            Server.Transfer("stuUpPwd.aspx");
        }
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
        Server.Transfer("student.aspx");
    }
    protected void txtDele_Click(object sender, EventArgs e)
    {
        Server.Transfer("student.aspx");
    }
}
