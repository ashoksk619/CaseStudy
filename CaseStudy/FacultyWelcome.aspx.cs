using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CaseStudy
{
    public partial class FacultyWelcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fid"] != null)
            {
                //Label1.Text = "Welcome ";
                Label1.Text = "Welcome " + (string)Session["factname"] + " - " + (string)Session["fid"];
              
                // Response.Redirect("Login.aspx");

            }
        }

       /* protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["fid"] != null)
            {
                //Label1.Text = "Welcome ";
                Label1.Text = "Welcome " + (string)Session["factname"] + " " + (string)Session["fid"];
                Response.Redirect("Login.aspx");
            }
        }*/
    }
}