using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace CaseStudy
{
    public partial class showmark : System.Web.UI.Page
    {

        private void ShowData()
        {
            if (Session["rollno"] != null)
            {
                MarkOperation op = new MarkOperation();
                DataSet ds = new DataSet();
                ds = op.GetDataMarkStud(Session["rollno"].ToString());
                GridFaculty.DataSource = ds.Tables["std"];
                GridFaculty.DataBind();
                string k = op.Getclass(Session["rollno"].ToString());
                Label1.Text = k;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                this.ShowData();
            }
        }
    }
}