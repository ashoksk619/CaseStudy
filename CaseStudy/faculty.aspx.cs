using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CaseStudy
{
    public partial class faculty : System.Web.UI.Page
    {
        private void ShowData()
        {
            FacultyOperation op = new FacultyOperation();
            DataSet ds = new DataSet();
            ds = op.GetData();
            GridFaculty.DataSource = ds.Tables["fact"];
            GridFaculty.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ShowData();
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            Faculty s = new Faculty();
            s.FacultyID = TextFid.Text;
            s.FacultyName = TextFname.Text;
            s.Gender = TextGender.Text;

            s.Address = TextAdd.Text;
            s.Location = TextLoc.Text;
            s.Phone = TextPh.Text;
            s.Email = TextEm.Text;
            s.Password = TextPwd.Text;

            FacultyOperation fop= new FacultyOperation();
            fop.AddFaculty(s);
            LabelError.Text = "Added succesfully";
            this.ShowData();
            TextFid.Text = "";
            TextFname.Text = "";
          
            TextAdd.Text = "";
            TextLoc.Text = "";
            TextPh.Text = "";
            TextEm.Text = "";
            TextPwd.Text = "";

        }
        protected void GridFaculty_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridFaculty.PageIndex = e.NewPageIndex;
            this.ShowData();
        }

    }
}