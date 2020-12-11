using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

            con.Open();
            String query = "select count(*) from Examination";
            SqlCommand cmd = new SqlCommand(query, con);
            String output = cmd.ExecuteScalar().ToString();
            Label1.Text = output;

            String query1 = "select count(*) from Classroom";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            String output1 = cmd1.ExecuteScalar().ToString();
            Label2.Text = output1;

            String query2 = "select count(*) from CourseCreate";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            String output2 = cmd2.ExecuteScalar().ToString();
            Label3.Text = output2;

        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;

        }
        
    } }