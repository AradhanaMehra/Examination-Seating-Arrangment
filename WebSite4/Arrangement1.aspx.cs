using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Arrangement1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BOX1.Text = Session["Totalcols"].ToString();
        BOX2.Text = Session["seatspercolumn"].ToString();
        BOX3.Text = Session["IDs"].ToString();
        BOX4.Text = Session["ID1"].ToString();
        BOX1.Style.Add("display", "none");
        BOX2.Style.Add("display", "none");
        BOX3.Style.Add("display", "none");
        BOX4.Style.Add("display", "none");
    }
}