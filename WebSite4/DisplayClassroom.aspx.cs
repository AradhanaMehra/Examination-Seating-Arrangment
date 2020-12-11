using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DisplayClassroom : System.Web.UI.Page
{
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    StringBuilder htmlTable = new StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            BindData();
    }

    private void BindData()
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");

        SqlCommand cmd = new SqlCommand("SELECT * FROM Classroom", con);
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        htmlTable.Append("<table> ");

        htmlTable.Append("<tr><th>ID</th><th>Name</th><th>Total seats</th><th>Number of Columns</th><th>Seats per Column</th><th>Floor</th><th>Section</th><th>Building</th></tr>");

        if (!object.Equals(ds.Tables[0], null))
        {
            if (ds.Tables[0].Rows.Count > 0)
            {

                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {

                    htmlTable.Append("<tr>");
                    htmlTable.Append("<form runat='server' method=\"POST\" action=\\DisplayClass.aspx?id=" + ds.Tables[0].Rows[i]["ID"] + ">");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["ID"] + "</td>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["Name"] + "</td>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["Total_seats"] + "</td>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["Number_of_Columns"] + "</td>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["Seats_per_column"] + "</td>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["Floor"] + "</td>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["Section"] + "</td>");
                    htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["Building"] + "</td>");
                    htmlTable.Append("<td> <input class='button' type='submit' value='Display' > </td>");
                    htmlTable.Append("</form>");
                    htmlTable.Append("</tr>");
                }
                htmlTable.Append("</table>");
                DBDataPlaceHolder.Controls.Add(new Literal { Text = htmlTable.ToString() });
            }
            else
            {
                htmlTable.Append("<tr>");
                htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                htmlTable.Append("</tr>");
            }
        }
    }
}
