using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace CaseStudy
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text=="Admin")
            {
                if (txtUser.Text == "admin" && txtPass.Text == "admin")
                    Response.Redirect("UserWelcome.aspx");
                else
                    lblinfo.Text = "Please check username/password";
                    txtUser.Text = "";
            }


            /* else if (DropDownList1.Text == "Student")
             {
                 LoginOperation s = new LoginOperation();
                 LoginAll fop = new LoginAll();
                if (fop.Check(txtUser.Text, txtPass.Text) == false)
                {
                    DataSet dsChk = fop.LoginCheckstudent(txtUser.Text, txtPass.Text);
                    if (dsChk.Tables["log"].Rows.Count == 1)
                    {
                        Session["rollno"] = dsChk.Tables["log"].Rows[0]["rollno"].ToString();
                        Session["stdname"] = dsChk.Tables["log"].Rows[0]["stdname"].ToString();
                        Response.Redirect("StudentWelcome.aspx");
                    }
                    else
                        lblinfo.Text = "Give correct Credentials";

                }

                
             }*/



            


            else if (DropDownList1.Text == "Faculty")
            {

               
                LoginOperation s = new LoginOperation();
                LoginAll fop = new LoginAll();
                bool x = fop.Chek(txtUser.Text);
                if (fop.Chek(txtUser.Text) == false)
                {
                    DataSet dsChk = fop.LoginCheck(txtUser.Text, txtPass.Text);
                    if (dsChk.Tables["log"].Rows.Count == 1)
                    {
                        Session["fid"] = dsChk.Tables["log"].Rows[0]["fid"].ToString();
                        Session["factname"] = dsChk.Tables["log"].Rows[0]["factname"].ToString();
                      
                        Response.Redirect("FacultyWelcome.aspx");
                    }
                    else
                        lblinfo.Text = "Give correct Credentials";
                    // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Enter Correct username/Password')", true);
                }
                else
                {
                    lblinfo.Text = "Faculty is not mapped/ Invalid faculty";
                    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Faculty is not mapped/ Invalid faculty')", true);
                }


            }



            else if (DropDownList1.Text == "Student")
            {

                LoginOperation s = new LoginOperation();
                LoginAll fop = new LoginAll();
                DataSet dsChk = fop.LoginCheckstudent(txtUser.Text, txtPass.Text);
                if (dsChk.Tables["log"].Rows.Count == 1)
                {
                    Session["rollno"] = dsChk.Tables["log"].Rows[0]["rollno"].ToString();
                    Session["stdname"] = dsChk.Tables["log"].Rows[0]["stdname"].ToString();
                    Response.Redirect("StudentWelcome.aspx");
                }
                else
                    lblinfo.Text = "Give correct Credentials";
                txtUser.Text = "";
                // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Enter Correct username/Password')", true);
            }









        }

            
        
    }
}