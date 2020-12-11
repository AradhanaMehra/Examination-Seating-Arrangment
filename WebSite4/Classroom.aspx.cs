using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.SessionState;

public partial class Classroom : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit(object sender, EventArgs e)
    {
       try
        {
            if(Text1.Text==""|| Text2.Text == ""|| Text3.Text == ""|| Text4.Text=="")
            {
                Label1.Text = "Please Fill in all the required information";
            }
            con.Open();
            String seats = Text4.Text;
            int counter = 0;
            for (int i = 0; i < seats.Length; i++)
            {
                if(seats[i].Equals(','))
                {
                    counter++;
                }

            }
            int columns = int.Parse(Text3.Text);
            int totalseats = int.Parse(Text2.Text);
            int[] arr= Array.ConvertAll(seats.Split(','),int.Parse);
           
            int sum = arr.Sum();
           

            if (sum!=totalseats)
            {
                Label1.Text += "Number of seats and number of seats per column do not match";
            }

           else if (counter != columns-1)
            {
                Label1.Text += "Please check Seats per column entered";

            }
            
            else
            {
                String query2 = "Insert into Classroom (Name,Total_seats,Number_of_Columns,Seats_per_column,Floor,Section,Building) values (@a,@b,@c,@d,@e,@f,@g)";
                SqlCommand cmd = new SqlCommand(query2, con);
                cmd.Parameters.AddWithValue("a", Text1.Text);
                cmd.Parameters.AddWithValue("b", Text2.Text);
                cmd.Parameters.AddWithValue("c", Text3.Text);
                cmd.Parameters.AddWithValue("d", Text4.Text);
                cmd.Parameters.AddWithValue("e", Text5.Text);
                cmd.Parameters.AddWithValue("f", Text6.Text);
                cmd.Parameters.AddWithValue("g", Text7.Text);
                

                cmd.ExecuteNonQuery();
                Session["Columns"] = Text3.Text;
                Session["Seats"] = Text4.Text;
                //HttpCookie cName1 = new HttpCookie("Columns");
                //HttpCookie cName2 = new HttpCookie("Seats");
                //cName1.Value = Text3.Text;
                //cName2.Value = Text4.Text;
                //Response.Cookies.Add(cName1);
                //Response.Cookies.Add(cName2);
                Response.Redirect("CreateClassroom1.aspx");
                
            }
        }
        catch(Exception ex)
        {
            Label1.Text = ex.Message.ToString();
        }
    }
}