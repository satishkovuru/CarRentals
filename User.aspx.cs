using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Models.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Booking.aspx");
    }
  
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("update.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("cancel.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("bill.aspx");
    }
}