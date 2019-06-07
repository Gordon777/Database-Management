using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {


        string strConn = "Data Source=140.123.174.54 ; Initial Catalog=DB605546001; User ID=DB605546001; Password=goydon6a@gmail.com;";
        //建立連接
        SqlConnection myConn = new SqlConnection(strConn);
        //打開連接
        myConn.Open();
        String pname = "查詢路段時速"; ;
        SqlCommand com = new SqlCommand(pname, myConn);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@intersection_id", TextBox1.Text);//insert value
        com.Parameters.AddWithValue("@tollgate_id", TextBox2.Text);
        GridView1.EmptyDataText = "No Record Retrieved";
        GridView1.DataSource = com.ExecuteReader();
        GridView1.DataBind();
        myConn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string strConn = "Data Source=140.123.174.54 ; Initial Catalog=DB605546001; User ID=DB605546001; Password=goydon6a@gmail.com;";
        //建立連接
        SqlConnection myConn = new SqlConnection(strConn);
        //打開連接
        myConn.Open();
        String pname = "查詢當日天氣"; ;
        SqlCommand com = new SqlCommand(pname, myConn);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@date", TextBox3.Text);//insert value
        GridView2.EmptyDataText = "No Record Retrieved";
        GridView2.DataSource = com.ExecuteReader();
        GridView2.DataBind();
        myConn.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string strConn = "Data Source=140.123.174.54 ; Initial Catalog=DB605546001; User ID=DB605546001; Password=goydon6a@gmail.com;";
        //建立連接
        SqlConnection myConn = new SqlConnection(strConn);
        //打開連接
        myConn.Open();
        String pname = "查詢車輛時速"; ;
        SqlCommand com = new SqlCommand(pname, myConn);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@intersection_id", TextBox4.Text);//insert value
        com.Parameters.AddWithValue("@tollgate_id", TextBox5.Text);//insert value
        com.Parameters.AddWithValue("@車輛ID", TextBox6.Text);//insert value
        GridView3.EmptyDataText = "No Record Retrieved";
        GridView3.DataSource = com.ExecuteReader();
        GridView3.DataBind();
        myConn.Close();

    }
}