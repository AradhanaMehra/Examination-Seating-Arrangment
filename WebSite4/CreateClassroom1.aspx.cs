using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateClassroom1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BOX1.Text = Session["Columns"].ToString();
        BOX2.Text = Session["Seats"].ToString();
        //String name1 = Request.Cookies["Columns"].Value.ToString();
        // String name2 = Request.Cookies["Seats"].Value.ToString();
        BOX1.Style.Add("display", "none");
        BOX2.Style.Add("display", "none");
        BOX3.Style.Add("display", "none");

    }
}