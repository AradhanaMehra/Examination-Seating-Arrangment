using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class CreateExamination : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string com = "Select * from CourseCreate";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "Coursename";
            DropDownList1.DataValueField = "Coursename";
            DropDownList1.DataBind();
        }

    }
    protected void btnsubmit1(object sender, EventArgs e)
    {
        try
        {
            if (Text1.Text == "" || Text2.Text == "" || Text3.Text == "" || Text5.Text == ""||Text5.Text=="")
            {
                Label1.Text = "Please Fill in all the required information";
            }
            con.Open();
            String query2 = "Insert into Examination (NameOfExamination,Type,Date,Time,ExaminationCode,Course) values (@a,@b,@c,@d,@e,@f)";
            SqlCommand cmd = new SqlCommand(query2, con);
            String course= DropDownList1.SelectedValue;
            cmd.Parameters.AddWithValue("a", Text1.Text);
            cmd.Parameters.AddWithValue("b", Text2.Text);
            cmd.Parameters.AddWithValue("c", Text3.Text);
            cmd.Parameters.AddWithValue("d", Text4.Text);
            cmd.Parameters.AddWithValue("e", Text5.Text);
            cmd.Parameters.AddWithValue("f", course);
            cmd.ExecuteNonQuery();
        }
        catch(Exception ex)
        {
            Label1.Text= ex.Message.ToString();
        }
 }   }