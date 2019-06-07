using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // connection string
        string strConn = "Data Source=140.123.174.54 ; Initial Catalog=DB605546001; User ID=DB605546001; Password=goydon6a@gmail.com;";
        //建立連接
        SqlConnection myConn = new SqlConnection(strConn);
        //打開連接
        myConn.Open();
        if (TextBox1.Text != "")
        {
            //set SQL command string
            string strSQL = @"select*from HW_WebAccounting1 where [日期] ='" + TextBox1.Text + "'";

            //prepare connection and SQL statement
            SqlCommand myCommand = new SqlCommand(strSQL, myConn);
            SqlDataReader myDataReader = myCommand.ExecuteReader();
            Label2.Text = "";
            while (myDataReader.Read())
                if (myDataReader["日期"].ToString() != "")
                {
                    String text = String.Format("名稱:{0}, 日期:{1},金額:{2}", myDataReader["名稱"].ToString(), myDataReader["日期"].ToString(), myDataReader["金額"].ToString());
                    Label2.Text += text;
                    Label2.Text += "<br />"; //跳行
                }

            if (Label2.Text == "")
            {
                Label2.Text = "查無結果";
            }

        }
        else
        {
            Label2.Text = "請輸入身分證號";
        }


    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        // connection string
        string strConn = "Data Source=140.123.174.54 ; Initial Catalog=DB605546001; User ID=DB605546001; Password=goydon6a@gmail.com;";
        //建立連接
        SqlConnection myConn = new SqlConnection(strConn);
        //打開連接
        myConn.Open();
        if (TextBox2.Text != "" || TextBox3.Text != "" || TextBox4.Text != "")
        {
            SqlCommand cmd = new SqlCommand("insert into HW_WebAccounting1" + "(名稱,日期,金額) values(@名稱,@日期,@金額)", myConn);
            cmd.Parameters.AddWithValue("@名稱", TextBox2.Text);
            cmd.Parameters.AddWithValue("@日期", TextBox3.Text);
            cmd.Parameters.AddWithValue("@金額", TextBox4.Text);
            cmd.ExecuteNonQuery();
            Label6.Text = "新增成功!!";

        }
        else
        {
            Label6.Text = "請輸入完整資料";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        // connection string
        string strConn = "Data Source=140.123.174.54 ; Initial Catalog=DB605546001; User ID=DB605546001; Password=goydon6a@gmail.com;";
        //建立連接
        SqlConnection myConn = new SqlConnection(strConn);
        //打開連接
        myConn.Open();
        if (TextBox2.Text != "" || TextBox3.Text != "" || TextBox4.Text != "")
        {
            SqlCommand cmd = new SqlCommand("insert into HW_WebAccounting1" + "(名稱,日期,金額) values(@名稱,@日期,@金額)", myConn);
            cmd.CommandText = "update HW_WebAccounting1 set 金額='" + TextBox5.Text + "'where 金額='" + TextBox4.Text + "'";
            cmd.Connection = myConn;
            cmd.ExecuteNonQuery();
            Label6.Text = "修改成功!!";

        }
        else
        {
            Label6.Text = "請輸入完整資料";
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        // connection string
        string strConn = "Data Source=140.123.174.54 ; Initial Catalog=DB605546001; User ID=DB605546001; Password=goydon6a@gmail.com;";
        //建立連接
        SqlConnection myConn = new SqlConnection(strConn);
        //打開連接
        myConn.Open();
        if (TextBox2.Text != "" || TextBox3.Text != "" || TextBox4.Text != "")
        {
            SqlCommand cmd = new SqlCommand("insert into HW_WebAccounting1" + "(名稱,日期,金額) values(@名稱,@日期,@金額)", myConn);
            cmd.CommandText = "delete from HW_WebAccounting1 where 名稱='" + TextBox2.Text + "'";
            cmd.CommandText = "delete from HW_WebAccounting1 where 日期='" + TextBox3.Text + "'";
            cmd.CommandText = "delete from HW_WebAccounting1 where 金額='" + TextBox4.Text + "'";

            cmd.Connection = myConn;
            cmd.ExecuteNonQuery();
            Label6.Text = "刪除成功!!";

        }
        else
        {
            Label6.Text = "請輸入完整資料";
        }
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
