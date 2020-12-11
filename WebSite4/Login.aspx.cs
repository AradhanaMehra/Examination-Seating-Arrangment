using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");

   
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    public void Check_Login(object sender, EventArgs e)
    {
        try
        {


            
            con.Open();
            String query = "select count(*) from SignUp where Username='" + txtBox1.Text + "'and Password='" + txtBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            String output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                Response.Redirect("Homepage.aspx");
            }

            else
            {
                Label1.Text = "UserId & Password Is not correct Try again..!!";

            }
           

        }

        catch (Exception ex)
        {
            Label1.Text = ex.Message;

        }
       
    }

    
    
}