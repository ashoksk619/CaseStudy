using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CaseStudy
{
    public partial class Class : System.Web.UI.Page
    {
        public void ShowData()
        {
                ClassOperations std = new ClassOperations();
            DataSet dsCls = std.GetData();
            gvStd.DataSource = dsCls.Tables["cls"];
            gvStd.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                this.ShowData();
            }

        }

        protected void gvStd_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName == "NewStd")
            {
             
                TextBox txtSname = (TextBox)gvStd.FooterRow.FindControl("txtSname");
                ClassProperty c1 = new ClassProperty();
                ClassOperations cls = new ClassOperations();

                if (cls.Check(txtSname.Text) == true)
                {
                    c1.ClassName = txtSname.Text;

                    cls.AddClass(c1);



                    txtlab.Text = "Added succesfully";
                    this.ShowData();

                }
                else
                    txtlab.Text = "Class name alredy exist";
               
            }
        }

        protected void gvStd_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvStd.EditIndex = e.NewEditIndex;
            this.ShowData();
        }

        protected void gvStd_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtSname = (TextBox)gvStd.Rows[e.RowIndex].FindControl("txteSname");
            Label lblrno = (Label)gvStd.Rows[e.RowIndex].FindControl("lblRno");
            ClassProperty s1 = new ClassProperty();
            ClassOperations cls = new ClassOperations();
            s1.ClassName = txtSname.Text;
            s1.ClassID = int.Parse(lblrno.Text);
            cls.UpdateClass(s1);


            gvStd.EditIndex = -1;
            this.ShowData();
        }

        protected void gvStd_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvStd.EditIndex = -1;
            this.ShowData();
        }

        protected void gvStd_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblrno = (Label)gvStd.Rows[e.RowIndex].FindControl("lblRno");
            ClassOperations std = new ClassOperations();
            std.DeleteClass(int.Parse(lblrno.Text));
            this.ShowData();
        }

        protected void gvStd_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvStd.PageIndex = e.NewPageIndex;
            this.ShowData();
        }

       
    }
}