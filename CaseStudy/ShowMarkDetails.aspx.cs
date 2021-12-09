using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy
{
    public partial class ShowMarkDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Quarterly.aspx");
        }

        protected void Buthalf_Click(object sender, EventArgs e)
        {
            Response.Redirect("Halfyearly.aspx");
        }

        protected void Butf_Click(object sender, EventArgs e)
        {
            Response.Redirect("Finalyrly.aspx");
        }
    }
}