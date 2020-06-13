using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "用户登录界面";
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        if (txtName.Text == null || txtPwd.Text == null)
        {
            Response.Write("<script>alert('用户名密码不能为空')</script>");
        }
        else
        {
            string strSel = "select * from users where user_name='" + txtName.Text + "' and user_password='" + txtPwd.Text + "'";
            db dbcom = new db();
            DataSet ds = dbcom.GetDataset(strSel, "users");
            if (ds.Tables["users"].Rows.Count > 0)
            {
                Session["user_name"] = ds.Tables["users"].Rows[0][0];
                Session["user_lever"] = ds.Tables["users"].Rows[0][2];
                Response.Write("<script>alert('用户名登录成功')</script>");
                if ((int)Session["user_lever"] == 0)
                {
                    Server.Transfer("student.aspx");
                }
                else
                {
                    Server.Transfer("admin.aspx");
                }

            }
            else
            {
                Response.Write("<script>alert('登录失败')</script>");
            }

        }
    }
    protected void btnEsc_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtPwd.Text = "";
    }
}
