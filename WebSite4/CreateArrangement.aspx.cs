using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateArrangement : System.Web.UI.Page
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

            string com1 = "Select * from Classroom";
            SqlDataAdapter adpt1 = new SqlDataAdapter(com1, con);
            DataTable dt1 = new DataTable();
            adpt1.Fill(dt1);
            DropDownList2.DataSource = dt1;
            DropDownList2.DataBind();
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "Name";
            DropDownList2.DataBind();
           
        }
    }
    protected void btnsubmit1(object sender, EventArgs e)
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
            while(rdr2.Read())
            {
            add_arr[i]= rdr2["UID"].ToString();
            //Label1.Text += rdr2["UID"].ToString();
            i++;

        }
        rdr2.Close();
        string result = string.Join(",", add_arr);
       // Label1.Text += result;
            Session["IDs"] = result;
            String query4 = "Select Total_seats from Classroom where Name='" + DropDownList2.SelectedValue + "'";
            SqlCommand cmd4 = new SqlCommand(query4, con);
            int seats = (int)cmd4.ExecuteScalar();

            String query5 = "Select Number_of_Columns from Classroom where Name='" + DropDownList2.SelectedValue + "'";
            SqlCommand cmd5 = new SqlCommand(query5, con);
            int cols = (int)cmd5.ExecuteScalar();
            Session["Totalcols"] = cols;

            String query6 = "Select Seats_per_column from Classroom where Name='" + DropDownList2.SelectedValue + "'";
            SqlCommand cmd6 = new SqlCommand(query6, con);
            String seatspercols = cmd6.ExecuteScalar().ToString();
            Session["seatspercolumn"] = seatspercols;
           

            if (count > seats)
            {
                Label1.Text += "Not Enough Seats in the classroom";
            }
      else
        {
            Response.Redirect("Arrangement.aspx");
        }
           



        
      
    
     }
}