using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
                    String text = String.Format("姓名:{0}, 身分證號:{1},系所代碼:{2}", myDataReader["姓名"].ToString(), myDataReader["身分證號"].ToString(), myDataReader["系所代碼"].ToString());
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
    
}