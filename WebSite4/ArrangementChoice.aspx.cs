﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ArrangementChoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void oneCourse(object sender, EventArgs e)
    {
        Response.Redirect("CreateArrangement.aspx");
    }
}