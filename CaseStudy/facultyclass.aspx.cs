using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace CaseStudy
{
    public partial class facultyclass : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                FcOperation obj = new FcOperation();
                DropDownListf.DataSource = obj.GetData();
                DropDownListf.DataBind();
                DropDownListf.Items.Insert(0, new ListItem("Select", string.Empty));
                DropDownListc.DataSource = obj.GetDatac();
                DropDownListc.DataBind();
                DropDownListc.Items.Insert(0, new ListItem("Select", string.Empty));
            }

            this.ShowData();


        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            classfaculty s = new classfaculty();
            FcOperation fop = new FcOperation();
            if (fop.CheckFaclc(DropDownListc.SelectedItem.Value, DropDownListf.SelectedItem.Value) == true)
            {
                s.ClassID = int.Parse(DropDownListc.SelectedItem.Value);
                s.FacultyId = DropDownListf.SelectedItem.Value;
                fop.AddFacultyClass(s);
                LabelError.Text = "Added Succesfully";
                this.ShowData();
            }
            else
                LabelError.Text = "Faculty already Mapped";
        }


        private void ShowData()
        {
            FcOperation op = new FcOperation();
            DataSet ds = new DataSet();
            ds = op.GetDataf();
            GridClass.DataSource = ds.Tables["fact"];
            GridClass.DataBind();
        }
    }
}