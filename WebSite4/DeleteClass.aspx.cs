using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteClass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void no(object sender, EventArgs e)
    {
        Response.Redirect("DeleteClassroom.aspx");
    }
    public void yes(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            String id = Request.QueryString["ID"];
            String query2 = "Delete from Classroom where ID='" + id + "'";
            SqlCommand cmd = new SqlCommand(query2, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("DeleteClassroom.aspx");
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message.ToString();
        }
    }
}