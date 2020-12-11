using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CreateArrangement1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string com = "Select * from Examination";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "NameOfExamination";
            DropDownList1.DataValueField = "NameOfExamination";
            DropDownList1.DataBind();

            string com1 = "Select * from Examination";
            SqlDataAdapter adpt1 = new SqlDataAdapter(com1, con);
            DataTable dt1 = new DataTable();
            adpt1.Fill(dt1);
            DropDownList3.DataSource = dt1;
            DropDownList3.DataBind();
            DropDownList3.DataTextField = "NameOfExamination";
            DropDownList3.DataValueField = "NameOfExamination";
            DropDownList3.DataBind();

            string com2 = "Select * from Classroom";
            SqlDataAdapter adpt2 = new SqlDataAdapter(com2, con);
            DataTable dt2 = new DataTable();
            adpt2.Fill(dt2);
            DropDownList2.DataSource = dt2;
            DropDownList2.DataBind();
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "Name";
            DropDownList2.DataBind();
            Label1.Style.Add("display", "none");
        }
    }
    protected void btnsubmit(object sender, EventArgs e)
    {

        String Exam = DropDownList1.SelectedValue;
        con.Open();
        String query1 = "Select Course from Examination where NameOfExamination ='" + Exam + "'";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        String course = cmd1.ExecuteScalar().ToString();


        String query2 = "Select count(*) from Course where Coursename='" + course + "'";
        SqlCommand cmd2 = new SqlCommand(query2, con);
        int count = (int)cmd2.ExecuteScalar();

        String query3 = "Select * from Course where Coursename='" + course + "'";

        SqlCommand cmd3 = new SqlCommand(query3, con);

        String[] add_arr = new String[count];
        //DataTable dt = new DataTable();
        SqlDataReader rdr2 = cmd3.ExecuteReader();
        SqlDataAdapter adapter = new SqlDataAdapter(cmd3);
        int i = 0;
        // adapter.Fill(dt);
        while (rdr2.Read())
        {
            add_arr[i] = rdr2["UID"].ToString();
            //Label1.Text += rdr2["UID"].ToString();
            i++;

        }
        rdr2.Close();
        string result = string.Join(",", add_arr);
        // Label1.Text += result;
        Session["IDs"] = result;


        String Exam1 = DropDownList3.SelectedValue;
       
        String query4 = "Select Course from Examination where NameOfExamination ='" + Exam1 + "'";
        SqlCommand cmd4 = new SqlCommand(query4, con);
        String course4 = cmd4.ExecuteScalar().ToString();


        String query5 = "Select count(*) from Course where Coursename='" + course4 + "'";
        SqlCommand cmd5 = new SqlCommand(query5, con);
        int count1 = (int)cmd5.ExecuteScalar();
        

        String query6 = "Select * from Course where Coursename='" + course4 + "'";

        SqlCommand cmd6 = new SqlCommand(query6, con);

        String[] add_arr1 = new String[count1];
        //DataTable dt = new DataTable();
        SqlDataReader rdr3 = cmd6.ExecuteReader();
        SqlDataAdapter adapter1 = new SqlDataAdapter(cmd6);
        int j = 0;
        // adapter.Fill(dt);
        while (rdr3.Read())
        {
            add_arr1[j] = rdr3["UID"].ToString();
            Label1.Text += rdr3["UID"].ToString();
            j++;

        }
        rdr3.Close();
        string result1 = string.Join(",", add_arr1);
        //Label1.Text += result;
        Session["ID1"] = result1;




        String query7 = "Select Total_seats from Classroom where Name='" + DropDownList2.SelectedValue + "'";
        SqlCommand cmd7 = new SqlCommand(query7, con);
        int seats = (int)cmd7.ExecuteScalar();

        String query8 = "Select Number_of_Columns from Classroom where Name='" + DropDownList2.SelectedValue + "'";
        SqlCommand cmd8 = new SqlCommand(query8, con);
        int cols = (int)cmd8.ExecuteScalar();
        Session["Totalcols"] = cols;

        String query9 = "Select Seats_per_column from Classroom where Name='" + DropDownList2.SelectedValue + "'";
        SqlCommand cmd9 = new SqlCommand(query9, con);
        String seatspercols = cmd9.ExecuteScalar().ToString();
        Session["seatspercolumn"] = seatspercols;


        if (count+count1 > seats)
        {
            Label1.Text += "Not Enough Seats in the classroom";
        }
        
        
         Response.Redirect("Arrangement1.aspx");
        

    }
}
