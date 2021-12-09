using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace CaseStudy
{
    public partial class Profile : System.Web.UI.Page
    {
        private void ShowData()
        {
            if (Session["fid"] != null)
            {
                FacultyOperation op = new FacultyOperation();
                DataSet ds = new DataSet();
                ds = op.GetDataFProf(Session["fid"].ToString());
                dlstud.DataSource = ds.Tables["std"];
                dlstud.DataBind();
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