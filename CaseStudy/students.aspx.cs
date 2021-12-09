using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CaseStudy
{
    public partial class students : System.Web.UI.Page
    {
        private void ShowData()
        {
            StudentOperation op = new StudentOperation();
            DataSet ds = new DataSet();
            ds = op.GetData();
            GridStudent.DataSource = ds.Tables["std"];
            GridStudent.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                FcOperation obj = new FcOperation();
                DropDownListcls.DataSource = obj.GetDatac();
                DropDownListcls.DataBind();
                
                DropDownListcls.Items.Insert(0, new ListItem("Select", string.Empty));

            }

            this.ShowData();
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            Student s = new Student();
            s.RollNumber = TextRoll.Text;
            s.StudentName = TextSname.Text;
            s.Gender = TextGender.Text;
            s.Address = TextAdd.Text;
            s.Location = TextLoc.Text;
            s.Phone = TextPh.Text;
            s.Email = TextEm.Text;
            s.Password = TextPwd.Text;
            //s.ClassId = int.Parse(TextCid.Text);
            s.ClassId = int.Parse(DropDownListcls.SelectedItem.Value);
             

            StudentOperation std = new StudentOperation();
            std.AddStudent(s);
            LabelError.Text = "Datas Added succesfully";
            this.ShowData();
            TextRoll.Text = "";
            TextSname.Text = "";
            
            TextAdd.Text = "";
            TextLoc.Text = "";
            TextPh.Text = "";
            TextEm.Text = "";
            TextPwd.Text = "";

        }
        protected void GridStudent_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridStudent.PageIndex = e.NewPageIndex;
            this.ShowData();
        }
    }
}