﻿using System;
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

public partial class stuInSc : System.Web.UI.Page
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
        string strSel = "select stuscore from stuscore where stud_name='" + DropDownList1.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(strSel, conn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        conn.Open();
        da.Fill(ds, "stuscore");
        conn.Close();
        //txtScore.Text = ds.Tables["stuscore"].Rows[0][3].ToString();
        txtScore.Text=ds.Tables["stuscore"].Rows[0][0].ToString();
    }
    protected void btnOk_Click(object sender, EventArgs e)
    {
        Server.Transfer("student.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("student.aspx");
    }
}
