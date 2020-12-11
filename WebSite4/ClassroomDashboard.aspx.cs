using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ClassroomDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Classroom(object sender, EventArgs e)
    {
        Response.Redirect("Classroom.aspx");
    }
    public void Edit(object sender, EventArgs e)
    {
        Response.Redirect("EditClassroom.aspx");
    }
    public void Delete(object sender, EventArgs e)
    {
        Response.Redirect("DeleteClassroom.aspx");
    }
    public void Display(object sender, EventArgs e)
    {
        Response.Redirect("DisplayClassroom.aspx");
    }
}