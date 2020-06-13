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


public partial class StuUp : System.Web.UI.Page
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

        //conn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DtaDirectory|\manage.mdf;Integrated Security=True;User Instance=True";
        conn.ConnectionString = db.conStr;

        string strSel = "select * from student where stud_id= " + DropDownList1.SelectedValue;
        SqlCommand cmd = new SqlCommand(strSel, conn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        conn.Open();
        da.Fill(ds, "student");
        conn.Close();
        txtName.Text = ds.Tables["student"].Rows[0][1].ToString();
        txtSex.Text = ds.Tables["student"].Rows[0][2].ToString();
        txtBir.Text=ds.Tables["student"].Rows[0][3].ToString();
        txtAdd.Text=ds.Tables["student"].Rows[0][4].ToString();
        txtClass.Text = ds.Tables["student"].Rows[0][5].ToString();
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        //conn.ConnectionString = "server=.\\sqlexpress;database=manage;uid=sa;pwd=sa123";

        conn.ConnectionString = db.conStr;
        string strUpdate = "update student set stud_name='" + txtName.Text + "',sex='" + txtSex.Text + "',birthday='" + txtBir.Text + "',address='" + txtAdd.Text + "',class_id='" + txtClass.Text + "' where stud_id=" + DropDownList1.SelectedValue;
        if (DropDownList1.SelectedValue != (string)Session["user_name"])
        {
            Response.Write("<script>alert('您无权修改别人的信息')</script>");
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
        Server.Transfer("Student.aspx");
    }
    protected void btnDe_Click(object sender, EventArgs e)
    {
        Server.Transfer("Student.aspx");
    }
}
