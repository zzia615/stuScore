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

/// <summary>
/// db 的摘要说明
/// </summary>
public class db
{
    public static string conStr = "server=10.10.0.10,9443;database=manage;uid=sa;pwd=JL@881103l";
	public db()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public SqlConnection con()
    {
        SqlConnection conn = new SqlConnection();
        //conn.ConnectionString = "server=.\\sqlexpress;database=manage;uid=sa;pwd=sa123";
        //conn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\manage.mdf;Integrated Security=True;";
        conn.ConnectionString = conStr;
        return conn;
    }
    public DataSet GetDataset(string strSel, string tableName)
    {
        SqlConnection conn = con();
        SqlCommand cmd = new SqlCommand(strSel, conn);
        //SqlCommand cmd = new SqlCommand("select * from users where user_name='aa' and user_password='aa'", conn);
        
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        conn.Open();
        da.Fill(ds, tableName);
        conn.Close();
        return ds;
    }

    public int InfoExec(string strInsert)
    {
        SqlConnection conn = con();
        SqlCommand cmd = new SqlCommand(strInsert, conn);
        conn.Open();
        int i = cmd.ExecuteNonQuery();
        conn.Close();
        return i;
    }

}
