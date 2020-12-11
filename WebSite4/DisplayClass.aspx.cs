using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DisplayClass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            BOX1.Style.Add("display", "none");
            BOX2.Style.Add("display", "none");
            BOX3.Style.Add("display", "none");
            String id = Request.QueryString["ID"];
            int ID = int.Parse(id);
            
            try
            {
                con.Open();
                String query1 = "Select Number_of_Columns from Classroom where ID ='" + ID + "'";
                
                SqlCommand cmd = new SqlCommand(query1, con);
                String number = cmd.ExecuteScalar().ToString();

                String query2 = "Select Seats_per_column from Classroom where ID ='" + ID + "'";
               
                SqlCommand cmd1 = new SqlCommand(query2, con);
                String seatscols = cmd1.ExecuteScalar().ToString();
                BOX1.Text = number;
                BOX2.Text = seatscols;
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message.ToString();
            }

            con.Close();
            BOX1.Enabled = false;
            BOX2.Enabled = false;


        }

    }
   
    
}