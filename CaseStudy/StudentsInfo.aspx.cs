using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CaseStudy
{
    public partial class StudentsInfo : System.Web.UI.Page
    {
        private void ShowData()
        {
            if (Session["fid"] != null)
            {
                StudentOperation op = new StudentOperation();
                DataSet ds = new DataSet();
                ds = op.GetDataFac(Session["fid"].ToString());
                GridStudent.DataSource = ds.Tables["std"];
                GridStudent.DataBind();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fid"] != null)
            {
                this.ShowData();
                

            }
        }
    }
}