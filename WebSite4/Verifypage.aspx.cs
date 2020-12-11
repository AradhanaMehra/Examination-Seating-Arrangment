using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Verifypage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void MyAccount(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        try
        {
            

            if ((!string.IsNullOrEmpty(Request.QueryString["UserID"])))
            {   //approve account by setting Is_Approved to 1 i.e. True in the sql server table
                cmd = new SqlCommand("UPDATE SignUp SET Verified=1 WHERE Username=@UserID", con);
                cmd.Parameters.AddWithValue("@UserID", Request.QueryString["UserID"]);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();
                Label1.Text += "Account verified !! You can <a href='Login.aspx'>Login</a> now!";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            return;
        }
        finally
        {
            con.Close();
            cmd.Dispose();
        }
    }


}