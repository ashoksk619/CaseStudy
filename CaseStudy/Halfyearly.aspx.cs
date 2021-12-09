using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace CaseStudy
{
    public partial class Halfyearly : System.Web.UI.Page
    {

        private void ShowData()
        {
            if (Session["fid"] != null)
            {
                MarkOperation op = new MarkOperation();
                DataSet ds = new DataSet();
                ds = op.GetDataMarH(Session["fid"].ToString());
                GridFaculty.DataSource = ds.Tables["fact"];
                GridFaculty.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                this.ShowData();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowMarkDetails.aspx");
        }
    }
}