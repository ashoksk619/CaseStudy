using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CaseStudy
{
    public partial class StudentWelcome : System.Web.UI.Page
    {
        private void ShowData()
        {
            if (Session["rollno"] != null)
            {
                StudentOperation op = new StudentOperation();
                DataSet ds = new DataSet();
                ds = op.GetDataStudprof(Session["rollno"].ToString());
                dlstud.DataSource = ds.Tables["std"];
                dlstud.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rollno"] != null)
            {
                //Label1.Text = "Welcome ";
                Label1.Text = "Welcome " + (string)Session["stdname"] + " - " + (string)Session["rollno"];
                // Response.Redirect("Login.aspx");
                this.ShowData();

            }
        }
    }
}