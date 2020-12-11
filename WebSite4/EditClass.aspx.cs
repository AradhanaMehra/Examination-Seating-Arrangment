using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.SessionState;

public partial class EditClass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit(object sender, EventArgs e)
    {
        String id= Request.QueryString["ID"];
        
       
        try
        {
            if (Text1.Text == " " || Text2.Text == " " || Text3.Text == " " || Text4.Text == " ")
            {
                Label1.Text = "Please Fill in all the required information";
            }
            con.Open();
            String seats = Text4.Text;
            int counter = 0;
            for (int i = 0; i < seats.Length; i++)
            {
                if (seats[i].Equals(','))
                {
                    counter++;
                }

            }
            int columns = int.Parse(Text3.Text);
            int totalseats = int.Parse(Text2.Text);
            int[] arr = Array.ConvertAll(seats.Split(','), int.Parse);

            int sum = arr.Sum();


            if (sum != totalseats)
            {
                Label1.Text += "Number of seats and number of seats per column do not match";
            }

            else if (counter != columns - 1)
            {
                Label1.Text += "Please check Seats per column entered";

            }

            else
            {
                String query2 = "Update Classroom set Name='"+Text1.Text+ "',Total_seats='" + Text2.Text + "',Number_of_Columns='" + Text3.Text + "',Seats_per_column='" + Text4.Text + "',Floor='" + Text5.Text + "',Section='" + Text6.Text + "',Building='" + Text7.Text + "' where ID='" + id+"'";
                SqlCommand cmd = new SqlCommand(query2, con);
             


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
        catch (Exception ex)
        {
            Label1.Text = ex.Message.ToString();
        }
    }
}