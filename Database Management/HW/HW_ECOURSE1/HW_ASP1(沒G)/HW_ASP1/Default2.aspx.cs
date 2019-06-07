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
            string strSQL = @"select*from HW_ASP1 where [身分證號] ='" + TextBox1.Text + "'";

            //prepare connection and SQL statement
            SqlCommand myCommand = new SqlCommand(strSQL, myConn);
            SqlDataReader myDataReader = myCommand.ExecuteReader();
            Label2.Text = "";
            while (myDataReader.Read())
                if (myDataReader["身分證號"].ToString() != "")
                {
                    String text = String.Format("姓名:{0}, 身分證號:{1},系所代碼:{2},選修課程:{3},開課單位:{4}", myDataReader["姓名"].ToString(), myDataReader["身分證號"].ToString(), myDataReader["系所代碼"].ToString(), myDataReader["選修課程"].ToString(), myDataReader["開課單位"].ToString());
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
            SqlCommand cmd = new SqlCommand("insert into HW_ASP1" + "(姓名,身分證號,系所代碼,選修課程,開課單位) values(@姓名,@身分證號,@系所代碼,@選修課程,@開課單位)", myConn);
            cmd.Parameters.AddWithValue("@姓名", TextBox2.Text);
            cmd.Parameters.AddWithValue("@身分證號", TextBox3.Text);
            cmd.Parameters.AddWithValue("@系所代碼", TextBox4.Text);
            cmd.Parameters.AddWithValue("@選修課程", TextBox6.Text);
            cmd.Parameters.AddWithValue("@開課單位", TextBox7.Text);

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
            SqlCommand cmd = new SqlCommand("insert into HW_ASP1" + "(姓名,身分證號,系所代碼,選修課程,開課單位) values(@姓名,@身分證號,@系所代碼,@選修課程,@開課單位)", myConn);
            cmd.CommandText = "update HW_ASP1 set 選修課程='" + TextBox5.Text + "'where 選修課程='" + TextBox6.Text + "'";
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
            SqlCommand cmd = new SqlCommand("insert into HW_ASP1" + "(姓名,身分證號,系所代碼,選修課程,開課單位) values(@姓名,@身分證號,@系所代碼,@選修課程,@開課單位)", myConn);
            cmd.CommandText = "delete from HW_ASP1 where 姓名='" + TextBox2.Text + "'";
            cmd.CommandText = "delete from HW_ASP1 where 身分證號='" + TextBox3.Text + "'";
            cmd.CommandText = "delete from HW_ASP1 where 系所代碼='" + TextBox4.Text + "'";
            cmd.CommandText = "delete from HW_ASP1 where 選修課程='" + TextBox6.Text + "'";
            cmd.CommandText = "delete from HW_ASP1 where 開課單位='" + TextBox7.Text + "'";


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
